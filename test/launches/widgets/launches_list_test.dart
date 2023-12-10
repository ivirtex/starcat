// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';
import 'package:mocktail/mocktail.dart';

// Project imports:
import 'package:starcat/explore/explore.dart';
import 'package:starcat/helpers/helpers.dart';
import 'package:starcat/launches/launches.dart';
import 'package:starcat/shared/shared.dart';
import '../../sample_launch.dart';
import '../../test_helpers/test_helpers.dart';

class MockLaunchesBloc extends MockBloc<LaunchesEvent, LaunchesState>
    implements LaunchesBloc {}

void main() {
  initHydratedStorage();

  final launches = [
    sampleLaunch,
    sampleLaunch.copyWith(net: DateTime(2023), id: '2'),
    sampleLaunch.copyWith(net: DateTime(2024), id: '3'),
  ];

  group('LaunchesList', () {
    late LaunchesBloc launchesBloc;

    setUp(() {
      launchesBloc = MockLaunchesBloc();

      when(() => launchesBloc.state).thenReturn(
        LaunchesState(
          upcomingLaunches: launches,
          pastLaunches: launches,
        ),
      );
    });

    testWidgets('renders', (tester) async {
      await tester.pumpApp(
        launchesBloc: launchesBloc,
        CustomScrollView(
          slivers: [
            LaunchesList(launches: launches),
          ],
        ),
      );

      expect(find.byType(LaunchesList), findsOneWidget);
      expect(find.byType(ExploreCard), findsNWidgets(launches.length));
    });

    testWidgets('has correct widgets', (widgetTester) async {
      await widgetTester.pumpApp(
        launchesBloc: launchesBloc,
        CustomScrollView(
          slivers: [
            LaunchesList(launches: launches),
          ],
        ),
      );

      for (var i = 0; i < launches.length; i++) {
        expect(
          find.descendant(
            of: find.byType(ExploreCard).at(i),
            matching: find.byType(MissionImage),
          ),
          findsOneWidget,
        );
        expect(
          find.descendant(
            of: find.byType(ExploreCard).at(i),
            matching: find.byType(LaunchStatus),
          ),
          findsOneWidget,
        );
        expect(
          find.descendant(
            of: find.byType(ExploreCard).at(i),
            matching: find.text(launches[i].name),
          ),
          findsOneWidget,
        );

        final formattedDate = formatDate(
              launches[i].net?.toLocal(),
              dateFormat: DateFormat.yMMMd(),
            ) ??
            'N/A';
        final formattedTime = formatDate(
              launches[i].net?.toLocal(),
              dateFormat: DateFormat.Hm(),
            ) ??
            'N/A';

        expect(
          find.descendant(
            of: find.byType(ExploreCard).at(i),
            matching: find.text(
              '$formattedDate • $formattedTime',
              findRichText: true,
            ),
          ),
          findsOneWidget,
        );
      }
    });

    testWidgets('navigates to launch details', (tester) async {
      await tester.pumpAppWithRouter(
        launchesBloc: launchesBloc,
        location: '/launches',
      );

      await tester.tap(find.byType(ExploreCard).first);
      await tester.pump(const Duration(seconds: 3));
      await tester.pump(const Duration(seconds: 3));

      expect(find.byType(LaunchDetailsPage), findsOneWidget);
    });
  });
}
