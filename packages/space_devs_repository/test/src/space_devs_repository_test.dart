// ignore_for_file: lines_longer_than_80_chars

// Package imports:
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

// Project imports:
import 'package:space_devs_repository/space_devs_repository.dart';

class MockSpaceDevsApiClient extends Mock implements SpaceDevsApiClient {}

void main() {
  group('SpaceDevsRepository', () {
    late SpaceDevsApiClient spaceDevsApiClient;
    late SpaceDevsRepository spaceDevsRepository;

    setUp(() {
      spaceDevsApiClient = MockSpaceDevsApiClient();
      spaceDevsRepository =
          SpaceDevsRepository(spacexApiClient: spaceDevsApiClient);
    });

    group('constructor', () {
      test('instantiates internal SpaceDevsRepository when not injected', () {
        expect(SpaceDevsRepository(), isNotNull);
      });
    });

    group('getLaunches', () {
      test('calls getLaunches with correct time option', () async {
        const launchTime = LaunchTime.previous;

        try {
          await spaceDevsRepository.getLaunches(launchTime);
        } catch (_) {}

        verify(() => spaceDevsApiClient.getLaunches(launchTime)).called(1);
      });

      test('returns correct Launches', () async {
        const launchTime = LaunchTime.previous;
        const launches = Launches(results: []);

        when(() => spaceDevsApiClient.getLaunches(launchTime))
            .thenAnswer((_) async => launches);

        expect(await spaceDevsRepository.getLaunches(launchTime), launches);
      });

      test('throws when getLaunches fails', () async {
        const launchTime = LaunchTime.previous;
        final exception = LaunchesRequestFailure();

        when(() => spaceDevsApiClient.getLaunches(launchTime))
            .thenThrow(exception);

        expect(
          () => spaceDevsRepository.getLaunches(launchTime),
          throwsA(isA<LaunchesRequestFailure>()),
        );
      });
    });
  });
}
