// Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:falcon/launches/launches.dart';

void main() {
  group('LaunchesEvent', () {
    test('supports value comparisons', () {
      expect(
        const LaunchesRequested(launchTime: LaunchTime.upcoming),
        isNot(const LaunchesRequested(launchTime: LaunchTime.previous)),
      );
    });
  });
}