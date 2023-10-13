// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:starcat/notifications/notifications.dart';
import '../../sample_launch.dart';

void main() {
  group('NotificationsState', () {
    test('supports value equality', () {
      expect(
        const NotificationsState(),
        const NotificationsState(),
      );
    });

    test('returns same object when copy is called without parameters', () {
      const state = NotificationsState();

      expect(state, state.copyWith());
    });

    test('returns object with updated status when copy is called', () {
      const state = NotificationsState();

      expect(
        state.copyWith(
          trackedLaunch: const TrackedLaunch(
            launchData: sampleLaunch,
            activityId: '1',
          ),
        ),
        const NotificationsState(
          trackedLaunch: TrackedLaunch(
            launchData: sampleLaunch,
            activityId: '1',
          ),
        ),
      );
    });
  });
}
