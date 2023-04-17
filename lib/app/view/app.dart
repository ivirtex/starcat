// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';

// Project imports:
import 'package:starcat/explore/explore.dart';
import 'package:starcat/launches/launches.dart';
import 'package:starcat/news/news.dart';
import 'package:starcat/settings/settings.dart';
import 'package:starcat/shared/shared.dart';
import 'package:starcat/theme/theme.dart';

class App extends StatelessWidget {
  const App({
    required LaunchLibraryRepository launchLibraryRepository,
    required SpaceflightNewsRepository spaceflightNewsRepository,
    super.key,
  })  : _launchLibraryRepository = launchLibraryRepository,
        _spaceflightNewsRepository = spaceflightNewsRepository;

  final LaunchLibraryRepository _launchLibraryRepository;
  final SpaceflightNewsRepository _spaceflightNewsRepository;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => ThemeCubit(),
        ),
        BlocProvider(
          create: (_) => LaunchesBloc(
            _launchLibraryRepository,
          ),
        ),
        BlocProvider(
          create: (context) => NewsBloc(
            _spaceflightNewsRepository,
          ),
        )
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
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    final isMaterial3Enabled = context.read<ThemeCubit>().state.material3;

    return DynamicColorBuilder(
      builder: (lightDynamic, darkDynamic) {
        ColorScheme lightScheme;
        ColorScheme darkScheme;

        if (lightDynamic != null && darkDynamic != null && isMaterial3Enabled) {
          lightScheme = lightDynamic;
          darkScheme = darkDynamic;
        } else {
          lightScheme =
              FlexThemeData.light(scheme: FlexScheme.brandBlue).colorScheme;
          darkScheme =
              FlexThemeData.dark(scheme: FlexScheme.brandBlue).colorScheme;
        }

        return AnnotatedRegion(
          value: FlexColorScheme.themedSystemNavigationBar(
            context,
            systemNavBarStyle: FlexSystemNavBarStyle.transparent,
          ),
          child: MaterialApp.router(
            title: 'Falcon',
            theme: FlexThemeData.light(
              useMaterial3: true,
              useMaterial3ErrorColors: true,
              colorScheme: lightScheme.copyWith(shadow: Colors.transparent),
              subThemesData: const FlexSubThemesData(
                useTextTheme: true,
              ),
            ),
            darkTheme: FlexThemeData.dark(
              useMaterial3: true,
              useMaterial3ErrorColors: true,
              colorScheme: darkScheme.copyWith(shadow: Colors.transparent),
              subThemesData: const FlexSubThemesData(
                useTextTheme: true,
              ),
            ),
            themeMode: context.read<ThemeCubit>().state.themeMode,
            routerConfig: _router,
          ),
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
        ),
        GoRoute(
          path: 'settings',
          builder: (context, state) => const SettingsPage(),
        ),
      ],
    ),
  ],
);
