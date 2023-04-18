// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'theme_state.dart';

class ThemeCubit extends HydratedCubit<ThemeState> {
  ThemeCubit() : super(const ThemeState(ThemeMode.system));

  void setThemeMode(ThemeMode themeMode) {
    emit(state.copyWith(themeMode: themeMode));
  }

  void setMaterial3({required bool isEnabled}) {
    emit(state.copyWith(isDynamicThemeEnabled: isEnabled));
  }

  @override
  ThemeState? fromJson(Map<String, dynamic> json) {
    return ThemeState(
      ThemeMode.values[json['themeMode'] as int],
      isDynamicThemeEnabled: json['material3'] as bool,
    );
  }

  @override
  Map<String, dynamic>? toJson(ThemeState state) {
    return {
      'themeMode': state.themeMode.index,
      'material3': state.isDynamicThemeEnabled,
    };
  }
}
