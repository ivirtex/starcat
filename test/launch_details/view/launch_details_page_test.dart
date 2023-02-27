// Flutter imports:
import 'package:flutter/cupertino.dart';

// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:space_devs_repository/space_devs_repository.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';
import 'package:falcon/launch_details/launch_details.dart';
import '../../helpers/helpers.dart';

class MockExploreCubit extends MockCubit<ExploreState>
    implements ExploreCubit {}

void main() {
  initHydratedStorage();

  const launches = Launches(
    results: [
      Launch(
        id: '123',
        pad: Pad(
          name: 'Pad 1',
          latitude: '1',
          longitude: '1',
        ),
        image: 'https://placeholder.com',
      ),
    ],
  );

  group('LaunchDetailsPage', () {
    late ExploreCubit exploreCubit;

    setUp(() {
      exploreCubit = MockExploreCubit();
      when(() => exploreCubit.state).thenReturn(
        const ExploreState(launches: launches),
      );
    });

    testWidgets('renders LaunchDetailsPage', (tester) async {
      await tester.pumpApp(
        exploreCubit: exploreCubit,
        LaunchDetailsPage(launchId: launches.results!.first.id!),
      );

      await tester.pump(const Duration(seconds: 2));

      expect(find.byType(LaunchDetailsPage), findsOneWidget);
    });
  });

  group('LaunchDetailsView', () {
    testWidgets('renders LaunchDetailsView', (tester) async {
      await tester.pumpApp(
        LaunchDetailsView(launch: launches.results!.first),
      );

      await tester.pump(const Duration(seconds: 2));

      expect(find.byType(LaunchDetailsView), findsOneWidget);
    });

    testWidgets('uses Cupertino widgets on iOS', (tester) async {
      await tester.pumpApp(
        platform: TargetPlatform.iOS,
        LaunchDetailsView(launch: launches.results!.first),
      );

      await tester.pump(const Duration(seconds: 2));

      expect(find.byType(CupertinoPageScaffold), findsOneWidget);
      expect(find.byType(CupertinoSliverNavigationBar), findsOneWidget);
    });

    testWidgets('renders image', (tester) async {
      await tester.pumpApp(
        LaunchDetailsView(launch: launches.results!.first),
      );

      await tester.pump(const Duration(seconds: 2));

      expect(find.byType(MissionImage), findsOneWidget);
    });

    testWidgets('learn more button is tappable', (tester) async {
      await tester.pumpApp(
        LaunchDetailsView(launch: launches.results!.first),
      );

      await tester.pump(const Duration(seconds: 2));

      await tester.tap(find.text('Learn more'));
    });
  });
}
