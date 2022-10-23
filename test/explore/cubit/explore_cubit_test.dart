// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:spacex_info_repository/spacex_info_repository.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';

const launchesCount = 1;
const launchesResults = [
  Launch(name: 'Example Launch'),
];

class MockSpaceXInfoRepository extends Mock implements SpaceXInfoRepository {}

class MockLaunches extends Mock implements Launches {}

void main() {
  group('ExploreCubit', () {
    late SpaceXInfoRepository spaceXInfoRepository;
    late Launches launches;
    late ExploreCubit exploreCubit;

    setUp(() {
      registerFallbackValue(LaunchTime.upcoming);

      spaceXInfoRepository = MockSpaceXInfoRepository();
      launches = MockLaunches();

      when(() => launches.count).thenReturn(launchesCount);
      when(() => launches.results).thenReturn(launchesResults);
      when(() => spaceXInfoRepository.getLaunches(any()))
          .thenAnswer((_) async => launches);

      exploreCubit = ExploreCubit(spaceXInfoRepository);
    });

    test('initial state is correct', () {
      final exploreCubit = ExploreCubit(spaceXInfoRepository);

      expect(exploreCubit.state, const ExploreState());
    });

    group('fetchLaunches', () {
      blocTest<ExploreCubit, ExploreState>(
        'calls getLaunches with correct time',
        build: () => exploreCubit,
        act: (cubit) => cubit.fetchLaunches(launchTime: LaunchTime.upcoming),
        verify: (_) {
          verify(() => spaceXInfoRepository.getLaunches(LaunchTime.upcoming))
              .called(1);
        },
      );

      blocTest<ExploreCubit, ExploreState>(
        'emits [loading, success] when fetchLaunches returns launches',
        build: () => exploreCubit,
        act: (cubit) => cubit.fetchLaunches(launchTime: LaunchTime.upcoming),
        expect: () => [
          const ExploreState(status: ExploreStatus.loading),
          isA<ExploreState>()
              .having((w) => w.status, 'status', ExploreStatus.success)
              .having((w) => w.launches, 'launches', launches),
        ],
      );

      blocTest<ExploreCubit, ExploreState>(
        'emits [loading, failure] when fetchLaunches throws',
        setUp: () => when(() => spaceXInfoRepository.getLaunches(any()))
            .thenThrow(Exception()),
        build: () => exploreCubit,
        act: (cubit) => cubit.fetchLaunches(launchTime: LaunchTime.upcoming),
        expect: () => [
          const ExploreState(status: ExploreStatus.loading),
          isA<ExploreState>()
              .having((w) => w.status, 'status', ExploreStatus.failure)
        ],
      );
    });
  });
}
