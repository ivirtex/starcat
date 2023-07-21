// ignore_for_file: avoid_redundant_argument_values, lines_longer_than_80_chars

// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:starcat/launches/launches.dart';

void main() {
  group('computeCacheExpirationDate tests', () {
    test('Returns expiration date when launchNet is null', () {
      final now = DateTime(2023, 7, 21, 12, 0, 0);

      final result = computeCacheExpirationDate(now, null);
      final expectedExpiration = now.add(const Duration(minutes: 5));

      expect(result, equals(expectedExpiration));
    });

    test(
        'Returns expiration date when launch is in the past (less than 1 hour)',
        () {
      final now = DateTime(2023, 7, 21, 12, 0, 0);
      final launchNet = DateTime(2023, 7, 21, 11, 45, 0);

      final result = computeCacheExpirationDate(now, launchNet);
      final expectedExpiration = now.add(const Duration(minutes: 5));

      expect(result, equals(expectedExpiration));
    });

    test(
        'Returns expiration date when launch is in the past (less than 6 hours)',
        () {
      final now = DateTime(2023, 7, 21, 14, 0, 0);
      final launchNet = DateTime(2023, 7, 21, 11, 45, 0);

      final result = computeCacheExpirationDate(now, launchNet);
      final expectedExpiration = now.add(const Duration(minutes: 15));

      expect(result, equals(expectedExpiration));
    });

    test(
        'Returns expiration date when launch is in the past (more than 6 hours)',
        () {
      final now = DateTime(2023, 7, 21, 20, 0, 0);
      final launchNet = DateTime(2023, 7, 21, 11, 45, 0);

      final result = computeCacheExpirationDate(now, launchNet);
      final expectedExpiration = now.add(const Duration(days: 3));

      expect(result, equals(expectedExpiration));
    });

    test(
        'Returns expiration date when launch is in the future (less than 1 hour)',
        () {
      final now = DateTime(2023, 7, 21, 12, 0, 0);
      final launchNet = DateTime(2023, 7, 21, 12, 45, 0);

      final result = computeCacheExpirationDate(now, launchNet);
      final expectedExpiration = now.add(const Duration(minutes: 5));

      expect(result, equals(expectedExpiration));
    });

    test(
        'Returns expiration date when launch is in the future (less than 3 hours)',
        () {
      final now = DateTime(2023, 7, 21, 12, 0, 0);
      final launchNet = DateTime(2023, 7, 21, 14, 30, 0);

      final result = computeCacheExpirationDate(now, launchNet);
      final expectedExpiration = now.add(const Duration(minutes: 15));

      expect(result, equals(expectedExpiration));
    });

    test(
        'Returns expiration date when launch is in the future (more than 3 hours)',
        () {
      final now = DateTime(2023, 7, 21, 12, 0, 0);
      final launchNet = DateTime(2023, 7, 21, 17, 0, 0);

      final result = computeCacheExpirationDate(now, launchNet);
      final expectedExpiration = now.add(const Duration(minutes: 30));

      expect(result, equals(expectedExpiration));
    });
  });
}
