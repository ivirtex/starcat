// ignore_for_file: avoid_redundant_argument_values

// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:notifications_repository/notifications_repository.dart';

// Project imports:
import 'package:starcat/notifications/notifications.dart';
import '../../sample_launch.dart';
import '../../test_helpers/test_helpers.dart';

class MockNotificationsCubit extends MockCubit<NotificationsState>
    implements NotificationsCubit {}

class MockNotificationsRepository extends Mock
    implements NotificationsRepository {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late NotificationsCubit notificationsCubit;
  late NotificationsRepository notificationsRepository;
  late Launch launch;

  setUp(() {
    initHydratedStorage();
    registerFallbackValue(sampleLaunch);

    notificationsRepository = MockNotificationsRepository();
    when(() => notificationsRepository.trackLaunchUsingLiveActivity(any()))
        .thenAnswer((_) async => '1');
    when(() => notificationsRepository.cancelLiveActivityTracking(any()))
        .thenAnswer((_) async => {});

    launch = sampleLaunch.copyWith(
      net: DateTime(2023),
      status: const Status(abbrev: StatusAbbrev.go),
    );

    notificationsCubit = NotificationsCubit(notificationsRepository);
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
        ),
        expect: () => <NotificationsState>[
          const NotificationsState(
            liveActivityCreationStatus: LiveActivityCreationStatus.creating,
          ),
          NotificationsState(
            trackedLaunch: TrackedLaunch(
              launchData: launch,
              activityId: '1',
            ),
          ),
        ],
      );
    });

    blocTest<NotificationsCubit, NotificationsState>(
      'emits state with launch removed when tracking method is live activity',
      build: () => notificationsCubit,
      seed: () => NotificationsState(
        trackedLaunch: TrackedLaunch(launchData: launch, activityId: '1'),
      ),
      act: (cubit) {
        cubit.cancelTrackingLaunch();
      },
      expect: () => <NotificationsState>[
        const NotificationsState(trackedLaunch: null),
      ],
    );
  });
}
