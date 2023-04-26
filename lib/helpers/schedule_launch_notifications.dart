// ignore_for_file: lines_longer_than_80_chars

// Package imports:
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;

const _androidNotificationChannelId = '0';
const _androidNotificationChannelName = 'dev.ivirtex.starcat.notifications';
const _androidNotificationChannelDescription =
    'Notifications about upcoming launches';

const _launchNotificationsSchedule = [
  Duration(hours: 24),
  Duration(hours: 6),
  Duration(hours: 1),
  Duration(minutes: 30),
  Duration(minutes: 5),
];

Future<void> scheduleLaunchNotifications(
  DateTime launchDate,
  String launchName,
  String padName,
) async {
  final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  const notificationDetails = NotificationDetails(
    android: AndroidNotificationDetails(
      _androidNotificationChannelId,
      _androidNotificationChannelName,
      channelDescription: _androidNotificationChannelDescription,
      visibility: NotificationVisibility.public,
    ),
    iOS: DarwinNotificationDetails(),
  );

  final launchDateLocal = tz.TZDateTime.from(launchDate.toLocal(), tz.local);
  final timeLeft = launchDate.difference(DateTime.now());

  for (final notificationTime in _launchNotificationsSchedule) {
    if (timeLeft > notificationTime) {
      await flutterLocalNotificationsPlugin.zonedSchedule(
        launchName.hashCode,
        launchName,
        notificationTime > const Duration(hours: 1)
            ? 'T - ${notificationTime.inHours} hours left to launch from $padName'
            : 'T - ${notificationTime.inMinutes} minutes left to launch from $padName',
        launchDateLocal.subtract(notificationTime),
        notificationDetails,
        androidAllowWhileIdle: true,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
      );
    }
  }
}
