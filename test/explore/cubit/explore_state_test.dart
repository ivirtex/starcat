// Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';

void main() {
  group('ExploreState', () {
    test('supports value comparisons', () {
      expect(const ExploreState(), const ExploreState());
    });

    test('copyWith is working correctly', () {
      const state = ExploreState();
      final newState = state.copyWith(launches: <Launch>[]);

      expect(newState, isNot(state));
    });
  });
}
