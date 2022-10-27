import 'package:bloc_test/bloc_test.dart';
import 'package:falcon/explore/explore.dart';
import 'package:falcon/shared/shared.dart';
import 'package:falcon/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/helpers.dart';

class MockExploreCubit extends MockCubit<ExploreState> implements ExploreCubit {
}

class MockThemeCubit extends MockCubit<ThemeState> implements ThemeCubit {}

void main() {
  group('CountdownTimer', () {
    late ExploreCubit exploreCubit;
    late ThemeCubit themeCubit;

    setUp(() {
      exploreCubit = MockExploreCubit();
      themeCubit = MockThemeCubit();

      when(() => themeCubit.state).thenReturn(
        const ThemeState(ThemeMode.system),
      );
    });

    testWidgets('renders CountdownTimer as DD:HH:MM by default',
        (WidgetTester tester) async {
      await tester.pumpApp(
        themeCubit: themeCubit,
        exploreCubit: exploreCubit,
        const CountdownTimer(
          days: '1',
          hours: '2',
          minutes: '3',
          seconds: '4',
        ),
      );

      expect(find.byType(CountdownTimer), findsOneWidget);
      expect(find.text('1'), findsOneWidget);
      expect(find.text('d'), findsOneWidget);

      expect(find.text('2'), findsOneWidget);
      expect(find.text('h'), findsOneWidget);

      expect(find.text('3'), findsOneWidget);
      expect(find.text('m'), findsOneWidget);

      expect(find.text('4'), findsNothing);
      expect(find.text('s'), findsNothing);
    });

    testWidgets(
        'renders CountdownTimer as HH:MM:SS when status is Go for Launch',
        (WidgetTester tester) async {
      await tester.pumpApp(
        themeCubit: themeCubit,
        exploreCubit: exploreCubit,
        const CountdownTimer(
          days: '1',
          hours: '2',
          minutes: '3',
          seconds: '4',
          abbrev: 'Go',
        ),
      );

      expect(find.byType(CountdownTimer), findsOneWidget);
      expect(find.text('1'), findsNothing);
      expect(find.text('d'), findsNothing);

      expect(find.text('2'), findsOneWidget);
      expect(find.text('h'), findsOneWidget);

      expect(find.text('3'), findsOneWidget);
      expect(find.text('m'), findsOneWidget);

      expect(find.text('4'), findsOneWidget);
      expect(find.text('s'), findsOneWidget);
    });

    testWidgets('renders TBD card when launch status is TBD',
        (WidgetTester tester) async {
      await tester.pumpApp(
        themeCubit: themeCubit,
        exploreCubit: exploreCubit,
        const CountdownTimer(
          days: '1',
          hours: '2',
          minutes: '3',
          seconds: '4',
          abbrev: 'TBD',
        ),
      );

      expect(find.byType(InfoCard), findsOneWidget);
      expect(find.text('TBD'), findsOneWidget);
    });

    testWidgets('does not render TBD card when launch status is not TBD',
        (WidgetTester tester) async {
      await tester.pumpApp(
        themeCubit: themeCubit,
        exploreCubit: exploreCubit,
        const CountdownTimer(
          days: '1',
          hours: '2',
          minutes: '3',
          seconds: '4',
        ),
      );

      expect(find.byType(InfoCard), findsNothing);
    });

    testWidgets('renders TBC card when launch status is TBC',
        (WidgetTester tester) async {
      await tester.pumpApp(
        themeCubit: themeCubit,
        exploreCubit: exploreCubit,
        const CountdownTimer(
          days: '1',
          hours: '2',
          minutes: '3',
          seconds: '4',
          abbrev: 'TBC',
        ),
      );

      expect(find.byType(InfoCard), findsOneWidget);
      expect(find.text('TBC'), findsOneWidget);
    });

    testWidgets('does not render TBC card when launch status is not TBC',
        (WidgetTester tester) async {
      await tester.pumpApp(
        themeCubit: themeCubit,
        exploreCubit: exploreCubit,
        const CountdownTimer(
          days: '1',
          hours: '2',
          minutes: '3',
          seconds: '4',
        ),
      );

      expect(find.byType(InfoCard), findsNothing);
    });
  });
}
