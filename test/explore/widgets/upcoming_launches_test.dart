// Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';
import '../../helpers/helpers.dart';

void main() {
  initHydratedStorage();

  const launches = [
    Launch(
      id: 'sampleID',
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
  ];

  group('UpcomingLaunches', () {
    testWidgets('renders correctly', (tester) async {
      await tester.pumpApp(
        const UpcomingLaunches(launches: launches),
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
  });
}
