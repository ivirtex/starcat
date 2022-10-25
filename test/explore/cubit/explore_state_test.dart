// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';

void main() {
  group('ExploreState', () {
    test('supports value comparisons', () {
      expect(const ExploreState(), const ExploreState());
    });

    test('copyWith is working correctly', () {
      const state = ExploreState();
      final newState = state.copyWith(status: ExploreStatus.success);

      expect(newState, isNot(state));
    });
  });
}
