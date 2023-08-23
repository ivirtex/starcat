// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:mocktail/mocktail.dart';

// Project imports:
import 'package:starcat/starship/starship.dart';
import '../../test_helpers/test_helpers.dart';

class MockLaunchLibraryRepository extends Mock
    implements LaunchLibraryRepository {}

void main() {
  group('StarshipDashboardBloc', () {
    late LaunchLibraryRepository launchLibraryRepository;
    late StarshipDashboardBloc starshipDashboardBloc;

    setUp(() {
      initHydratedStorage();

      launchLibraryRepository = MockLaunchLibraryRepository();
      starshipDashboardBloc = StarshipDashboardBloc(
        launchLibraryRepository,
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
        const StarshipDashboardState(status: StarshipDashboardStatus.loading),
        const StarshipDashboardState(
          status: StarshipDashboardStatus.success,
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
        const StarshipDashboardState(status: StarshipDashboardStatus.loading),
        const StarshipDashboardState(status: StarshipDashboardStatus.failure),
      ],
    );
  });
}
