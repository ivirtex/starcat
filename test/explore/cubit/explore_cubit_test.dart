// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:space_devs_repository/space_devs_repository.dart';
import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';

const launchesCount = 1;
const launchesResults = [
  Launch(name: 'Example Launch'),
];

class MockSpaceDevsRepository extends Mock implements SpaceDevsRepository {}

class MockSpaceflightNewsRepository extends Mock
    implements SpaceflightNewsRepository {}

class MockLaunches extends Mock implements Launches {}

void main() {
  group('ExploreCubit', () {
    late SpaceDevsRepository spaceDevsRepository;
    late SpaceflightNewsRepository spaceflightNewsRepository;
    late Launches launches;
    late ExploreCubit exploreCubit;

    setUp(() {
      registerFallbackValue(LaunchTime.upcoming);

      spaceDevsRepository = MockSpaceDevsRepository();
      spaceflightNewsRepository = MockSpaceflightNewsRepository();
      launches = MockLaunches();

      when(() => launches.count).thenReturn(launchesCount);
      when(() => launches.results).thenReturn(launchesResults);
      when(() => spaceDevsRepository.getLaunches(any()))
          .thenAnswer((_) async => launches);

      exploreCubit = ExploreCubit(
        spaceDevsRepository,
        spaceflightNewsRepository,
      );
    });

    test('initial state is correct', () {
      final exploreCubit = ExploreCubit(
        spaceDevsRepository,
        spaceflightNewsRepository,
      );

      expect(exploreCubit.state, const ExploreState());
    });

    group('fetchLaunches', () {
      blocTest<ExploreCubit, ExploreState>(
        'calls getLaunches with correct time',
        build: () => exploreCubit,
        act: (cubit) => cubit.fetchLaunches(launchTime: LaunchTime.upcoming),
        verify: (_) {
          verify(() => spaceDevsRepository.getLaunches(LaunchTime.upcoming))
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
        setUp: () => when(() => spaceDevsRepository.getLaunches(any()))
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
