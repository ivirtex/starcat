// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:starcat/launches/launches.dart';

void main() {
  group('LaunchesEvent', () {
    test('supports value comparisons', () {
      expect(
        const LaunchesRequested(),
        const LaunchesRequested(),
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
