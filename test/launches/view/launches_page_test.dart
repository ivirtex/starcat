// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// Project imports:
import 'package:starcat/explore/explore.dart';
import 'package:starcat/launches/launches.dart';
import '../../sample_launch.dart';
import '../../test_helpers/hydrated_bloc.dart';
import '../../test_helpers/pump_app.dart';

class MockLaunchesBloc extends MockBloc<LaunchesEvent, LaunchesState>
    implements LaunchesBloc {}

void main() {
  initHydratedStorage();

  group('LaunchesPage', () {
    late LaunchesBloc launchesBloc;

    const launch1 = sampleLaunch;
    final launch2 = sampleLaunch.copyWith(id: '2', name: 'Launch 2');
    final launch3 = sampleLaunch.copyWith(id: '3', name: 'Launch 3');

    setUpAll(() {
      launchesBloc = MockLaunchesBloc();

      when(() => launchesBloc.state).thenReturn(
        LaunchesState(
          upcomingLaunches: const [launch1],
          pastLaunches: [launch2, launch3],
        ),
      );
    });

    testWidgets('renders list', (tester) async {
      await tester.pumpApp(
        launchesBloc: launchesBloc,
        const LaunchesPage(),
      );

      await tester.pump(const Duration(seconds: 1));

      expect(find.byType(LaunchesList), findsOneWidget);
    });

    testWidgets('shows upcoming launches', (tester) async {
      when(() => launchesBloc.state).thenReturn(
        LaunchesState(
          upcomingLaunches: const [launch1],
          pastLaunches: [launch2, launch3],
        ),
      );

      await tester.pumpApp(
        launchesBloc: launchesBloc,
        const LaunchesPage(),
      );

      await tester.pump(const Duration(seconds: 3));

      // Number of upcoming launches
      expect(
        find.byType(ExploreCard),
        findsNWidgets(1),
      );
    });

    testWidgets('shows past launches', (tester) async {
      when(() => launchesBloc.state).thenReturn(
        LaunchesState(
          upcomingLaunches: const [launch1],
          pastLaunches: [launch2, launch3],
          selectedLaunches: SelectedLaunches.past,
        ),
      );

      await tester.pumpApp(
        launchesBloc: launchesBloc,
        const LaunchesPage(),
      );

      await tester.pump(const Duration(seconds: 3));

      // Number of past launches
      expect(
        find.byType(ExploreCard),
        findsNWidgets(2),
      );
    });

    testWidgets('navigates to launch details', (tester) async {
      when(() => launchesBloc.state).thenReturn(
        LaunchesState(
          selectedLaunches: SelectedLaunches.past,
          pastLaunches: [launch2, launch3],
        ),
      );

      await tester.pumpAppWithRouter(
        launchesBloc: launchesBloc,
        location: '/launches',
      );

      await tester.pump(const Duration(seconds: 3));

      await tester.tap(find.text(launch2.name));
      await tester.pump(const Duration(seconds: 3));
      await tester.pump(const Duration(seconds: 3));

      expect(find.byType(LaunchDetailsPage), findsOneWidget);
      expect(find.text(launch2.mission!.name!), findsOneWidget);
    });
  });
}
