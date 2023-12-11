// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:starcat/launches/launches.dart';

void main() {
  group('LaunchesEvent', () {
    test('supports value comparisons', () {
      expect(
        const LaunchesExploreRequested(),
        const LaunchesExploreRequested(),
      );

      expect(
        const LaunchesSelectionChanged(
          selectedLaunches: SelectedLaunches.upcoming,
        ),
        isNot(
          const LaunchesSelectionChanged(
            selectedLaunches: SelectedLaunches.past,
          ),
        ),
      );
    });
  });
}
