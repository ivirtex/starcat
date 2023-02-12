// ignore_for_file: lines_longer_than_80_chars

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:spacex_info_repository/spacex_info_repository.dart';
import 'package:vector_graphics/vector_graphics.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';
import '../../helpers/helpers.dart';

void main() {
  initHydratedStorage();

  const f9RessuplyLaunch = Launch(
    name: 'Name',
    mission: Mission(
      name: 'Long Mission Name',
      description: 'Mission Description',
      type: 'Resupply',
    ),
    rocket: Rocket(
      configuration: Configuration(
        name: 'Falcon 9',
      ),
    ),
  );

  const f9HumanExplorationLaunch = Launch(
    name: 'Name',
    mission: Mission(
      name: 'Long Mission Name',
      description: 'Mission Description',
      type: 'Human Exploration',
    ),
    rocket: Rocket(
      configuration: Configuration(
        name: 'Falcon 9',
      ),
    ),
  );

  const f9StarlinkLaunch = Launch(
    name: 'Name',
    mission: Mission(
      name: 'Long Mission Name',
      description: 'Mission Description',
      type: 'Communications',
    ),
    rocket: Rocket(
      configuration: Configuration(
        name: 'Falcon 9',
      ),
    ),
  );

  const fhLaunch = Launch(
    name: 'Name',
    mission: Mission(
      name: 'Long Mission Name',
      description: 'Mission Description',
      type: 'Human Exploration',
    ),
    rocket: Rocket(
      configuration: Configuration(
        name: 'Falcon Heavy',
      ),
    ),
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
