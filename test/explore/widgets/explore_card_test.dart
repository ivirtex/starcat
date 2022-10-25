// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';
import 'package:falcon/theme/theme.dart';
import '../../helpers/pump_app.dart';

class MockThemeCubit extends MockCubit<ThemeState> implements ThemeCubit {}

void main() {
  group('ExploreCard', () {
    late MockThemeCubit themeCubit;

    setUp(() {
      themeCubit = MockThemeCubit();

      when(() => themeCubit.state)
          .thenReturn(const ThemeState(ThemeMode.system));
    });

    testWidgets('renders title if provided', (WidgetTester tester) async {
      await tester.pumpApp(
        themeCubit: themeCubit,
        ExploreCard(
          title: const Text('Next Launch'),
          child: Container(),
        ),
      );

      expect(find.text('Next Launch'), findsOneWidget);
    });

    testWidgets('does not render title if not provided',
        (WidgetTester tester) async {
      await tester.pumpApp(
        themeCubit: themeCubit,
        ExploreCard(
          child: Container(),
        ),
      );

      expect(find.text('Next Launch'), findsNothing);
    });

    testWidgets('has correct color in light mode', (WidgetTester tester) async {
      await tester.pumpApp(
        themeCubit: themeCubit,
        ExploreCard(
          child: Container(),
        ),
      );

      final card = tester.widget<Card>(find.byType(Card));
      expect(card.color, Colors.black);
    });

    testWidgets('has correct color in dark mode', (WidgetTester tester) async {
      when(() => themeCubit.state).thenReturn(const ThemeState(ThemeMode.dark));

      await tester.pumpApp(
        themeCubit: themeCubit,
        ExploreCard(
          child: Container(),
        ),
      );

      final card = tester.widget<Card>(find.byType(Card));
      expect(card.color, Colors.white);
    });
  });
}
