// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/notifications/notifications.dart';
import '../../sample_launch.dart';
import '../../test_helpers/test_helpers.dart';

class MockNotificationsCubit extends MockCubit<NotificationsState>
    implements NotificationsCubit {}

void main() {
  initHydratedStorage();

  group('TrackUsingLiveActivityButton', () {
    late NotificationsCubit notificationsCubit;

    setUpAll(() {
      notificationsCubit = MockNotificationsCubit();

      registerFallbackValue(sampleLaunch);

      when(() => notificationsCubit.state).thenReturn(
        const NotificationsState(),
      );
      when(() => notificationsCubit.trackLaunch(any()))
          .thenAnswer((_) async {});
      when(() => notificationsCubit.cancelTrackingLaunch())
          .thenAnswer((_) async {});
    });

    testWidgets('renders', (tester) async {
      await tester.pumpApp(
        notificationsCubit: notificationsCubit,
        const TrackUsingLiveActivityButton(
          launch: sampleLaunch,
        ),
      );

      expect(find.byType(TrackUsingLiveActivityButton), findsOneWidget);
    });

    testWidgets('shows snackbar when live activity creation fails',
        (tester) async {
      const expectedNotificationsState = NotificationsState(
        liveActivityCreationStatus: LiveActivityCreationStatus.failure,
      );

      whenListen(
        notificationsCubit,
        Stream.fromIterable([expectedNotificationsState]),
      );

      await tester.pumpApp(
        notificationsCubit: notificationsCubit,
        const TrackUsingLiveActivityButton(
          launch: sampleLaunch,
        ),
      );

      await tester.pump(const Duration(seconds: 3));

      expect(find.text(kLiveActivityCreationErrorText), findsOneWidget);
    });

    testWidgets('shows "Track with Live Activity" when not tracked',
        (tester) async {
      await tester.pumpApp(
        notificationsCubit: notificationsCubit,
        const TrackUsingLiveActivityButton(
          launch: sampleLaunch,
        ),
      );

      expect(find.text('Track with Live Activity'), findsOneWidget);
    });

    testWidgets('shows "Cancel Tracking" when tracked', (tester) async {
      when(() => notificationsCubit.state).thenReturn(
        const NotificationsState(
          trackedLaunch: TrackedLaunch(
            launchData: sampleLaunch,
            activityId: '0',
          ),
        ),
      );

      await tester.pumpApp(
        notificationsCubit: notificationsCubit,
        const TrackUsingLiveActivityButton(
          launch: sampleLaunch,
        ),
      );

      expect(find.text('Cancel Tracking'), findsOneWidget);
    });

    testWidgets('calls trackLaunch when "Track with Live Activity" is tapped',
        (tester) async {
      when(() => notificationsCubit.state).thenReturn(
        const NotificationsState(),
      );

      await tester.pumpApp(
        notificationsCubit: notificationsCubit,
        const TrackUsingLiveActivityButton(
          launch: sampleLaunch,
        ),
      );

      await tester.pumpAndSettle();
      await tester.tap(find.text('Track with Live Activity'));

      verify(
        () => notificationsCubit.trackLaunch(sampleLaunch),
      ).called(1);
    });

    testWidgets('calls cancelTrackingLaunch when "Cancel Tracking" is tapped',
        (tester) async {
      when(() => notificationsCubit.state).thenReturn(
        const NotificationsState(
          trackedLaunch: TrackedLaunch(
            launchData: sampleLaunch,
            activityId: '0',
          ),
        ),
      );

      await tester.pumpApp(
        notificationsCubit: notificationsCubit,
        const TrackUsingLiveActivityButton(
          launch: sampleLaunch,
        ),
      );

      await tester.tap(find.text('Cancel Tracking'));

      verify(
        () => notificationsCubit.cancelTrackingLaunch(),
      ).called(1);
    });

    testWidgets('disables button when creating', (tester) async {
      when(() => notificationsCubit.state).thenReturn(
        const NotificationsState(
          liveActivityCreationStatus: LiveActivityCreationStatus.creating,
        ),
      );

      await tester.pumpApp(
        notificationsCubit: notificationsCubit,
        const TrackUsingLiveActivityButton(
          launch: sampleLaunch,
        ),
      );

      expect(
        tester.widget<OutlinedButton>(
          find.byType(OutlinedButton),
        ),
        isA<OutlinedButton>().having(
          (w) => w.enabled,
          'enabled',
          false,
        ),
      );
    });
  });
}
