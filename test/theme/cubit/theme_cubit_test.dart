import 'package:bloc_test/bloc_test.dart';
import 'package:falcon/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers/helpers.dart';

void main() {
  initHydratedStorage();

  group('ThemeCubit', () {
    late ThemeCubit themeCubit;

    setUp(() {
      themeCubit = ThemeCubit();
    });

    test('initial state is correct (ThemeState.system)', () {
      expect(themeCubit.state, equals(const ThemeState(ThemeMode.system)));
    });

    group('toJson/fromJson', () {
      test('work properly', () {
        final themeCubit = ThemeCubit();

        expect(
          themeCubit.fromJson(themeCubit.toJson(themeCubit.state)!),
          themeCubit.state,
        );
      });
    });

    group('setThemeMode', () {
      blocTest<ThemeCubit, ThemeState>(
        'emits correct mode for ThemeMode.light',
        build: ThemeCubit.new,
        act: (cubit) => cubit.setThemeMode(ThemeMode.light),
        expect: () => [const ThemeState(ThemeMode.light)],
      );

      blocTest<ThemeCubit, ThemeState>(
        'emits correct mode for ThemeMode.dark',
        build: ThemeCubit.new,
        act: (cubit) => cubit.setThemeMode(ThemeMode.dark),
        expect: () => [const ThemeState(ThemeMode.dark)],
      );

      blocTest<ThemeCubit, ThemeState>(
        'emits correct mode for ThemeMode.system',
        build: ThemeCubit.new,
        act: (cubit) => cubit.setThemeMode(ThemeMode.system),
        expect: () => [const ThemeState(ThemeMode.system)],
      );
    });
  });
}
