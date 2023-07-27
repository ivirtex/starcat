// ignore_for_file: avoid_redundant_argument_values

// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:clock/clock.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:live_activities/live_activities.dart';
import 'package:mocktail/mocktail.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:workmanager/workmanager.dart';

// Project imports:
import 'package:starcat/notifications/notifications.dart';
import '../../test_helpers/test_helpers.dart';

class MockNotificationsCubit extends MockCubit<NotificationsState>
    implements NotificationsCubit {}

class MockLaunch extends Mock implements Launch {}

class MockFlutterLocalNotificationsPlugin extends Mock
    implements FlutterLocalNotificationsPlugin {}

class MockAndroidFlutterLocalNotificationsPlugin extends Mock
    implements AndroidFlutterLocalNotificationsPlugin {}

class MockIOSFlutterLocalNotificationsPlugin extends Mock
    implements IOSFlutterLocalNotificationsPlugin {}

class MockLiveActivities extends Mock implements LiveActivities {}

class MockWorkmanager extends Mock implements Workmanager {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
  late AndroidFlutterLocalNotificationsPlugin
      androidFlutterLocalNotificationsPlugin;
  late IOSFlutterLocalNotificationsPlugin iosFlutterLocalNotificationsPlugin;
  late LiveActivities liveActivitiesPlugin;
  late Workmanager workmanager;

  late NotificationsCubit notificationsCubit;
  late Launch launch;

  setUp(() {
    initHydratedStorage();

    flutterLocalNotificationsPlugin = MockFlutterLocalNotificationsPlugin();
    liveActivitiesPlugin = MockLiveActivities();

    androidFlutterLocalNotificationsPlugin =
        MockAndroidFlutterLocalNotificationsPlugin();
    iosFlutterLocalNotificationsPlugin =
        MockIOSFlutterLocalNotificationsPlugin();
    workmanager = MockWorkmanager();

    notificationsCubit = NotificationsCubit(
      flutterLocalNotificationsPlugin,
      liveActivitiesPlugin,
      workmanager,
      clock: Clock.fixed(DateTime(2023)),
    );
    launch = MockLaunch();

    when(() => launch.toJson()).thenReturn({});
    when(() => launch.id).thenReturn('1');
    when(() => launch.net).thenReturn(DateTime(2023, 1, 1, 0, 0, 0));
    when(() => launch.name).thenReturn('Test Launch');
    when(() => launch.pad)
        .thenReturn(const Pad(location: Location(), name: 'Test Pad'));
    when(() => launch.url).thenReturn('https://test.com');

    when(() => flutterLocalNotificationsPlugin.cancel(any())).thenAnswer(
      (_) async => Future.value(),
    );

    when(
      () =>
          flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>(),
    ).thenReturn(androidFlutterLocalNotificationsPlugin);

    when(
      () =>
          flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<
              IOSFlutterLocalNotificationsPlugin>(),
    ).thenReturn(iosFlutterLocalNotificationsPlugin);

    when(
      () => androidFlutterLocalNotificationsPlugin.requestPermission(),
    ).thenAnswer((_) async => true);

    when(
      () => iosFlutterLocalNotificationsPlugin.requestPermissions(
        alert: any(named: 'alert'),
        badge: any(named: 'badge'),
        sound: any(named: 'sound'),
      ),
    ).thenAnswer((_) async => true);

    when(
      () => liveActivitiesPlugin.init(appGroupId: any(named: 'appGroupId')),
    ).thenAnswer((_) => Future.value());

    when(
      () => liveActivitiesPlugin.createActivity(any()),
    ).thenAnswer((_) => Future.value('1'));

    when(
      () => liveActivitiesPlugin.endActivity(any()),
    ).thenAnswer((_) => Future.value());

    tz.initializeTimeZones();
    tz.setLocalLocation(tz.local);

    registerFallbackValue(const Duration(days: 1));
    when(
      () => workmanager.registerOneOffTask(
        any(),
        any(),
        initialDelay: any(named: 'initialDelay'),
        constraints: any(named: 'constraints'),
        existingWorkPolicy: any(named: 'existingWorkPolicy'),
        inputData: any(named: 'inputData'),
      ),
    ).thenAnswer((_) async => Future.value());

    when(
      () => workmanager.cancelByUniqueName(any()),
    ).thenAnswer((_) async => Future.value());
  });

  group('NotificationsCubit', () {
    test('initial state is NotificationsState', () {
      expect(notificationsCubit.state, const NotificationsState());
    });

    group('trackLaunch', () {
      blocTest<NotificationsCubit, NotificationsState>(
        'emits new launch when tracking method is notifications',
        build: () => notificationsCubit,
        act: (cubit) => cubit.trackLaunch(
          launch,
          mode: TrackingMethod.notifications,
        ),
        expect: () => <NotificationsState>[
          NotificationsState(
            trackedLaunches: [
              TrackedLaunch(
                launchData: launch,
                trackingMethod: TrackingMethod.notifications,
              )
            ],
          ),
        ],
      );

      blocTest<NotificationsCubit, NotificationsState>(
        'emits new launch when tracking method is live activity',
        build: () => notificationsCubit,
        act: (cubit) => cubit.trackLaunch(
          launch,
          mode: TrackingMethod.liveActivity,
        ),
        expect: () => <NotificationsState>[
          NotificationsState(
            trackedLaunches: [
              TrackedLaunch(
                launchData: launch,
                trackingMethod: TrackingMethod.liveActivity,
                activityId: '1',
              )
            ],
          ),
        ],
      );
    });

    group('cancelTrackingLaunch', () {
      blocTest<NotificationsCubit, NotificationsState>(
        'emits state with launch removed when tracking method is notifications',
        build: () => notificationsCubit,
        seed: () => NotificationsState(
          trackedLaunches: [
            TrackedLaunch(
              launchData: launch,
              trackingMethod: TrackingMethod.notifications,
            )
          ],
        ),
        act: (cubit) {
          cubit.cancelTrackingLaunch(launch);
        },
        expect: () => <NotificationsState>[
          const NotificationsState(trackedLaunches: []),
        ],
      );

      blocTest<NotificationsCubit, NotificationsState>(
        'emits state with launch removed when tracking method is live activity',
        build: () => notificationsCubit,
        seed: () => NotificationsState(
          trackedLaunches: [
            TrackedLaunch(
              launchData: launch,
              trackingMethod: TrackingMethod.liveActivity,
              activityId: '1',
            )
          ],
        ),
        act: (cubit) {
          cubit.cancelTrackingLaunch(launch);
        },
        expect: () => <NotificationsState>[
          const NotificationsState(trackedLaunches: []),
        ],
      );
    });
  });
}
