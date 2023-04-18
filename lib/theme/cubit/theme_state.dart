part of 'theme_cubit.dart';

class ThemeState extends Equatable {
  const ThemeState(this.themeMode, {this.isDynamicThemeEnabled = true});

  final ThemeMode themeMode;
  final bool isDynamicThemeEnabled;

  ThemeState copyWith({
    ThemeMode? themeMode,
    bool? isDynamicThemeEnabled,
  }) {
    return ThemeState(
      themeMode ?? this.themeMode,
      isDynamicThemeEnabled:
          isDynamicThemeEnabled ?? this.isDynamicThemeEnabled,
    );
  }

  @override
  List<Object> get props => [themeMode, isDynamicThemeEnabled];
}
