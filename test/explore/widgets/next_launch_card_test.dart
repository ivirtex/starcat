// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:mocktail/mocktail.dart';

// Project imports:
import 'package:starcat/explore/explore.dart';
import 'package:starcat/launches/launches.dart';
import 'package:starcat/shared/shared.dart';
import '../../sample_launch.dart';
import '../../test_helpers/test_helpers.dart';

class MockLaunchLibraryRepository extends Mock
    implements LaunchLibraryRepository {}

class MockLaunchesBloc extends MockBloc<LaunchesEvent, LaunchesState>
    implements LaunchesBloc {}

void main() {
  initHydratedStorage();

  group('NextLaunchCard', () {
    late LaunchLibraryRepository launchLibraryRepository;
    late LaunchesBloc launchesBloc;

    setUp(() {
      launchLibraryRepository = MockLaunchLibraryRepository();
      launchesBloc = MockLaunchesBloc();

      when(() => launchLibraryRepository.getLaunchDetails(any()))
          .thenAnswer((_) async => sampleLaunch);
      when(() => launchesBloc.state)
          .thenReturn(const LaunchesState(upcomingLaunches: [sampleLaunch]));
    });

    testWidgets('renders ExploreCard', (WidgetTester tester) async {
      await tester.pumpApp(
        const NextLaunchCard(launch: sampleLaunch),
      );

      expect(find.byType(ExploreCard), findsOneWidget);
      expect(find.text(sampleLaunch.name), findsOneWidget);
      expect(find.text(sampleLaunch.mission!.description!), findsOneWidget);
    });

    testWidgets(
        'goes to LaunchDetailsPage when "Launch Details" button is tapped',
        (WidgetTester tester) async {
      await tester.pumpAppWithRouter(
        launchLibraryRepository: launchLibraryRepository,
        launchesBloc: launchesBloc,
        const NextLaunchCard(launch: sampleLaunch),
      );

      await tester.tap(find.text('Launch Details'));
      await tester.pump(3.seconds); // ripple animation
      await tester.pump(3.seconds); // navigation animation

      expect(find.byType(LaunchDetailsPage), findsOneWidget);
    });
  });
}
