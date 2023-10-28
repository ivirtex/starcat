// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:mocktail/mocktail.dart';

// Project imports:
import 'package:starcat/shared/shared.dart';
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
      const StarshipDashboardState(),
    );
  });

  group('StarshipPage', () {
    testWidgets('renders StarshipPage', (tester) async {
      await tester.pumpApp(
        const StarshipPage(),
        starshipDashboardBloc: starshipDashboardBloc,
      );
      await tester.pump(const Duration(seconds: 3));

      expect(find.byType(StarshipPage), findsOneWidget);
    });

    testWidgets('renders StarshipPage with StarshipDashboardStatus.loading',
        (tester) async {
      when(() => starshipDashboardBloc.state).thenReturn(
        const StarshipDashboardState(
          dashboardStatus: FetchStatus.loading,
        ),
      );

      await tester.pumpApp(
        const StarshipPage(),
        starshipDashboardBloc: starshipDashboardBloc,
      );
      await tester.pump(const Duration(seconds: 3));

      expect(find.byType(LoadingPlaceholder), findsAtLeastNWidgets(1));
    });

    testWidgets('renders StarshipPage with StarshipDashboardStatus.success',
        (tester) async {
      when(() => starshipDashboardBloc.state).thenReturn(
        const StarshipDashboardState(
          dashboardStatus: FetchStatus.success,
          dashboard: StarshipDashboard(),
        ),
      );

      await tester.pumpApp(
        const StarshipPage(),
        starshipDashboardBloc: starshipDashboardBloc,
      );
      await tester.pump(const Duration(seconds: 3));

      expect(find.byType(StarshipPage), findsOneWidget);
    });

    testWidgets('renders StarshipPage with StarshipDashboardStatus.failure',
        (tester) async {
      when(() => starshipDashboardBloc.state).thenReturn(
        const StarshipDashboardState(
          dashboardStatus: FetchStatus.failure,
          dashboard: StarshipDashboard(),
        ),
      );

      await tester.pumpApp(
        const StarshipPage(),
        starshipDashboardBloc: starshipDashboardBloc,
      );
      await tester.pump(const Duration(seconds: 3));

      expect(find.byType(StarshipPage), findsOneWidget);
    });

    testWidgets('pull to refesh works and adds event to the bloc',
        (tester) async {
      when(() => starshipDashboardBloc.state).thenReturn(
        const StarshipDashboardState(
          dashboardStatus: FetchStatus.success,
          dashboard: StarshipDashboard(),
        ),
      );

      await tester.pumpApp(
        const StarshipPage(),
        starshipDashboardBloc: starshipDashboardBloc,
      );
      await tester.pump(const Duration(seconds: 3));

      await tester.drag(find.byType(RefreshIndicator), const Offset(0, 500));
      await tester.pumpAndSettle();

      verify(
        () => starshipDashboardBloc.add(const StarshipDashboardRequested()),
      ).called(1);
    });
  });
}
