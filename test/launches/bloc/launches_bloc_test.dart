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
      act: (bloc) => bloc.add(const LaunchesRequested()),
      verify: (_) {
        verify(() => launchLibraryRepository.getUpcomingLaunches()).called(1);
      },
    );

    blocTest<LaunchesBloc, LaunchesState>(
      'emits [loading, success] when getUpcomingLaunches returns launches',
      build: () => launchesBloc,
      act: (bloc) => bloc.add(const LaunchesRequested()),
      expect: () => [
        const LaunchesState(status: LaunchesStatus.loading),
        const LaunchesState(
          status: LaunchesStatus.success,
          upcomingLaunches: [sampleLaunch],
        ),
      ],
    );

    blocTest<LaunchesBloc, LaunchesState>(
      'emits [loading, failure] when getUpcomingLaunches throws',
      setUp: () => when(() => launchLibraryRepository.getUpcomingLaunches())
          .thenThrow(Exception()),
      build: () => launchesBloc,
      act: (bloc) => bloc.add(const LaunchesRequested()),
      expect: () => [
        const LaunchesState(status: LaunchesStatus.loading),
        isA<LaunchesState>()
            .having((w) => w.status, 'status', LaunchesStatus.failure),
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
  });
}
