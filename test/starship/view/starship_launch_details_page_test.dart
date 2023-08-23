// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:mocktail/mocktail.dart';

// Project imports:
import 'package:starcat/launches/launches.dart';
import 'package:starcat/starship/starship.dart';
import '../../test_helpers/pump_app.dart';

class MockStarshipDashboardBloc
    extends MockBloc<StarshipDashboardEvent, StarshipDashboardState>
    implements StarshipDashboardBloc {}

void main() {
  late StarshipDashboardBloc starshipDashboardBloc;

  setUp(() {
    starshipDashboardBloc = MockStarshipDashboardBloc();
    when(() => starshipDashboardBloc.state).thenReturn(
      const StarshipDashboardState(
        dashboard: StarshipDashboard(
          upcoming: StarshipLaunchesAndEvents(
            launches: [
              Launch(id: 'testId', name: 'testName'),
            ],
          ),
        ),
      ),
    );
  });

  group('StarshipLaunchDetailsPage', () {
    testWidgets('renders StarshipLaunchDetailsPage', (tester) async {
      await tester.pumpApp(
        const StarshipLaunchDetailsPage(
          launchId: 'testId',
        ),
        starshipDashboardBloc: starshipDashboardBloc,
      );
      await tester.pump(const Duration(seconds: 3));

      expect(find.byType(StarshipLaunchDetailsPage), findsOneWidget);
      expect(find.byType(LaunchDetailsView), findsOneWidget);
    });
  });
}
