// ignore_for_file: lines_longer_than_80_chars

// Package imports:
import 'package:launch_library_api/launch_library_api.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

// Project imports:
import 'package:launch_library_repository/launch_library_repository.dart';

class MockLaunchLibraryApiClient extends Mock
    implements LaunchLibraryApiClient {}

void main() {
  group('LaunchLibraryRepository', () {
    late LaunchLibraryApiClient launchLibraryApiClient;
    late LaunchLibraryRepository launchLibraryRepository;

    setUp(() {
      launchLibraryApiClient = MockLaunchLibraryApiClient();
      launchLibraryRepository = LaunchLibraryRepository(
        launchLibraryApiClient: launchLibraryApiClient,
      );
    });

    group('constructor', () {
      test('instantiates internal LaunchLibraryRepository when not injected',
          () {
        expect(LaunchLibraryRepository(), isNotNull);
      });
    });

    group('getLaunches', () {
      test('calls getLaunches with correct time option', () async {
        try {
          await launchLibraryRepository.getUpcomingLaunches();
        } catch (_) {}
        verify(() => launchLibraryApiClient.getLaunches(LaunchTime.upcoming))
            .called(1);
      });

      test('returns correct Launches', () async {
        const launches = Launches(count: 0, results: []);

        when(() => launchLibraryApiClient.getLaunches(LaunchTime.upcoming))
            .thenAnswer((_) async => launches);

        expect(
          await launchLibraryRepository.getUpcomingLaunches(),
          <Launch>[],
        );
      });

      test('throws when getLaunches fails', () async {
        final exception = LaunchesRequestFailure();

        when(() => launchLibraryApiClient.getLaunches(LaunchTime.upcoming))
            .thenThrow(exception);

        expect(
          () => launchLibraryRepository.getUpcomingLaunches(),
          throwsA(isA<LaunchesRequestFailure>()),
        );
      });
    });
  });
}
