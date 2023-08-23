// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:starcat/starship/starship.dart';

void main() {
  group('StarshipDashboardEvent', () {
    test('supports value comparisons', () {
      expect(
        const StarshipDashboardRequested(),
        const StarshipDashboardRequested(),
      );
    });
  });
}
