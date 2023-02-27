// ignore_for_file: lines_longer_than_80_chars

import 'package:mocktail/mocktail.dart';
import 'package:space_devs_repository/space_devs_repository.dart';
import 'package:test/test.dart';

class MockSpaceXApiClient extends Mock implements SpaceDevsApiClient {}

void main() {
  group('SpaceDevsRepository', () {
    late SpaceDevsApiClient spaceXApiClient;
    late SpaceDevsRepository spaceDevsRepository;

    setUp(() {
      spaceXApiClient = MockSpaceXApiClient();
      spaceDevsRepository =
          SpaceDevsRepository(spacexApiClient: spaceXApiClient);
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

        verify(() => spaceXApiClient.getLaunches(launchTime)).called(1);
      });

      test('returns correct Launches', () async {
        const launchTime = LaunchTime.previous;
        const launches = Launches(results: []);

        when(() => spaceXApiClient.getLaunches(launchTime))
            .thenAnswer((_) async => launches);

        expect(await spaceDevsRepository.getLaunches(launchTime), launches);
      });

      test('throws when getLaunches fails', () async {
        const launchTime = LaunchTime.previous;
        final exception = LaunchesRequestFailure();

        when(() => spaceXApiClient.getLaunches(launchTime))
            .thenThrow(exception);

        expect(
          () => spaceDevsRepository.getLaunches(launchTime),
          throwsA(isA<LaunchesRequestFailure>()),
        );
      });
    });
  });
}
