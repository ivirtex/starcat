// Flutter imports:
import 'package:flutter/services.dart';

// Package imports:
import 'package:clock/clock.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/timezone.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/notifications/notifications.dart';

class MockMethodChannel extends Mock implements MethodChannel {}

class MockFlutterLocalNotificationsPlugin extends Mock
    implements FlutterLocalNotificationsPlugin {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MockFlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  setUp(() {
    tz.initializeTimeZones();
    tz.setLocalLocation(tz.getLocation('Europe/London'));

    flutterLocalNotificationsPlugin = MockFlutterLocalNotificationsPlugin();

    registerFallbackValue(TZDateTime.local(2023));
    registerFallbackValue(const NotificationDetails());
    registerFallbackValue(UILocalNotificationDateInterpretation.absoluteTime);

    when(
      () => flutterLocalNotificationsPlugin.zonedSchedule(
        any(),
        any(),
        any(),
        any(),
        any(),
        uiLocalNotificationDateInterpretation:
            any(named: 'uiLocalNotificationDateInterpretation'),
        androidScheduleMode: any(named: 'androidScheduleMode'),
      ),
    ).thenAnswer((invocation) => Future.value());

    when(
      () => flutterLocalNotificationsPlugin.cancel(any()),
    ).thenAnswer((invocation) => Future.value());
  });

  group('scheduleLaunchNotifications', () {
    test('notifications are scheduled', () async {
      // Set up
      final now = DateTime(2023);
      final launchDate = now.add(const Duration(hours: 12));
      final launchDateLocal = TZDateTime.from(launchDate.toLocal(), local);
      const launchName = 'Test Launch';
      const padName = 'Test Pad';

      // Action
      await scheduleLaunchNotifications(
        launchDate,
        launchName,
        padName,
        flutterLocalNotificationsPlugin,
        clock: Clock.fixed(now),
      );

      // Notification for 6h before launch
      verify(
        () => flutterLocalNotificationsPlugin.zonedSchedule(
          launchName.hashCode + const Duration(hours: 6).inMinutes,
          launchName,
          'L - 6 hours left to launch from $padName',
          launchDateLocal.subtract(const Duration(hours: 6)),
          kNotificationDetails,
          androidScheduleMode: any(named: 'androidScheduleMode'),
          uiLocalNotificationDateInterpretation:
              UILocalNotificationDateInterpretation.absoluteTime,
        ),
      ).called(1);

      // Notification for 1h before launch
      verify(
        () => flutterLocalNotificationsPlugin.zonedSchedule(
          launchName.hashCode + const Duration(hours: 1).inMinutes,
          launchName,
          'L - 1 hour left to launch from $padName',
          launchDateLocal.subtract(const Duration(hours: 1)),
          kNotificationDetails,
          androidScheduleMode: any(named: 'androidScheduleMode'),
          uiLocalNotificationDateInterpretation:
              UILocalNotificationDateInterpretation.absoluteTime,
        ),
      ).called(1);

      // Notification for 5m before launch
      verify(
        () => flutterLocalNotificationsPlugin.zonedSchedule(
          launchName.hashCode + const Duration(minutes: 5).inMinutes,
          launchName,
          'L - 5 minutes left to launch from $padName',
          launchDateLocal.subtract(const Duration(minutes: 5)),
          kNotificationDetails,
          androidScheduleMode: any(named: 'androidScheduleMode'),
          uiLocalNotificationDateInterpretation:
              UILocalNotificationDateInterpretation.absoluteTime,
        ),
      ).called(1);
    });
  });

  group('cancelLaunchNotifications', () {
    test('notifications are cancelled', () async {
      const launchName = 'Test Launch';

      await cancelLaunchNotifications(
        launchName,
        flutterLocalNotificationsPlugin,
      );

      for (final notificationTime in kLaunchNotificationsSchedule) {
        verify(
          () => flutterLocalNotificationsPlugin.cancel(
            launchName.hashCode + notificationTime.inMinutes,
          ),
        ).called(1);
      }
    });
  });
}
