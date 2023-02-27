// Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:space_devs_repository/space_devs_repository.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';

void main() {
  group('ExploreState', () {
    test('supports value comparisons', () {
      expect(const ExploreState(), const ExploreState());
    });

    test('copyWith is working correctly', () {
      const state = ExploreState();
      final newState = state.copyWith(launches: const Launches());

      expect(newState, isNot(state));
    });
  });
}
