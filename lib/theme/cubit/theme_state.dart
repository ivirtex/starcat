part of 'theme_cubit.dart';

class ThemeState extends Equatable {
  const ThemeState(this.themeMode, {this.material3 = true});

  final ThemeMode themeMode;
  final bool material3;

  @override
  List<Object> get props => [themeMode, material3];
}
