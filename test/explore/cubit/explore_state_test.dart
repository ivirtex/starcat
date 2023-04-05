// Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:falcon/launches/launches.dart';

void main() {
  group('LaunchesState', () {
    test('supports value comparisons', () {
      expect(const LaunchesState(), const LaunchesState());
    });

    test('copyWith is working correctly', () {
      const state = LaunchesState();
      final newState = state.copyWith(launches: <Launch>[]);

      expect(newState, isNot(state));
    });
  });
}
