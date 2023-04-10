// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:mocktail/mocktail.dart';

// Project imports:
import 'package:starcat/explore/explore.dart';
import 'package:starcat/launches/launches.dart';
import '../../sample_launch.dart';
import '../../test_helpers/test_helpers.dart';

class MockLaunchesBloc extends MockBloc<LaunchesEvent, LaunchesState>
    implements LaunchesBloc {}

void main() {
  initHydratedStorage();

  final launches = [
    const Launch(
      id: '0',
      url: 'sampleURL',
      slug: 'sampleSlug',
      name: 'Name',
      webcastLive: false,
      status: Status(
        name: 'Status Name',
        abbrev: 'Status Abbrev',
      ),
      launchServiceProvider: LaunchServiceProvider(
        name: 'Launch Service Provider Name',
      ),
      mission: Mission(
        name: 'Mission Name',
        description: 'Mission Description.',
        orbit: Orbit(
          name: 'Orbit Name',
        ),
      ),
      program: [
        Program(
          agencies: [],
          missionPatches: [],
        )
      ],
      pad: Pad(
        name: 'Pad Name',
        latitude: '0',
        longitude: '1',
        location: Location(
          name: 'Location Name',
        ),
      ),
      rocket: Rocket(
        configuration: Configuration(
          url: '',
          name: 'name',
          family: 'family',
          fullName: 'fullName',
          variant: 'variant',
        ),
      ),
    ),
    sampleLaunch.copyWith(
      id: '1',
      mission: const Mission(
        name: 'Mission Name 2',
        orbit: Orbit(
          name: 'Orbit Name 2',
        ),
      ),
      pad: const Pad(
        name: 'Pad Name 2',
        location: Location(
          name: 'Location Name 2',
        ),
      ),
    ),
    sampleLaunch.copyWith(
      id: '2',
      mission: const Mission(
        name: 'Mission Name 3',
        orbit: Orbit(
          name: 'Orbit Name 3',
        ),
      ),
      pad: const Pad(
        name: 'Pad Name 3',
        location: Location(
          name: 'Location Name 3',
        ),
      ),
    ),
  ];

  group('UpcomingLaunches', () {
    late LaunchesBloc launchesBloc;

    setUp(() {
      launchesBloc = MockLaunchesBloc();
    });

    testWidgets('renders correctly', (tester) async {
      await tester.pumpApp(
        UpcomingLaunches(launches: launches),
      );

      expect(find.byType(UpcomingLaunches), findsOneWidget);

      for (final launch in launches.skip(1)) {
        await tester.scrollUntilVisible(
          find.text(launch.mission.name!),
          10,
        );

        expect(find.text(launch.mission.name!), findsOneWidget);
        expect(find.text(launch.pad.name!), findsOneWidget);
      }
    });

    testWidgets('renders message when there are no launches', (tester) async {
      await tester.pumpApp(
        const UpcomingLaunches(launches: []),
      );

      expect(find.byType(UpcomingLaunches), findsOneWidget);
      expect(find.text('No upcoming launches'), findsOneWidget);
    });

    testWidgets('renders "No date" when launch date is null', (tester) async {
      await tester.pumpApp(
        const UpcomingLaunches(
          launches: [sampleLaunch, sampleLaunch],
        ),
      );

      expect(find.byType(UpcomingLaunches), findsOneWidget);
      expect(find.text('No date'), findsOneWidget);
    });

    testWidgets('goes to LaunchDetailsPage when card is clicked',
        (tester) async {
      when(() => launchesBloc.state)
          .thenReturn(LaunchesState(launches: launches));

      await tester.pumpAppWithRouter(
        UpcomingLaunches(
          launches: launches,
        ),
        launchesBloc: launchesBloc,
      );

      await tester.tap(find.byType(UpcomingLaunchCard).last);
      await tester.pump(const Duration(seconds: 2));
      await tester.pump(const Duration(seconds: 2));

      expect(
        tester
            .widget<LaunchDetailsPage>(find.byType(LaunchDetailsPage))
            .launchId,
        launches.last.id,
      );
    });
  });
}
