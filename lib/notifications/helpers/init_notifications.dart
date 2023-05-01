// Package imports:
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

Future<void> initNotifications({
  required FlutterLocalNotificationsPlugin pluginInstance,
  String? locationForTimeZone,
}) async {
  const initializationSettingsAndroid =
      AndroidInitializationSettings('@drawable/ic_launch_image');
  const initializationSettingsDarwin = DarwinInitializationSettings(
    // These will be requested when user
    // schedules a first launch notification
    requestAlertPermission: false,
    requestBadgePermission: false,
    requestSoundPermission: false,
  );
  const initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
    iOS: initializationSettingsDarwin,
  );

  await pluginInstance.initialize(initializationSettings);

  tz.initializeTimeZones();
  tz.setLocalLocation(
    tz.getLocation(
      locationForTimeZone ?? await FlutterNativeTimezone.getLocalTimezone(),
    ),
  );
}
