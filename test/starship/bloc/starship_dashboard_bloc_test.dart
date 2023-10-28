// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';

// Project imports:
import 'package:starcat/starship/starship.dart';
import '../../test_helpers/test_helpers.dart';

class MockLaunchLibraryRepository extends Mock
    implements LaunchLibraryRepository {}

class MockSpaceflightNewsRepository extends Mock
    implements SpaceflightNewsRepository {}

void main() {
  group('StarshipDashboardBloc', () {
    late LaunchLibraryRepository launchLibraryRepository;
    late SpaceflightNewsRepository spaceflightNewsRepository;
    late StarshipDashboardBloc starshipDashboardBloc;

    setUp(() {
      initHydratedStorage();

      launchLibraryRepository = MockLaunchLibraryRepository();
      spaceflightNewsRepository = MockSpaceflightNewsRepository();
      starshipDashboardBloc = StarshipDashboardBloc(
        launchLibraryRepository,
        spaceflightNewsRepository,
      );

      when(() => launchLibraryRepository.getStarshipDashboard())
          .thenAnswer((_) async => const StarshipDashboard());
    });

    test('initial state is correct', () {
      expect(starshipDashboardBloc.state, const StarshipDashboardState());
    });

    blocTest<StarshipDashboardBloc, StarshipDashboardState>(
      'calls getStarshipDashboard',
      build: () => starshipDashboardBloc,
      act: (bloc) => bloc.add(const StarshipDashboardRequested()),
      verify: (_) {
        verify(() => launchLibraryRepository.getStarshipDashboard()).called(1);
      },
    );

    blocTest<StarshipDashboardBloc, StarshipDashboardState>(
      'emits [loading, success] when getStarshipDashboard returns dashboard',
      build: () => starshipDashboardBloc,
      act: (bloc) => bloc.add(const StarshipDashboardRequested()),
      expect: () => [
        const StarshipDashboardState(dashboardStatus: FetchStatus.loading),
        const StarshipDashboardState(
          dashboardStatus: FetchStatus.success,
          dashboard: StarshipDashboard(),
        ),
      ],
    );

    blocTest<StarshipDashboardBloc, StarshipDashboardState>(
      'emits [loading, failure] when getStarshipDashboard throws',
      build: () {
        when(() => launchLibraryRepository.getStarshipDashboard())
            .thenThrow(Exception('oops'));
        return starshipDashboardBloc;
      },
      act: (bloc) => bloc.add(const StarshipDashboardRequested()),
      expect: () => [
        const StarshipDashboardState(dashboardStatus: FetchStatus.loading),
        const StarshipDashboardState(dashboardStatus: FetchStatus.failure),
      ],
    );
  });
}
