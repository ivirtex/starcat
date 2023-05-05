// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:starcat/helpers/helpers.dart';

void main() {
  group('formatDuration', () {
    test('formats duration', () {
      // Set up
      const duration = Duration(days: 1, hours: 2, minutes: 3);

      // Run
      final result = formatDuration(duration);

      // Verify
      expect(result, '01d:02h:03m');
    });
  });
}
