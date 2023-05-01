// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// Project imports:
import 'package:starcat/settings/settings.dart';
import 'package:starcat/theme/theme.dart';
import '../../test_helpers/test_helpers.dart';

class MockThemeCubit extends MockCubit<ThemeState> implements ThemeCubit {}

void main() {
  late ThemeCubit themeCubit;

  setUp(() {
    themeCubit = MockThemeCubit();

    when(() => themeCubit.state).thenReturn(
      const ThemeState(ThemeMode.dark),
    );
  });

  group('SettingsPage', () {
    testWidgets('renders SettingsPage', (tester) async {
      await tester.pumpApp(const SettingsPage());

      await tester.pumpAndSettle();

      expect(find.byType(SettingsPage), findsOneWidget);
    });
  });

  group('SettingsView', () {
    testWidgets('renders SettingsView', (tester) async {
      await tester.pumpApp(const SettingsView());

      await tester.pumpAndSettle();

      expect(find.byType(SettingsView), findsOneWidget);
    });

    testWidgets('Material You SwitchListTile works', (tester) async {
      await tester.pumpApp(
        themeCubit: themeCubit,
        const SettingsView(),
      );

      await tester.pumpAndSettle();

      await tester.tap(find.text('Material You'));
      await tester.pumpAndSettle();

      verify(() => themeCubit.setMaterial3(isEnabled: false)).called(1);

      await tester.tap(find.text('Material You'));
      await tester.pumpAndSettle();

      verify(() => themeCubit.setMaterial3(isEnabled: true)).called(1);
    });

    testWidgets('ThemeMode selector works', (tester) async {
      await tester.pumpApp(
        themeCubit: themeCubit,
        const SettingsView(),
      );

      await tester.pumpAndSettle();

      await tester.tap(find.text('System'));
      await tester.pumpAndSettle();

      verify(() => themeCubit.setThemeMode(ThemeMode.system)).called(1);

      await tester.tap(find.text('Dark'));
      await tester.pumpAndSettle();

      verify(() => themeCubit.setThemeMode(ThemeMode.dark)).called(1);

      await tester.tap(find.text('Light'));
      await tester.pumpAndSettle();

      verify(() => themeCubit.setThemeMode(ThemeMode.light)).called(1);
    });
  });
}
