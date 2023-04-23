// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:mocktail/mocktail.dart';

// Project imports:
import 'package:starcat/explore/explore.dart';
import 'package:starcat/launches/launches.dart';
import 'package:starcat/shared/shared.dart';
import 'package:starcat/theme/theme.dart';
import '../../test_helpers/test_helpers.dart';

class MockLaunchesBloc extends MockCubit<LaunchesState>
    implements LaunchesBloc {}

class MockThemeCubit extends MockCubit<ThemeState> implements ThemeCubit {}

void main() {
  initHydratedStorage();

  group('NextLaunchCard', () {
    late LaunchesBloc launchesBloc;
    late ThemeCubit themeCubit;

    const launch = Launch(
      id: 'sampleID',
      url: 'sampleURL',
      slug: 'sampleSlug',
      name: 'Name',
      webcastLive: false,
      status: Status(
        name: 'Status Name',
        abbrev: StatusAbbrev.tbd,
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
    );

    setUp(() {
      launchesBloc = MockLaunchesBloc();
      themeCubit = MockThemeCubit();

      when(() => themeCubit.state).thenReturn(
        const ThemeState(ThemeMode.system),
      );
    });

    testWidgets('renders ExploreCard for LaunchesStatus.success',
        (WidgetTester tester) async {
      when(() => launchesBloc.state).thenReturn(
        const LaunchesState(
          status: LaunchesStatus.success,
          upcomingLaunches: [launch],
        ),
      );

      await tester.pumpApp(
        themeCubit: themeCubit,
        launchesBloc: launchesBloc,
        const NextLaunchCard(launch: launch),
      );

      expect(find.byType(ExploreCard), findsOneWidget);
      expect(find.text(launch.name), findsOneWidget);
      expect(find.text(launch.mission.description!), findsOneWidget);
    });

    testWidgets(
        'goes to LaunchDetailsPage when "Launch Details" button is tapped',
        (WidgetTester tester) async {
      when(() => launchesBloc.state).thenReturn(
        const LaunchesState(
          status: LaunchesStatus.success,
          upcomingLaunches: [launch],
        ),
      );

      await tester.pumpAppWithRouter(
        themeCubit: themeCubit,
        launchesBloc: launchesBloc,
        const NextLaunchCard(launch: launch),
      );

      await tester.tap(find.text('Launch Details'));
      await tester.pumpAndSettle();

      expect(find.byType(LaunchDetailsPage), findsOneWidget);
    });

    group('LaunchStatus', () {
      const launchStatus = Status(
        name: 'Go for launch',
        abbrev: StatusAbbrev.go,
      );

      testWidgets('renders status correctly', (WidgetTester tester) async {
        await tester.pumpApp(
          const LaunchStatus(launchStatus),
        );

        expect(find.text(launchStatus.name!), findsOneWidget);
      });

      testWidgets('renders with green accent color when abbrev is "Go"',
          (WidgetTester tester) async {
        await tester.pumpApp(
          const LaunchStatus(launchStatus),
        );

        final statusWidgetIcon = tester.widget(find.byType(Icon)) as Icon;
        expect(statusWidgetIcon.color, Colors.greenAccent.shade400);
      });

      testWidgets('renders with light green color when abbrev is "TBC"',
          (WidgetTester tester) async {
        const launchStatus = Status(
          abbrev: StatusAbbrev.tbc,
        );

        await tester.pumpApp(
          const LaunchStatus(launchStatus),
        );

        final statusWidgetIcon = tester.widget(find.byType(Icon)) as Icon;
        expect(statusWidgetIcon.color, Colors.lightGreen);
      });

      testWidgets('renders with grey color when abbrev is "TBD"',
          (WidgetTester tester) async {
        const launchStatus = Status(
          abbrev: StatusAbbrev.tbd,
        );

        await tester.pumpApp(
          const LaunchStatus(launchStatus),
        );

        final statusWidgetIcon = tester.widget(find.byType(Icon)) as Icon;
        expect(statusWidgetIcon.color, Colors.grey);
      });
    });
  });
}
