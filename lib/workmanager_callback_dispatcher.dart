// Dart imports:
import 'dart:convert';
import 'dart:developer';

// Package imports:
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:http/http.dart' as http;
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:workmanager/workmanager.dart';

// Project imports:
import 'package:starcat/helpers/helpers.dart';

@pragma('vm:entry-point')
void callbackDispatcher() {
  Workmanager().executeTask((task, inputData) async {
    log('Executing task $task');

    final pluginInstance = FlutterLocalNotificationsPlugin();
    await initNotifications(pluginInstance: pluginInstance);

    switch (task) {
      case 'launchTimeCheck':
        final launchDate = DateTime.parse(inputData!['launchDate'] as String);
        final launchName = inputData['launchName'] as String;
        final launchPadName = inputData['launchPadName'] as String;
        final launchUpdateUri =
            Uri.parse(inputData['launchUpdateUri'] as String);

        final response = await http.get(launchUpdateUri);
        final json = jsonDecode(response.body) as Map<String, dynamic>;
        final refreshedLaunch = Launch.fromJson(json);

        if (refreshedLaunch.net!.isAfter(launchDate)) {
          log('Launch $launchName has been delayed to ${refreshedLaunch.net}');

          await cancelLaunchNotifications(launchName, pluginInstance);
          await cancelLaunchTimeCheckTask();

          await scheduleLaunchNotifications(
            refreshedLaunch.net!,
            launchName,
            launchPadName,
            pluginInstance,
          );
          await scheduleLaunchTimeCheckTask(
            refreshedLaunch.net!,
            launchName,
            launchPadName,
            launchUpdateUri,
          );
        } else if (DateTime.now().isAfter(launchDate)) {
          log('Launch $launchName has already happened');

          await cancelLaunchNotifications(launchName, pluginInstance);
          await cancelLaunchTimeCheckTask();
        } else {
          log('Launch $launchName is still scheduled for $launchDate');
        }
        break;
      default:
        log('Unknown task $task');
    }

    return Future.value(true);
  });
}