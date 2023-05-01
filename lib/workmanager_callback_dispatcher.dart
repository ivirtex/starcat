// ignore_for_file: avoid_dynamic_calls

// Dart imports:
import 'dart:convert';
import 'dart:developer';

// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:http/http.dart' as http;
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:logger/logger.dart';
import 'package:workmanager/workmanager.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/helpers/helpers.dart';

@pragma('vm:entry-point')
void callbackDispatcher() {
  Workmanager().executeTask((task, inputData) async {
    log('Executing task $task at ${DateTime.now()}');

    final pluginInstance = FlutterLocalNotificationsPlugin();
    await initNotifications(pluginInstance: pluginInstance);

    final workmanager = Workmanager();
    await workmanager.initialize(
      callbackDispatcher,
      isInDebugMode: kDebugMode,
    );

    switch (task) {
      // This task is scheduled on app startup
      // and it tracks the next upcoming launch,
      // this allows for continuous delivery of
      // notifications to the user about upcoming launches
      case 'upcomingLaunchCheck':
        final currentUpcomingLaunchUrl =
            inputData!['currentUpcomingLaunchUrl'] as String;

        try {
          final actualUpcomingLaunchUri = Uri.parse(kUpcomingLaunchUrl);
          final response = await http.get(actualUpcomingLaunchUri);
          final json = jsonDecode(response.body) as Map<String, dynamic>;
          final upcomingLaunch =
              // TODO(ivirtex): find a more reliable way to do this
              Launch.fromJson(json['results'][0] as Map<String, dynamic>);

          if (upcomingLaunch.url != currentUpcomingLaunchUrl) {
            Logger().i(
              // ignore: lines_longer_than_80_chars
              'Upcoming launch has changed to ${upcomingLaunch.url}, scheduling new notifications and tasks',
            );

            await scheduleLaunchTimeCheckTask(
              upcomingLaunch.net!.toLocal(),
              Uri.parse(upcomingLaunch.url),
              workmanager,
              checkFrequency: getNewCheckFrequency(
                upcomingLaunch.net!.toLocal(),
                DateTime.now(),
              ),
            );
            await scheduleLaunchNotifications(
              upcomingLaunch.net!.toLocal(),
              upcomingLaunch.name,
              upcomingLaunch.pad.name!,
              pluginInstance,
            );

            await scheduleUpcomingLaunchCheck(upcomingLaunch.url);
          }
        } catch (e) {
          Logger().e('Error in upcomingLaunchCheck: $e');

          return Future.value(false);
        }

        break;
      // This task is scheduled by the task above OR by the user
      // when they add a new launch to their watchlist
      case 'launchTimeCheck':
        final launchDate = DateTime.parse(inputData!['launchDate'] as String);
        final launchUpdateUri =
            Uri.parse(inputData['launchUpdateUri'] as String);
        final currentCheckFrequency =
            Duration(seconds: inputData['frequency'] as int);

        try {
          final response = await http.get(launchUpdateUri);
          final json = jsonDecode(response.body) as Map<String, dynamic>;
          final refreshedLaunch = Launch.fromJson(json);
          final launchName = refreshedLaunch.name;
          final launchPadName = refreshedLaunch.pad.name ?? 'unknown pad';

          // Schedule new check task with new frequency
          // based on the time left until launch
          final suggestedCheckFrequency = getNewCheckFrequency(
            refreshedLaunch.net!.toLocal(),
            DateTime.now(),
          );
          if (suggestedCheckFrequency != currentCheckFrequency) {
            Logger().i(
              // ignore: lines_longer_than_80_chars
              'New check frequency suggested for $launchName is $suggestedCheckFrequency',
            );

            await scheduleLaunchTimeCheckTask(
              refreshedLaunch.net!.toLocal(),
              launchUpdateUri,
              workmanager,
              checkFrequency: suggestedCheckFrequency,
            );
          }

          // Check if launch has been delayed, if so, we
          // cancel old notification and schedule new ones
          if (refreshedLaunch.net!.isAfter(launchDate)) {
            Logger().i(
              'Launch $launchName has been delayed to ${refreshedLaunch.net}',
            );

            await cancelLaunchNotifications(launchName, pluginInstance);
            await scheduleLaunchNotifications(
              refreshedLaunch.net!,
              launchName,
              launchPadName,
              pluginInstance,
            );
          } else if (DateTime.now().isAfter(launchDate)) {
            // Check if launch has happened, then we can cancel
            // the check task and the notifications (technically there
            // should be no more notifications, but just in case)
            Logger().i('$launchName has launched!');

            await cancelLaunchNotifications(launchName, pluginInstance);
            await cancelLaunchTimeCheckTask(launchName, workmanager);
            await scheduleUpcomingLaunchCheck('');
          } else {
            Logger().i('Launch $launchName is still scheduled for $launchDate');
          }
        } catch (e) {
          Logger().e('Error in launchTimeCheck: $e');

          return Future.value(false);
        }

        break;
      default:
        Logger().wtf('Unknown task $task');
    }

    return Future.value(true);
  });
}
