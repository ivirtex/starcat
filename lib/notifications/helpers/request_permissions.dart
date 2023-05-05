// Package imports:
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

Future<void> requestPermissions(
  FlutterLocalNotificationsPlugin notificationsPluginInstance,
) async {
  await notificationsPluginInstance
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.requestPermission();

  await notificationsPluginInstance
      .resolvePlatformSpecificImplementation<
          IOSFlutterLocalNotificationsPlugin>()
      ?.requestPermissions(
        alert: true,
        badge: true,
        sound: true,
      );
}
