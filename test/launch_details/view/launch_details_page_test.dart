// Flutter imports:
import 'package:flutter/cupertino.dart';

// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';
import 'package:falcon/launch_details/launch_details.dart';
import '../../helpers/helpers.dart';

class MockExploreCubit extends MockCubit<ExploreState>
    implements ExploreCubit {}

void main() {
  initHydratedStorage();

  const launch = Launch(
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
      name: 'Pad 39A',
      latitude: '0',
      longitude: '0',
      location: Location(),
    ),
    webcastLive: false,
    program: [],
  );

  group('LaunchDetailsPage', () {
    late ExploreCubit exploreCubit;

    setUp(() {
      exploreCubit = MockExploreCubit();
      when(() => exploreCubit.state).thenReturn(
        const ExploreState(launches: [launch]),
      );
    });

    testWidgets('renders LaunchDetailsPage', (tester) async {
      await tester.pumpApp(
        exploreCubit: exploreCubit,
        LaunchDetailsPage(launchId: launch.id),
      );

      await tester.pump(const Duration(seconds: 2));

      expect(find.byType(LaunchDetailsPage), findsOneWidget);
    });
  });

  group('LaunchDetailsView', () {
    testWidgets('renders LaunchDetailsView', (tester) async {
      await tester.pumpApp(
        const LaunchDetailsView(launch: launch),
      );

      await tester.pump(const Duration(seconds: 2));

      expect(find.byType(LaunchDetailsView), findsOneWidget);
    });

    testWidgets('uses Cupertino widgets on iOS', (tester) async {
      await tester.pumpApp(
        platform: TargetPlatform.iOS,
        const LaunchDetailsView(launch: launch),
      );

      await tester.pump(const Duration(seconds: 2));

      expect(find.byType(CupertinoPageScaffold), findsOneWidget);
      expect(find.byType(CupertinoSliverNavigationBar), findsOneWidget);
    });

    testWidgets('renders image', (tester) async {
      await tester.pumpApp(
        const LaunchDetailsView(launch: launch),
      );

      await tester.pump(const Duration(seconds: 2));

      expect(find.byType(MissionImage), findsOneWidget);
    });

    testWidgets('learn more button is tappable', (tester) async {
      await tester.pumpApp(
        const LaunchDetailsView(launch: launch),
      );

      await tester.pump(const Duration(seconds: 2));

      await tester.tap(find.text('Learn more'));
    });
  });
}
