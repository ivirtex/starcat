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
        state.copyWith(dashboardStatus: FetchStatus.loading),
        const StarshipDashboardState(dashboardStatus: FetchStatus.loading),
      );

      expect(
        state.copyWith(dashboardStatus: FetchStatus.success),
        const StarshipDashboardState(dashboardStatus: FetchStatus.success),
      );

      expect(
        state.copyWith(dashboardStatus: FetchStatus.failure),
        const StarshipDashboardState(dashboardStatus: FetchStatus.failure),
      );

      expect(
        state.copyWith(),
        const StarshipDashboardState(),
      );
    });
  });
}
