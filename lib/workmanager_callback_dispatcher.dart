// ignore_for_file: avoid_dynamic_calls, lines_longer_than_80_chars

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
import 'package:starcat/notifications/notifications.dart';

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
      // This task is scheduled when the user
      // turns on continuous launch notifications feature
      case 'autoNextLaunchCheck':
        final currentUpcomingLaunchUrl =
            inputData!['currentUpcomingLaunchUrl'] as String;
        final currentUpcomingLaunchDate =
            DateTime.tryParse(inputData['launchDate'] as String? ?? '');
        final currentCheckFrequency = Duration(
          seconds: inputData['currentCheckFrequency'] as int,
        );

        try {
          final request = Uri.parse(kUpcomingLaunchUrl);
          final response = await http.get(request);
          final json = jsonDecode(response.body) as Map<String, dynamic>;
          final actualUpcomingLaunch =
              Launch.fromJson(json['results'][0] as Map<String, dynamic>);

          // If these URLs are different, it means
          // that the upcoming launch has changed
          if (actualUpcomingLaunch.url != currentUpcomingLaunchUrl) {
            Logger().i(
              '''
              autoNextLaunchCheck:
              Upcoming launch has changed to ${actualUpcomingLaunch.url}, scheduling new notifications and task
              ''',
            );

            // Assuming there are no notifications
            // scheduled for the old launch
            await scheduleLaunchNotifications(
              actualUpcomingLaunch.net!.toLocal(),
              actualUpcomingLaunch.name,
              actualUpcomingLaunch.pad.name!,
              pluginInstance,
            );

            await scheduleAutoNextLaunchCheck(
              currentUpcomingLaunchUrl: actualUpcomingLaunch.url,
              launchDate: actualUpcomingLaunch.net!.toLocal(),
              checkFrequency: getNewCheckFrequency(
                actualUpcomingLaunch.net!.toLocal(),
                DateTime.now(),
              ),
            );
          } else if (actualUpcomingLaunch.net!
              .isAfter(currentUpcomingLaunchDate!)) {
            // Check if launch has been delayed
            // We can safely assume that launch dates are not null
            Logger().i(
              '''
              autoNextLaunchCheck:
              Upcoming launch has been delayed to ${actualUpcomingLaunch.net}
              ''',
            );

            await cancelLaunchNotifications(
              actualUpcomingLaunch.name,
              pluginInstance,
            );
            await scheduleLaunchNotifications(
              actualUpcomingLaunch.net!,
              actualUpcomingLaunch.name,
              actualUpcomingLaunch.pad.name!,
              pluginInstance,
            );

            await pluginInstance.show(
              actualUpcomingLaunch.net.hashCode,
              actualUpcomingLaunch.name,
              '${actualUpcomingLaunch.name} has been delayed to ${actualUpcomingLaunch.net}',
              null,
            );

            await cancelAutoNextLaunchCheck();
            await scheduleAutoNextLaunchCheck(
              currentUpcomingLaunchUrl: actualUpcomingLaunch.url,
              launchDate: actualUpcomingLaunch.net!.toLocal(),
              checkFrequency: getNewCheckFrequency(
                actualUpcomingLaunch.net!.toLocal(),
                DateTime.now(),
              ),
            );
          } else {
            // Launch has not been delayed

            Logger().i(
              '''
              autoNextLaunchCheck:
              Upcoming launch is still scheduled for $currentUpcomingLaunchDate
              ''',
            );

            final suggestedCheckFrequency = getNewCheckFrequency(
              actualUpcomingLaunch.net!.toLocal(),
              DateTime.now(),
            );
            if (suggestedCheckFrequency != currentCheckFrequency) {
              Logger().i(
                '''
                  autoNextLaunchCheck:
                  New check frequency suggested for 
                  ${actualUpcomingLaunch.name} is $suggestedCheckFrequency
                  ''',
              );

              await cancelAutoNextLaunchCheck();
              await scheduleAutoNextLaunchCheck(
                currentUpcomingLaunchUrl: actualUpcomingLaunch.url,
                launchDate: actualUpcomingLaunch.net!.toLocal(),
                checkFrequency: suggestedCheckFrequency,
              );
            }
          }
        } catch (e) {
          Logger().e('Error in autoNextLaunchCheck: $e');

          return Future.value(false);
        }

        break;
      // This task is scheduled by the user when
      // they add a new launch to their watchlist
      case 'userSpecifiedLaunchCheck':
        final launchDate = DateTime.parse(inputData!['launchDate'] as String);
        final launchUpdateUrl =
            Uri.parse(inputData['launchUpdateUri'] as String);
        final currentCheckFrequency =
            Duration(seconds: inputData['frequency'] as int);

        try {
          final response = await http.get(launchUpdateUrl);
          final json = jsonDecode(response.body) as Map<String, dynamic>;
          final refreshedLaunch = Launch.fromJson(json);

          // Check if launch has been delayed, if so, we
          // cancel old notification and schedule new ones
          if (refreshedLaunch.net!.isAfter(launchDate)) {
            Logger().i(
              '''
              userSpecifiedLaunchCheck:
              Launch ${refreshedLaunch.name} has been delayed to ${refreshedLaunch.net}
              ''',
            );

            await cancelLaunchNotifications(
              refreshedLaunch.name,
              pluginInstance,
            );
            await scheduleLaunchNotifications(
              refreshedLaunch.net!,
              refreshedLaunch.name,
              refreshedLaunch.pad.name ?? 'unknown pad',
              pluginInstance,
            );

            // Dispatch notification to user about the delay
            await pluginInstance.show(
              refreshedLaunch.net.hashCode,
              refreshedLaunch.name,
              '${refreshedLaunch.name} has been delayed to ${refreshedLaunch.net}',
              null,
            );

            await scheduleUserSpecifiedLaunchCheck(
              launchDate: refreshedLaunch.net!.toLocal(),
              launchUpdateUri: launchUpdateUrl,
              workmanager: workmanager,
              checkFrequency: getNewCheckFrequency(
                refreshedLaunch.net!.toLocal(),
                DateTime.now(),
              ),
            );
          } else if (DateTime.now().isAfter(launchDate)) {
            // Check if launch has happened, then we can cancel
            // the check task and the notifications (technically there
            // should be no more notifications, but just in case)
            Logger().i(
              '''
              userSpecifiedLaunchCheck:
              Launch ${refreshedLaunch.name} has launched!
              ''',
            );

            await cancelLaunchNotifications(
              refreshedLaunch.name,
              pluginInstance,
            );
            await cancelUserSpecifiedLaunchCheck(
              refreshedLaunch.name,
              workmanager,
            );

            return Future.value(true);
          } else {
            Logger().i(
              '''
              userSpecifiedLaunchCheck:
              Launch ${refreshedLaunch.name} is still scheduled for $launchDate
              ''',
            );

            // Schedule new check task with new frequency
            // based on the time left until launch
            final suggestedCheckFrequency = getNewCheckFrequency(
              launchDate.toLocal(),
              DateTime.now(),
            );
            if (suggestedCheckFrequency != currentCheckFrequency) {
              Logger().i(
                '''
                userSpecifiedLaunchCheck:
                New check frequency suggested for 
                ${refreshedLaunch.name} is $suggestedCheckFrequency
                ''',
              );

              await cancelUserSpecifiedLaunchCheck(
                refreshedLaunch.name,
                workmanager,
              );
              await scheduleUserSpecifiedLaunchCheck(
                launchDate: refreshedLaunch.net!.toLocal(),
                launchUpdateUri: launchUpdateUrl,
                workmanager: workmanager,
                checkFrequency: suggestedCheckFrequency,
              );
            }
          }
        } catch (e) {
          Logger().e('Error in userSpecifiedLaunchCheck: $e');

          return Future.value(false);
        }

        break;
      default:
        Logger().wtf('Unknown task $task');
    }

    return Future.value(true);
  });
}
