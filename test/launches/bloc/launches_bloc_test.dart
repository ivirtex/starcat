// ignore_for_file: lines_longer_than_80_chars

// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:clock/clock.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:mocktail/mocktail.dart';

// Project imports:
import 'package:starcat/launches/launches.dart';
import '../../sample_launch.dart';
import '../../test_helpers/hydrated_bloc.dart';

class MockLaunchLibraryRepository extends Mock
    implements LaunchLibraryRepository {}

void main() {
  group('LaunchesBloc', () {
    late LaunchLibraryRepository launchLibraryRepository;
    late LaunchesBloc launchesBloc;

    final clock = Clock.fixed(DateTime(2023));

    setUp(() {
      initHydratedStorage();

      launchLibraryRepository = MockLaunchLibraryRepository();
      launchesBloc = LaunchesBloc(
        launchLibraryRepository,
        clock: clock,
      );

      when(() => launchLibraryRepository.getUpcomingLaunches())
          .thenAnswer((_) async => <Launch>[sampleLaunch]);
      when(() => launchLibraryRepository.getPastLaunches())
          .thenAnswer((_) async => <Launch>[]);
    });

    test('initial state is correct', () {
      expect(launchesBloc.state, const LaunchesState());
    });

    blocTest<LaunchesBloc, LaunchesState>(
      'calls getLaunches with correct time',
      build: () => launchesBloc,
      act: (bloc) => bloc.add(const ExploreLaunchesRequested()),
      verify: (_) {
        verify(() => launchLibraryRepository.getUpcomingLaunches()).called(1);
      },
    );

    blocTest<LaunchesBloc, LaunchesState>(
      'emits [loading, success] when getUpcomingLaunches returns launches',
      build: () => launchesBloc,
      act: (bloc) => bloc.add(const ExploreLaunchesRequested()),
      expect: () => [
        const LaunchesState(upcomingLaunchesStatus: LaunchesStatus.loading),
        const LaunchesState(
          upcomingLaunchesStatus: LaunchesStatus.success,
          allUpcomingLaunches: [sampleLaunch],
        ),
      ],
    );

    blocTest<LaunchesBloc, LaunchesState>(
      'emits [loading, failure] when getUpcomingLaunches throws',
      setUp: () => when(() => launchLibraryRepository.getUpcomingLaunches())
          .thenThrow(Exception()),
      build: () => launchesBloc,
      act: (bloc) => bloc.add(const ExploreLaunchesRequested()),
      expect: () => [
        const LaunchesState(upcomingLaunchesStatus: LaunchesStatus.loading),
        isA<LaunchesState>().having(
          (w) => w.upcomingLaunchesStatus,
          'status',
          LaunchesStatus.failure,
        ),
      ],
    );

    blocTest<LaunchesBloc, LaunchesState>(
      'changes selectedLaunches when LaunchesSelectionChanged is added',
      build: () => launchesBloc,
      act: (bloc) => bloc.add(
        const LaunchesSelectionChanged(selectedLaunches: SelectedLaunches.past),
      ),
      expect: () => [
        const LaunchesState(
          selectedLaunches: SelectedLaunches.past,
        ),
      ],
    );

    blocTest<LaunchesBloc, LaunchesState>(
      'fetches launches with filters when LaunchesRefreshRequested is added',
      build: () => launchesBloc,
      setUp: () {
        when(
          () => launchLibraryRepository.getUpcomingLaunches(
            searchQuery: 'test',
            providers: [LaunchProviders.spaceX.id],
          ),
        ).thenAnswer((_) async => <Launch>[sampleLaunch]);
        when(
          () => launchLibraryRepository.getPastLaunches(
            searchQuery: 'test',
            providers: [LaunchProviders.spaceX.id],
          ),
        ).thenAnswer((_) async => <Launch>[sampleLaunch]);
      },
      seed: () => const LaunchesState(
        filter: LaunchesFilter(
          searchQuery: 'test',
          selectedLaunchProviders: {LaunchProviders.spaceX},
        ),
      ),
      act: (bloc) => bloc.add(
        const LaunchesRefreshRequested(),
      ),
      expect: () => [
        const LaunchesState(
          upcomingLaunchesStatus: LaunchesStatus.loading,
          pastLaunchesStatus: LaunchesStatus.loading,
          filter: LaunchesFilter(
            searchQuery: 'test',
            selectedLaunchProviders: {LaunchProviders.spaceX},
          ),
        ),
        const LaunchesState(
          upcomingLaunchesStatus: LaunchesStatus.success,
          pastLaunchesStatus: LaunchesStatus.loading,
          filter: LaunchesFilter(
            searchQuery: 'test',
            selectedLaunchProviders: {LaunchProviders.spaceX},
          ),
          upcomingLaunches: [sampleLaunch],
        ),
        const LaunchesState(
          upcomingLaunchesStatus: LaunchesStatus.success,
          pastLaunchesStatus: LaunchesStatus.success,
          filter: LaunchesFilter(
            searchQuery: 'test',
            selectedLaunchProviders: {LaunchProviders.spaceX},
          ),
          upcomingLaunches: [sampleLaunch],
          pastLaunches: [sampleLaunch],
        ),
      ],
      verify: (_) {
        verify(
          () => launchLibraryRepository.getUpcomingLaunches(
            searchQuery: 'test',
            providers: [LaunchProviders.spaceX.id],
          ),
        ).called(1);
        verify(
          () => launchLibraryRepository.getPastLaunches(
            searchQuery: 'test',
            providers: [LaunchProviders.spaceX.id],
          ),
        ).called(1);
      },
    );

    blocTest<LaunchesBloc, LaunchesState>(
      'emits (loading, loading), (failure, success) when getUpcomingLaunches throws',
      setUp: () {
        when(
          () => launchLibraryRepository.getUpcomingLaunches(
            searchQuery: 'test',
            providers: [LaunchProviders.spaceX.id],
          ),
        ).thenThrow(Exception());
        when(
          () => launchLibraryRepository.getPastLaunches(
            searchQuery: 'test',
            providers: [LaunchProviders.spaceX.id],
          ),
        ).thenAnswer((_) async => <Launch>[sampleLaunch]);
      },
      build: () => launchesBloc,
      seed: () => const LaunchesState(
        filter: LaunchesFilter(
          searchQuery: 'test',
          selectedLaunchProviders: {LaunchProviders.spaceX},
        ),
      ),
      act: (bloc) => bloc.add(
        const LaunchesRefreshRequested(),
      ),
      expect: () => [
        const LaunchesState(
          upcomingLaunchesStatus: LaunchesStatus.loading,
          pastLaunchesStatus: LaunchesStatus.loading,
          filter: LaunchesFilter(
            searchQuery: 'test',
            selectedLaunchProviders: {LaunchProviders.spaceX},
          ),
        ),
        const LaunchesState(
          upcomingLaunchesStatus: LaunchesStatus.failure,
          pastLaunchesStatus: LaunchesStatus.loading,
          filter: LaunchesFilter(
            searchQuery: 'test',
            selectedLaunchProviders: {LaunchProviders.spaceX},
          ),
        ),
        const LaunchesState(
          upcomingLaunchesStatus: LaunchesStatus.failure,
          pastLaunchesStatus: LaunchesStatus.success,
          filter: LaunchesFilter(
            searchQuery: 'test',
            selectedLaunchProviders: {LaunchProviders.spaceX},
          ),
          pastLaunches: [sampleLaunch],
        ),
      ],
    );

    blocTest<LaunchesBloc, LaunchesState>(
      'emits (loading, loading), (success, failure) when getPastLaunches throws',
      setUp: () {
        when(
          () => launchLibraryRepository.getUpcomingLaunches(
            searchQuery: 'test',
            providers: [LaunchProviders.spaceX.id],
          ),
        ).thenAnswer((_) async => <Launch>[sampleLaunch]);
        when(
          () => launchLibraryRepository.getPastLaunches(
            searchQuery: 'test',
            providers: [LaunchProviders.spaceX.id],
          ),
        ).thenThrow(Exception());
      },
      build: () => launchesBloc,
      seed: () => const LaunchesState(
        filter: LaunchesFilter(
          searchQuery: 'test',
          selectedLaunchProviders: {LaunchProviders.spaceX},
        ),
      ),
      act: (bloc) => bloc.add(
        const LaunchesRefreshRequested(),
      ),
      expect: () => [
        const LaunchesState(
          upcomingLaunchesStatus: LaunchesStatus.loading,
          pastLaunchesStatus: LaunchesStatus.loading,
          filter: LaunchesFilter(
            searchQuery: 'test',
            selectedLaunchProviders: {LaunchProviders.spaceX},
          ),
        ),
        const LaunchesState(
          upcomingLaunchesStatus: LaunchesStatus.success,
          pastLaunchesStatus: LaunchesStatus.loading,
          filter: LaunchesFilter(
            searchQuery: 'test',
            selectedLaunchProviders: {LaunchProviders.spaceX},
          ),
          upcomingLaunches: [sampleLaunch],
        ),
        const LaunchesState(
          upcomingLaunchesStatus: LaunchesStatus.success,
          pastLaunchesStatus: LaunchesStatus.failure,
          filter: LaunchesFilter(
            searchQuery: 'test',
            selectedLaunchProviders: {LaunchProviders.spaceX},
          ),
          upcomingLaunches: [sampleLaunch],
        ),
      ],
    );

    blocTest<LaunchesBloc, LaunchesState>(
      'emits filter when LaunchesFilterChanged is added',
      build: () => launchesBloc,
      act: (bloc) => bloc.add(
        const LaunchesFilterChanged(
          newFilter: LaunchesFilter(
            searchQuery: 'test',
            selectedLaunchProviders: {LaunchProviders.spaceX},
          ),
        ),
      ),
      expect: () => [
        const LaunchesState(
          filter: LaunchesFilter(
            searchQuery: 'test',
            selectedLaunchProviders: {LaunchProviders.spaceX},
          ),
        ),
      ],
    );

    blocTest<LaunchesBloc, LaunchesState>(
      'emits [loading, success] when getNextPageUpcomingLaunches returns launches',
      build: () => launchesBloc,
      setUp: () {
        when(
          () => launchLibraryRepository
              .getNextPageUpcomingLaunches(offset: 10, providers: []),
        ).thenAnswer((_) async => <Launch>[sampleLaunch]);
      },
      seed: () => const LaunchesState(
        upcomingLaunchesStatus: LaunchesStatus.success,
        upcomingLaunches: [sampleLaunch],
      ),
      act: (bloc) => bloc.add(
        const LaunchesNextPageRequested(type: SelectedLaunches.upcoming),
      ),
      expect: () => [
        const LaunchesState(
          upcomingLaunchesStatus: LaunchesStatus.loading,
          upcomingLaunches: [sampleLaunch],
          currentOffsetOfUpcomingLaunches: 10,
        ),
        const LaunchesState(
          upcomingLaunchesStatus: LaunchesStatus.success,
          upcomingLaunches: [sampleLaunch, sampleLaunch],
          currentOffsetOfUpcomingLaunches: 10,
        ),
      ],
    );

    blocTest<LaunchesBloc, LaunchesState>(
      'emits [loading, noMoreResults] when getNextPageUpcomingLaunches returns no launches',
      build: () => launchesBloc,
      setUp: () {
        when(
          () => launchLibraryRepository
              .getNextPageUpcomingLaunches(offset: 10, providers: []),
        ).thenThrow(LaunchesResultsNotFoundFailure());
      },
      seed: () => const LaunchesState(
        upcomingLaunchesStatus: LaunchesStatus.success,
        upcomingLaunches: [sampleLaunch],
      ),
      act: (bloc) => bloc.add(
        const LaunchesNextPageRequested(type: SelectedLaunches.upcoming),
      ),
      expect: () => [
        const LaunchesState(
          upcomingLaunchesStatus: LaunchesStatus.loading,
          upcomingLaunches: [sampleLaunch],
          currentOffsetOfUpcomingLaunches: 10,
        ),
        const LaunchesState(
          upcomingLaunchesStatus: LaunchesStatus.noMoreResults,
          upcomingLaunches: [sampleLaunch],
          currentOffsetOfUpcomingLaunches: 10,
        ),
      ],
    );

    blocTest<LaunchesBloc, LaunchesState>(
      'emits [loading, failure] when getNextPageUpcomingLaunches throws',
      build: () => launchesBloc,
      setUp: () {
        when(
          () => launchLibraryRepository
              .getNextPageUpcomingLaunches(offset: 10, providers: []),
        ).thenThrow(Exception());
      },
      seed: () => const LaunchesState(
        upcomingLaunchesStatus: LaunchesStatus.success,
        upcomingLaunches: [sampleLaunch],
      ),
      act: (bloc) => bloc.add(
        const LaunchesNextPageRequested(type: SelectedLaunches.upcoming),
      ),
      expect: () => [
        const LaunchesState(
          upcomingLaunchesStatus: LaunchesStatus.loading,
          upcomingLaunches: [sampleLaunch],
          currentOffsetOfUpcomingLaunches: 10,
        ),
        isA<LaunchesState>().having(
          (w) => w.upcomingLaunchesStatus,
          'status',
          LaunchesStatus.failure,
        ),
      ],
    );

    blocTest<LaunchesBloc, LaunchesState>(
      'emits [loading, success] when getNextPagePastLaunches returns launches',
      build: () => launchesBloc,
      setUp: () {
        when(
          () => launchLibraryRepository
              .getNextPagePastLaunches(offset: 10, providers: []),
        ).thenAnswer((_) async => <Launch>[sampleLaunch]);
      },
      seed: () => const LaunchesState(
        pastLaunchesStatus: LaunchesStatus.success,
        pastLaunches: [sampleLaunch],
      ),
      act: (bloc) => bloc.add(
        const LaunchesNextPageRequested(type: SelectedLaunches.past),
      ),
      expect: () => [
        const LaunchesState(
          pastLaunchesStatus: LaunchesStatus.loading,
          pastLaunches: [sampleLaunch],
          currentOffsetOfPastLaunches: 10,
        ),
        const LaunchesState(
          pastLaunchesStatus: LaunchesStatus.success,
          pastLaunches: [sampleLaunch, sampleLaunch],
          currentOffsetOfPastLaunches: 10,
        ),
      ],
    );

    blocTest<LaunchesBloc, LaunchesState>(
      'emits [loading, noMoreResults] when getNextPagePastLaunches returns no launches',
      build: () => launchesBloc,
      setUp: () {
        when(
          () => launchLibraryRepository
              .getNextPagePastLaunches(offset: 10, providers: []),
        ).thenThrow(LaunchesResultsNotFoundFailure());
      },
      seed: () => const LaunchesState(
        pastLaunchesStatus: LaunchesStatus.success,
        pastLaunches: [sampleLaunch],
      ),
      act: (bloc) => bloc.add(
        const LaunchesNextPageRequested(type: SelectedLaunches.past),
      ),
      expect: () => [
        const LaunchesState(
          pastLaunchesStatus: LaunchesStatus.loading,
          pastLaunches: [sampleLaunch],
          currentOffsetOfPastLaunches: 10,
        ),
        const LaunchesState(
          pastLaunchesStatus: LaunchesStatus.noMoreResults,
          pastLaunches: [sampleLaunch],
          currentOffsetOfPastLaunches: 10,
        ),
      ],
    );

    blocTest<LaunchesBloc, LaunchesState>(
      'emits [loading, failure] when getNextPagePastLaunches throws',
      build: () => launchesBloc,
      setUp: () {
        when(
          () => launchLibraryRepository
              .getNextPagePastLaunches(offset: 10, providers: []),
        ).thenThrow(Exception());
      },
      seed: () => const LaunchesState(
        pastLaunchesStatus: LaunchesStatus.success,
        pastLaunches: [sampleLaunch],
      ),
      act: (bloc) => bloc.add(
        const LaunchesNextPageRequested(type: SelectedLaunches.past),
      ),
      expect: () => [
        const LaunchesState(
          pastLaunchesStatus: LaunchesStatus.loading,
          pastLaunches: [sampleLaunch],
          currentOffsetOfPastLaunches: 10,
        ),
        isA<LaunchesState>().having(
          (w) => w.pastLaunchesStatus,
          'status',
          LaunchesStatus.failure,
        ),
      ],
    );
  });
}
