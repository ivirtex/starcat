// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';
import 'package:falcon/launch_details/launch_details.dart';
import 'package:falcon/news/news.dart';
import 'package:falcon/shared/shared.dart';
import 'package:falcon/theme/theme.dart';

class App extends StatelessWidget {
  const App({
    required LaunchLibraryRepository spaceDevsRepository,
    required SpaceflightNewsRepository spaceflightNewsRepository,
    super.key,
  })  : _spaceDevsRepository = spaceDevsRepository,
        _spaceflightNewsRepository = spaceflightNewsRepository;

  final LaunchLibraryRepository _spaceDevsRepository;
  final SpaceflightNewsRepository _spaceflightNewsRepository;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => ThemeCubit(),
        ),
        BlocProvider(
          create: (_) => ExploreCubit(
            _spaceDevsRepository,
            _spaceflightNewsRepository,
          ),
        ),
      ],
      child: const AppView(),
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
          material: _createSchemedMaterialApp,
          cupertino: _createCupertinoApp,
        );
      },
    );
  }

  Widget _createSchemedMaterialApp(BuildContext context) {
    return DynamicColorBuilder(
      builder: (lightDynamic, darkDynamic) {
        ColorScheme lightScheme;
        ColorScheme darkScheme;

        if (lightDynamic != null && darkDynamic != null) {
          lightScheme = lightDynamic;
          darkScheme = darkDynamic;
        } else {
          lightScheme =
              FlexThemeData.light(scheme: FlexScheme.brandBlue).colorScheme;
          darkScheme =
              FlexThemeData.dark(scheme: FlexScheme.brandBlue).colorScheme;
        }

        return MaterialApp.router(
          title: 'Falcon',
          theme: FlexThemeData.light(
            useMaterial3: true,
            useMaterial3ErrorColors: true,
            swapLegacyOnMaterial3: true,
            surfaceMode: FlexSurfaceMode.highSurfaceLowScaffold,
            appBarStyle: FlexAppBarStyle.scaffoldBackground,
            blendLevel: 20,
            colorScheme: lightScheme,
            subThemesData: const FlexSubThemesData(),
          ),
          darkTheme: FlexThemeData.dark(
            useMaterial3: true,
            useMaterial3ErrorColors: true,
            swapLegacyOnMaterial3: true,
            surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
            appBarStyle: FlexAppBarStyle.scaffoldBackground,
            blendLevel: 30,
            colorScheme: darkScheme,
            subThemesData: const FlexSubThemesData(),
          ),
          themeMode: context.read<ThemeCubit>().state.themeMode,
          routerConfig: _router,
        );
      },
    );
  }

  Widget _createCupertinoApp(BuildContext context) {
    return CupertinoApp.router(
      title: 'Falcon',
      theme: CupertinoThemeData(
        brightness: context.read<ThemeCubit>().state.themeMode == ThemeMode.dark
            ? Brightness.dark
            : context.read<ThemeCubit>().state.themeMode == ThemeMode.light
                ? Brightness.light
                : null,
      ),
      routerConfig: _router,
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
          path: 'launch/:id',
          builder: (context, state) => LaunchDetailsPage(
            launchId: state.params['id']!,
          ),
        ),
        GoRoute(
          path: 'news',
          builder: (context, state) => const NewsPage(),
        )
      ],
    ),
  ],
);
