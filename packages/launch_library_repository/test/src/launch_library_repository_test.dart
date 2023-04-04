// ignore_for_file: lines_longer_than_80_chars

// Package imports:
import 'package:launch_library_api/launch_library_api.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

// Project imports:
import 'package:launch_library_repository/space_devs_repository.dart';

class MockSpaceDevsApiClient extends Mock implements LaunchLibraryApiClient {}

void main() {
  group('LaunchLibraryRepository', () {
    late LaunchLibraryApiClient launchLibraryApiClient;
    late LaunchLibraryRepository launchLibraryRepository;

    setUp(() {
      launchLibraryApiClient = MockSpaceDevsApiClient();
      launchLibraryRepository =
          LaunchLibraryRepository(spacexApiClient: launchLibraryApiClient);
    });

    group('constructor', () {
      test('instantiates internal LaunchLibraryRepository when not injected',
          () {
        expect(LaunchLibraryRepository(), isNotNull);
      });
    });

    group('getLaunches', () {
      test('calls getLaunches with correct time option', () async {
        const launchTime = LaunchTime.previous;

        try {
          await launchLibraryRepository.getLaunches(launchTime);
        } catch (_) {}

        verify(() => launchLibraryApiClient.getLaunches(launchTime)).called(1);
      });

      test('returns correct Launches', () async {
        const launchTime = LaunchTime.previous;
        const launches = Launches(results: []);

        when(() => launchLibraryApiClient.getLaunches(launchTime))
            .thenAnswer((_) async => launches);

        expect(await launchLibraryRepository.getLaunches(launchTime), launches);
      });

      test('throws when getLaunches fails', () async {
        const launchTime = LaunchTime.previous;
        final exception = LaunchesRequestFailure();

        when(() => launchLibraryApiClient.getLaunches(launchTime))
            .thenThrow(exception);

        expect(
          () => launchLibraryRepository.getLaunches(launchTime),
          throwsA(isA<LaunchesRequestFailure>()),
        );
      });
    });
  });
}
