// ignore_for_file: avoid_redundant_argument_values

// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:clock/clock.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:live_activities/live_activities.dart';
import 'package:mocktail/mocktail.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

// Project imports:
import 'package:starcat/notifications/notifications.dart';
import '../../sample_launch.dart';
import '../../test_helpers/test_helpers.dart';

class MockNotificationsCubit extends MockCubit<NotificationsState>
    implements NotificationsCubit {}

class MockLaunch extends Mock implements Launch {}

class MockLiveActivities extends Mock implements LiveActivities {}

class FirebaseMessagingMock extends Mock implements FirebaseMessaging {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late LiveActivities liveActivitiesPlugin;

  late NotificationsCubit notificationsCubit;
  late Launch launch;

  setUp(() {
    initHydratedStorage();

    liveActivitiesPlugin = MockLiveActivities();

    notificationsCubit = NotificationsCubit(
      FirebaseMessagingMock(),
      liveActivitiesPlugin,
      clock: Clock.fixed(DateTime(2023)),
    );
    launch = sampleLaunch.copyWith(
      net: DateTime(2023),
      status: const Status(abbrev: StatusAbbrev.go),
    );

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
  });

  group('NotificationsCubit', () {
    test('initial state is NotificationsState', () {
      expect(notificationsCubit.state, const NotificationsState());
    });

    group('trackLaunch', () {
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
              ),
            ],
          ),
        ],
      );
    });

    blocTest<NotificationsCubit, NotificationsState>(
      'emits state with launch removed when tracking method is live activity',
      build: () => notificationsCubit,
      seed: () => NotificationsState(
        trackedLaunches: [
          TrackedLaunch(
            launchData: launch,
            trackingMethod: TrackingMethod.liveActivity,
            activityId: '1',
          ),
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
}
