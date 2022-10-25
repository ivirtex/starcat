// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:spacex_info_repository/spacex_info_repository.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';
import 'package:falcon/theme/theme.dart';
import '../../helpers/helpers.dart';

class MockExploreCubit extends MockCubit<ExploreState> implements ExploreCubit {
}

class MockThemeCubit extends MockCubit<ThemeState> implements ThemeCubit {}

void main() {
  group('NextLaunchCard', () {
    late ExploreCubit exploreCubit;
    late ThemeCubit themeCubit;

    setUp(() {
      exploreCubit = MockExploreCubit();
      themeCubit = MockThemeCubit();

      when(() => themeCubit.state).thenReturn(
        const ThemeState(ThemeMode.system),
      );
    });

    testWidgets('renders ExploreCard for ExploreStatus.success',
        (WidgetTester tester) async {
      const launch = Launch(
        mission: Mission(
          name: 'Mission Name',
          description: 'Mission Description',
        ),
      );

      when(() => exploreCubit.state).thenReturn(
        const ExploreState(
          status: ExploreStatus.success,
          launches: Launches(
            results: [
              launch,
            ],
          ),
        ),
      );

      await tester.pumpApp(
        themeCubit: themeCubit,
        exploreCubit: exploreCubit,
        const NextLaunchCard(launch: launch),
      );

      expect(find.byType(ExploreCard), findsOneWidget);
      expect(find.text(launch.mission!.name!), findsOneWidget);
      expect(find.text(launch.mission!.description!), findsOneWidget);
    });

    testWidgets(
        'does not render CountdownTimer when no launch date is available',
        (WidgetTester tester) async {
      const launch = Launch(
        mission: Mission(
          name: 'Mission Name',
          description: 'Mission Description',
        ),
      );

      when(() => exploreCubit.state).thenReturn(
        const ExploreState(
          status: ExploreStatus.success,
          launches: Launches(
            results: [
              launch,
            ],
          ),
        ),
      );

      await tester.pumpApp(
        themeCubit: themeCubit,
        exploreCubit: exploreCubit,
        const NextLaunchCard(launch: launch),
      );

      expect(find.byType(CountdownTimer), findsNothing);
    });

    testWidgets('renders CountdownTimer when launch date is available',
        (WidgetTester tester) async {
      final launch = Launch(
        mission: const Mission(
          name: 'Mission Name',
          description: 'Mission Description',
        ),
        net: DateTime(2023, 2, 10),
      );

      when(() => exploreCubit.state).thenReturn(
        ExploreState(
          status: ExploreStatus.success,
          launches: Launches(
            results: [
              launch,
            ],
          ),
        ),
      );

      await tester.pumpApp(
        themeCubit: themeCubit,
        exploreCubit: exploreCubit,
        NextLaunchCard(launch: launch),
      );

      expect(find.byType(CountdownTimer), findsOneWidget);
    });

    group('CountdownTimer', () {
      testWidgets('renders CountdownTimer correctly',
          (WidgetTester tester) async {
        await tester.pumpApp(
          themeCubit: themeCubit,
          exploreCubit: exploreCubit,
          const CountdownTimer(
            isLaunchTimeTbd: true,
            tMinusToLaunchDays: '1',
            tMinusToLaunchHours: '2',
            tMinusToLaunchMinutes: '3',
          ),
        );

        expect(find.byType(CountdownTimer), findsOneWidget);
      });

      testWidgets('renders warning card when isLaunchTimeTbd is true',
          (WidgetTester tester) async {
        await tester.pumpApp(
          themeCubit: themeCubit,
          exploreCubit: exploreCubit,
          const CountdownTimer(
            isLaunchTimeTbd: true,
            tMinusToLaunchDays: '1',
            tMinusToLaunchHours: '2',
            tMinusToLaunchMinutes: '3',
          ),
        );

        expect(find.text('T -'), findsOneWidget);
        expect(find.text('1'), findsOneWidget);
        expect(find.text('2'), findsOneWidget);
        expect(find.text('3'), findsOneWidget);
        expect(find.byType(Container), findsOneWidget);
        expect(find.text('TBD'), findsOneWidget);
      });

      testWidgets('does not render warning card when isLaunchTimeTbd is false',
          (WidgetTester tester) async {
        await tester.pumpApp(
          themeCubit: themeCubit,
          exploreCubit: exploreCubit,
          const CountdownTimer(
            isLaunchTimeTbd: false,
            tMinusToLaunchDays: '1',
            tMinusToLaunchHours: '2',
            tMinusToLaunchMinutes: '3',
          ),
        );

        expect(find.text('1'), findsOneWidget);
        expect(find.text('2'), findsOneWidget);
        expect(find.text('3'), findsOneWidget);
        expect(find.byType(Container), findsNothing);
      });
    });
  });
}
