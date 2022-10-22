// ignore_for_file: lines_longer_than_80_chars

import 'package:mocktail/mocktail.dart';
import 'package:spacex_api/spacex_api.dart';
import 'package:spacex_info_repository/spacex_info_repository.dart';
// ignore_for_file: prefer_const_constructors
import 'package:test/test.dart';

class MockSpaceXApiClient extends Mock implements SpaceXApiClient {}

void main() {
  group('SpacexInfoRepository', () {
    late SpaceXApiClient spaceXApiClient;
    late SpaceXInfoRepository spacexInfoRepository;

    setUp(() {
      spaceXApiClient = MockSpaceXApiClient();
      spacexInfoRepository =
          SpaceXInfoRepository(spacexApiClient: spaceXApiClient);
    });

    group('constructor', () {
      test('instantiates internal SpaceXApiClient when not injected', () {
        expect(SpaceXInfoRepository(), isNotNull);
      });
    });

    group('getLaunches', () {
      test('calls getLaunches with correct time option', () async {
        const launchTime = LaunchTime.previous;

        try {
          await spacexInfoRepository.getLaunches(launchTime);
        } catch (_) {}

        verify(() => spaceXApiClient.getLaunches(launchTime)).called(1);
      });

      test('returns correct Launches', () async {
        const launchTime = LaunchTime.previous;
        const launches = Launches(results: []);

        when(() => spaceXApiClient.getLaunches(launchTime))
            .thenAnswer((_) async => launches);

        expect(await spacexInfoRepository.getLaunches(launchTime), launches);
      });

      test('throws when getLaunches fails', () async {
        const launchTime = LaunchTime.previous;
        final exception = LaunchesRequestFailure();

        when(() => spaceXApiClient.getLaunches(launchTime))
            .thenThrow(exception);

        expect(
          () => spacexInfoRepository.getLaunches(launchTime),
          throwsA(isA<LaunchesRequestFailure>()),
        );
      });
    });
  });
}
