// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex_info_repository/spacex_info_repository.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';
import 'package:falcon/theme/theme.dart';

class App extends StatelessWidget {
  const App({
    required SpaceXInfoRepository spaceXInfoRepository,
    super.key,
  }) : _spaceXInfoRepository = spaceXInfoRepository;

  final SpaceXInfoRepository _spaceXInfoRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _spaceXInfoRepository,
      child: BlocProvider(
        create: (_) => ThemeCubit(),
        child: const AppView(),
      ),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return MaterialApp(
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: state.themeMode,
          home: const ExplorePage(),
        );
      },
    );
  }
}
