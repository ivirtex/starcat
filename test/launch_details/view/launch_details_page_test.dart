// Flutter imports:
import 'package:flutter/cupertino.dart';

// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// Project imports:
import 'package:falcon/launches/launches.dart';
import '../../helpers/helpers.dart';
import '../../sample_launch.dart';

class MockLaunchesBloc extends MockCubit<LaunchesState>
    implements LaunchesBloc {}

void main() {
  initHydratedStorage();

  group('LaunchDetailsPage', () {
    late LaunchesBloc launchesBloc;

    setUp(() {
      launchesBloc = MockLaunchesBloc();
      when(() => launchesBloc.state).thenReturn(
        const LaunchesState(launches: [sampleLaunch]),
      );
    });

    testWidgets('renders LaunchDetailsPage', (tester) async {
      await tester.pumpApp(
        launchesBloc: launchesBloc,
        LaunchDetailsPage(launchId: sampleLaunch.id),
      );

      await tester.pump(const Duration(seconds: 2));

      expect(find.byType(LaunchDetailsPage), findsOneWidget);
    });
  });

  group('LaunchDetailsView', () {
    testWidgets('renders LaunchDetailsView', (tester) async {
      await tester.pumpApp(
        const LaunchDetailsView(launch: sampleLaunch),
      );

      await tester.pump(const Duration(seconds: 2));

      expect(find.byType(LaunchDetailsView), findsOneWidget);
    });

    testWidgets('uses Cupertino widgets on iOS', (tester) async {
      await tester.pumpApp(
        platform: TargetPlatform.iOS,
        const LaunchDetailsView(launch: sampleLaunch),
      );

      await tester.pump(const Duration(seconds: 2));

      expect(find.byType(CupertinoPageScaffold), findsOneWidget);
      expect(find.byType(CupertinoSliverNavigationBar), findsOneWidget);
    });

    testWidgets('renders image', (tester) async {
      await tester.pumpApp(
        const LaunchDetailsView(launch: sampleLaunch),
      );

      await tester.pump(const Duration(seconds: 2));

      expect(find.byType(MissionImage), findsOneWidget);
    });

    testWidgets('learn more button is tappable', (tester) async {
      await tester.pumpApp(
        const LaunchDetailsView(launch: sampleLaunch),
      );

      await tester.pump(const Duration(seconds: 2));

      await tester.tap(find.text('Learn more'));
    });
  });
}
