// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';
import 'package:falcon/theme/theme.dart';
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
        'renders CountdownTimer as HH:MM:SS when mode is set to CountdownTimerMode.hoursMinutesSeconds',
        (WidgetTester tester) async {
      await tester.pumpApp(
        themeCubit: themeCubit,
        exploreCubit: exploreCubit,
        const CountdownTimer(
          mode: CountdownTimerMode.hoursMinutesSeconds,
          days: '1',
          hours: '2',
          minutes: '3',
          seconds: '4',
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
  });
}
