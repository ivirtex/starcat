// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';

// Project imports:
import 'package:falcon/launches/launches.dart';

class MockLaunchLibraryRepository extends Mock
    implements LaunchLibraryRepository {}

class MockSpaceflightNewsRepository extends Mock
    implements SpaceflightNewsRepository {}

class MockLaunch extends Mock implements Launch {}

void main() {
  group('LaunchesBloc', () {
    late LaunchLibraryRepository launchLibraryRepository;
    late Launch launch;
    late LaunchesBloc launchesBloc;

    setUp(() {
      registerFallbackValue(LaunchTime.upcoming);

      launchLibraryRepository = MockLaunchLibraryRepository();
      launch = MockLaunch();

      when(() => launchLibraryRepository.getLaunches(any()))
          .thenAnswer((_) async => <Launch>[launch]);

      launchesBloc = LaunchesBloc(
        launchLibraryRepository,
      );
    });

    test('initial state is correct', () {
      final launchesBloc = LaunchesBloc(
        launchLibraryRepository,
      );

      expect(launchesBloc.state, const LaunchesState());
    });

    group('fetchLaunches', () {
      blocTest<LaunchesBloc, LaunchesState>(
        'calls getLaunches with correct time',
        build: () => launchesBloc,
        act: (bloc) =>
            bloc.add(const LaunchesRequested(launchTime: LaunchTime.upcoming)),
        verify: (_) {
          verify(() => launchLibraryRepository.getLaunches(LaunchTime.upcoming))
              .called(1);
        },
      );

      blocTest<LaunchesBloc, LaunchesState>(
        'emits [loading, success] when fetchLaunches returns launches',
        build: () => launchesBloc,
        act: (bloc) =>
            bloc.add(const LaunchesRequested(launchTime: LaunchTime.upcoming)),
        expect: () => [
          const LaunchesState(status: LaunchesStatus.loading),
          LaunchesState(status: LaunchesStatus.success, launches: [launch]),
        ],
      );

      blocTest<LaunchesBloc, LaunchesState>(
        'emits [loading, failure] when fetchLaunches throws',
        setUp: () => when(() => launchLibraryRepository.getLaunches(any()))
            .thenThrow(Exception()),
        build: () => launchesBloc,
        act: (bloc) =>
            bloc.add(const LaunchesRequested(launchTime: LaunchTime.upcoming)),
        expect: () => [
          const LaunchesState(status: LaunchesStatus.loading),
          isA<LaunchesState>()
              .having((w) => w.status, 'status', LaunchesStatus.failure)
        ],
      );
    });
  });
}
