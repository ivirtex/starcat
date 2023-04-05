// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';

class MockLaunchLibraryRepository extends Mock
    implements LaunchLibraryRepository {}

class MockSpaceflightNewsRepository extends Mock
    implements SpaceflightNewsRepository {}

class MockLaunch extends Mock implements Launch {}

void main() {
  group('ExploreCubit', () {
    late LaunchLibraryRepository spaceDevsRepository;
    late Launch launch;
    late ExploreCubit exploreCubit;

    setUp(() {
      registerFallbackValue(LaunchTime.upcoming);

      spaceDevsRepository = MockLaunchLibraryRepository();
      launch = MockLaunch();

      when(() => launch).thenReturn(launch);
      when(() => spaceDevsRepository.getLaunches(any()))
          .thenAnswer((_) async => <Launch>[launch]);

      exploreCubit = ExploreCubit(
        spaceDevsRepository,
      );
    });

    test('initial state is correct', () {
      final exploreCubit = ExploreCubit(
        spaceDevsRepository,
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
              .having((w) => w.launches, 'launches', <Launch>[]),
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
