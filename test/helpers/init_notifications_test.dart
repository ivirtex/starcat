// Package imports:
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// Project imports:
import 'package:starcat/notifications/notifications.dart';

class MockFlutterLocalNotificationsPlugin extends Mock
    implements FlutterLocalNotificationsPlugin {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late FlutterLocalNotificationsPlugin mockPluginInstance;

  setUp(() {
    mockPluginInstance = MockFlutterLocalNotificationsPlugin();

    registerFallbackValue(const InitializationSettings());

    when(() => mockPluginInstance.initialize(any()))
        .thenAnswer((_) => Future.value());
  });

  group('initNotifications', () {
    test('initializes', () {
      initNotifications(
        pluginInstance: mockPluginInstance,
        locationForTimeZone: 'America/New_York',
      );

      verify(() => mockPluginInstance.initialize(any())).called(1);
    });
  });
}
