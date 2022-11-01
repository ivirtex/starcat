// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:go_router/go_router.dart';
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
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => ThemeCubit(),
          ),
          BlocProvider(
            create: (_) => ExploreCubit(_spaceXInfoRepository),
          ),
        ],
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
        return PlatformWidget(
          material: (context, platform) {
            return MaterialApp.router(
              title: 'Falcon',
              theme: lightTheme,
              darkTheme: darkTheme,
              themeMode: state.themeMode,
              routerConfig: _router,
            );
          },
          cupertino: (context, platform) {
            return MediaQuery.fromWindow(
              child: CupertinoApp.router(
                title: 'Falcon',
                theme: cupertinoTheme.resolveFrom(context),
                useInheritedMediaQuery: true,
                routerConfig: _router,
              ),
            );
          },
        );
      },
    );
  }
}

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const ExplorePage(),
      routes: [
        GoRoute(
          name: 'launch',
          path: 'launch/:id',
          builder: (context, state) => LaunchDetailsPage(
            launchId: state.params['id']!,
          ),
        )
      ],
    ),
  ],
);
