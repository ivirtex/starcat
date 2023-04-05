// ignore_for_file: lines_longer_than_80_chars

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:vector_graphics/vector_graphics.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';
import '../../helpers/helpers.dart';

void main() {
  initHydratedStorage();

  const f9RessuplyLaunch = Launch(
    id: '1',
    url: '',
    slug: '',
    name: 'Falcon 9 Block 5 | CRS-21',
    status: Status(),
    launchServiceProvider: LaunchServiceProvider(),
    rocket: Rocket(
      configuration: Configuration(
        url: 'https://ll.thespacedevs.com/2.2.0/config/launcher/164/',
        name: 'Falcon 9',
        family: 'Falcon',
        fullName: 'Falcon 9 Block 5',
        variant: 'Block 5',
      ),
    ),
    mission: Mission(
      name: 'Long Mission Name',
      description: 'Mission Description',
      type: 'Resupply',
      orbit: Orbit(),
    ),
    pad: Pad(
      location: Location(),
    ),
    webcastLive: false,
    program: [],
  );

  const f9HumanExplorationLaunch = Launch(
    id: '1',
    url: '',
    slug: '',
    name: 'Falcon 9 Block 5 | CRS-21',
    status: Status(),
    launchServiceProvider: LaunchServiceProvider(),
    rocket: Rocket(
      configuration: Configuration(
        url: 'https://ll.thespacedevs.com/2.2.0/config/launcher/164/',
        name: 'Falcon 9',
        family: 'Falcon',
        fullName: 'Falcon 9 Block 5',
        variant: 'Block 5',
      ),
    ),
    mission: Mission(
      name: 'Long Mission Name',
      description: 'Mission Description',
      type: 'Human Exploration',
      orbit: Orbit(),
    ),
    pad: Pad(
      location: Location(),
    ),
    webcastLive: false,
    program: [],
  );

  const f9StarlinkLaunch = Launch(
    id: '1',
    url: '',
    slug: '',
    name: 'Falcon 9 Block 5 | CRS-21',
    status: Status(),
    launchServiceProvider: LaunchServiceProvider(),
    rocket: Rocket(
      configuration: Configuration(
        url: 'https://ll.thespacedevs.com/2.2.0/config/launcher/164/',
        name: 'Falcon 9',
        family: 'Falcon',
        fullName: 'Falcon 9 Block 5',
        variant: 'Block 5',
      ),
    ),
    mission: Mission(
      name: 'Long Mission Name',
      description: 'Mission Description',
      type: 'Communications',
      orbit: Orbit(),
    ),
    pad: Pad(
      location: Location(),
    ),
    webcastLive: false,
    program: [],
  );

  const fhLaunch = Launch(
    id: '1',
    url: '',
    slug: '',
    name: 'Falcon 9 Block 5 | CRS-21',
    status: Status(),
    launchServiceProvider: LaunchServiceProvider(),
    rocket: Rocket(
      configuration: Configuration(
        url: 'https://ll.thespacedevs.com/2.2.0/config/launcher/164/',
        name: 'Falcon Heavy',
        family: 'Falcon',
        fullName: 'Falcon Heavy',
        variant: '',
      ),
    ),
    mission: Mission(
      name: 'Long Mission Name',
      description: 'Mission Description',
      type: 'Communications',
      orbit: Orbit(),
    ),
    pad: Pad(
      location: Location(),
    ),
    webcastLive: false,
    program: [],
  );

  group('VehicleScheme', () {
    testWidgets(
        'renders Falcon 9 with Dragon for ressuply and human exploration missions',
        (tester) async {
      await tester.pumpApp(
        VehicleScheme(
          mission: f9RessuplyLaunch.mission,
          vehicle: f9RessuplyLaunch.rocket,
        ),
      );

      final svg = tester.widget(find.byType(SvgPicture)) as SvgPicture;
      final bytesLoader = svg.bytesLoader as AssetBytesLoader;

      expect(
        bytesLoader.assetName,
        'assets/schematics/falcon_9/f9_dragon.svg.vec',
      );

      await tester.pumpApp(
        VehicleScheme(
          mission: f9HumanExplorationLaunch.mission,
          vehicle: f9HumanExplorationLaunch.rocket,
        ),
      );

      final svg2 = tester.widget(find.byType(SvgPicture)) as SvgPicture;
      final bytesLoader2 = svg2.bytesLoader as AssetBytesLoader;

      expect(
        bytesLoader2.assetName,
        'assets/schematics/falcon_9/f9_dragon.svg.vec',
      );
    });

    testWidgets('renders Falcon 9 with fairings for other missions',
        (tester) async {
      await tester.pumpApp(
        VehicleScheme(
          mission: f9StarlinkLaunch.mission,
          vehicle: f9StarlinkLaunch.rocket,
        ),
      );

      final svg = tester.widget(find.byType(SvgPicture)) as SvgPicture;
      final bytesLoader = svg.bytesLoader as AssetBytesLoader;

      expect(
        bytesLoader.assetName,
        'assets/schematics/falcon_9/f9.svg.vec',
      );
    });

    testWidgets('renders Falcon Heavy', (tester) async {
      await tester.pumpApp(
        VehicleScheme(
          mission: fhLaunch.mission,
          vehicle: fhLaunch.rocket,
        ),
      );

      final svg = tester.widget(find.byType(SvgPicture)) as SvgPicture;
      final bytesLoader = svg.bytesLoader as AssetBytesLoader;

      expect(
        bytesLoader.assetName,
        'assets/schematics/falcon_heavy/fh.svg.vec',
      );
    });
  });
}
