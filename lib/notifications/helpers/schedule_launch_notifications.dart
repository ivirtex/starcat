// ignore_for_file: lines_longer_than_80_chars

// Package imports:
import 'package:clock/clock.dart';
import 'package:duration/duration.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:logger/logger.dart';
import 'package:timezone/timezone.dart' as tz;

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/helpers/format_duration.dart';

// TODO(ivirtex): add push notifications
Future<void> scheduleLaunchNotifications(
  DateTime launchDate,
  String launchName,
  String padName,
  FlutterLocalNotificationsPlugin pluginInstance, {
  Clock clock = const Clock(),
}) async {
  assert(
    launchDate == launchDate.toLocal(),
    'launchDate must be in local time',
  );

  final launchDateLocal = tz.TZDateTime.from(launchDate, tz.local);
  final timeLeft = launchDate.difference(clock.now());

  for (final notificationTimeOffset in kLaunchNotificationsSchedule) {
    if (timeLeft > notificationTimeOffset) {
      Logger().i(
          'Scheduling notification for ${formatDuration(notificationTimeOffset)} before launch = '
          '${launchDate.subtract(notificationTimeOffset)}, id: ${launchName.hashCode + notificationTimeOffset.inMinutes}');

      final formattedOffset = prettyDuration(
        notificationTimeOffset,
        upperTersity: DurationTersity.hour,
      );

      final channelId = '${notificationTimeOffset.inMinutes}';
      final channelName = 'T - $formattedOffset';
      final channelDesc =
          'Notification that will be shown $formattedOffset before launch';

      final notificationBody =
          'T - $formattedOffset left to launch from $padName';

      await pluginInstance.zonedSchedule(
        launchName.hashCode + notificationTimeOffset.inMinutes,
        launchName,
        notificationBody,
        launchDateLocal.subtract(notificationTimeOffset),
        NotificationDetails(
          android: AndroidNotificationDetails(
            channelId,
            channelName,
            channelDescription: channelDesc,
          ),
        ),
        androidScheduleMode: AndroidScheduleMode.exact,
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
