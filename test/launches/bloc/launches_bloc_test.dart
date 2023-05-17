// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:clock/clock.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:mocktail/mocktail.dart';

// Project imports:
import 'package:starcat/launches/launches.dart';
import '../../test_helpers/hydrated_bloc.dart';

class MockLaunchLibraryRepository extends Mock
    implements LaunchLibraryRepository {}

class MockLaunch extends Mock implements Launch {}

void main() {
  group('LaunchesBloc', () {
    late LaunchLibraryRepository launchLibraryRepository;
    late Launch launch;
    late LaunchesBloc launchesBloc;

    setUp(() {
      initHydratedStorage();

      launchLibraryRepository = MockLaunchLibraryRepository();
      launchesBloc = LaunchesBloc(
        launchLibraryRepository,
        clock: Clock.fixed(DateTime(2023)),
      );
      launch = MockLaunch();

      when(() => launchLibraryRepository.getUpcomingLaunches())
          .thenAnswer((_) async => <Launch>[launch]);
      when(() => launch.toJson()).thenReturn(<String, dynamic>{});
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
      'emits [loading, success] when fetchLaunches returns launches',
      build: () => launchesBloc,
      act: (bloc) => bloc.add(const LaunchesRequested()),
      expect: () => [
        const LaunchesState(status: LaunchesStatus.loading),
        LaunchesState(
          status: LaunchesStatus.success,
          upcomingLaunches: [launch],
          lastSuccessfulUpdate: DateTime(2023),
        ),
      ],
    );

    blocTest<LaunchesBloc, LaunchesState>(
      'emits [loading, failure] when fetchLaunches throws',
      setUp: () => when(() => launchLibraryRepository.getUpcomingLaunches())
          .thenThrow(Exception()),
      build: () => launchesBloc,
      act: (bloc) => bloc.add(const LaunchesRequested()),
      expect: () => [
        const LaunchesState(status: LaunchesStatus.loading),
        isA<LaunchesState>()
            .having((w) => w.status, 'status', LaunchesStatus.failure)
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
