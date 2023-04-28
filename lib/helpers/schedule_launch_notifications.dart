// ignore_for_file: lines_longer_than_80_chars

// Dart imports:
import 'dart:developer';

// Package imports:
import 'package:clock/clock.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;

// Project imports:
import 'package:starcat/constants.dart';

Future<void> scheduleLaunchNotifications(
  DateTime launchDate,
  String launchName,
  String padName,
  FlutterLocalNotificationsPlugin pluginInstance, {
  Clock clock = const Clock(),
}) async {
  final launchDateLocal = tz.TZDateTime.from(launchDate.toLocal(), tz.local);
  final timeLeft = launchDate.difference(clock.now());

  log('Time left: $timeLeft');

  for (final notificationTime in kLaunchNotificationsSchedule) {
    if (timeLeft > notificationTime) {
      log('Scheduling notification for $notificationTime before launch = '
          '${launchDate.subtract(notificationTime)}, id: $notificationTime.inMinutes');

      await pluginInstance.zonedSchedule(
        launchName.hashCode + notificationTime.inMinutes,
        launchName,
        notificationTime >= const Duration(hours: 1)
            ? 'T - ${notificationTime.inHours} hours left to launch from $padName'
            : 'T - ${notificationTime.inMinutes} minutes left to launch from $padName',
        launchDateLocal.subtract(notificationTime),
        kNotificationDetails,
        androidAllowWhileIdle: true,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
      );
    }
  }
}

Future<void> cancelLaunchNotifications(
  String launchName,
  FlutterLocalNotificationsPlugin pluginInstance,
) async {
  for (final notificationTime in kLaunchNotificationsSchedule) {
    await pluginInstance.cancel(
      launchName.hashCode + notificationTime.inMinutes,
    );
  }
}
