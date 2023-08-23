// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:starcat/starship/starship.dart';

void main() {
  group('StarshipDashboardEvent', () {
    const state = StarshipDashboardState();

    test('supports value comparisons', () {
      expect(
        const StarshipDashboardState(),
        const StarshipDashboardState(),
      );
    });

    test('copyWith works', () {
      expect(
        state.copyWith(status: StarshipDashboardStatus.loading),
        const StarshipDashboardState(status: StarshipDashboardStatus.loading),
      );

      expect(
        state.copyWith(status: StarshipDashboardStatus.success),
        const StarshipDashboardState(status: StarshipDashboardStatus.success),
      );

      expect(
        state.copyWith(status: StarshipDashboardStatus.failure),
        const StarshipDashboardState(status: StarshipDashboardStatus.failure),
      );

      expect(
        state.copyWith(),
        const StarshipDashboardState(),
      );
    });
  });
}
