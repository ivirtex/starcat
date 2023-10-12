// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:notifications_repository/notifications_repository.dart';
import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';
import 'package:wiredash/wiredash.dart';

// Project imports:
import 'package:starcat/app/app.dart';
import 'package:starcat/launches/launches.dart';
import 'package:starcat/news/news.dart';
import 'package:starcat/notifications/notifications.dart';
import 'package:starcat/starship/starship.dart';
import 'package:starcat/theme/theme.dart';

class AppWrapper extends StatelessWidget {
  const AppWrapper({
    required LaunchLibraryRepository launchLibraryRepository,
    required SpaceflightNewsRepository spaceflightNewsRepository,
    required NotificationsRepository notificationsRepository,
    super.key,
  })  : _launchLibraryRepository = launchLibraryRepository,
        _spaceflightNewsRepository = spaceflightNewsRepository,
        _notificationsRepository = notificationsRepository;

  final LaunchLibraryRepository _launchLibraryRepository;
  final SpaceflightNewsRepository _spaceflightNewsRepository;
  final NotificationsRepository _notificationsRepository;

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
        ),
        BlocProvider(
          create: (context) => StarshipDashboardBloc(
            _launchLibraryRepository,
          ),
        ),
        BlocProvider(
          create: (context) => NotificationsCubit(
            _notificationsRepository,
          ),
        ),
      ],
      child: const App(),
    );
  }
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return _createSchemedMaterialApp(context);
      },
    );
  }

  Widget _createSchemedMaterialApp(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    final isDynamicThemeEnabled =
        context.read<ThemeCubit>().state.isDynamicThemeEnabled;

    return DynamicColorBuilder(
      builder: (lightDynamic, darkDynamic) {
        ColorScheme lightScheme;
        ColorScheme darkScheme;

        if (lightDynamic != null &&
            darkDynamic != null &&
            isDynamicThemeEnabled) {
          lightScheme = lightDynamic;
          darkScheme = darkDynamic;
        } else {
          lightScheme = kDefaultLightScheme;
          darkScheme = kDefaultDarkScheme;
        }

        return AnnotatedRegion(
          value: FlexColorScheme.themedSystemNavigationBar(
            context,
            systemNavBarStyle: FlexSystemNavBarStyle.transparent,
          ),
          child: Wiredash(
            projectId: 'starcat-w3mkxif',
            secret: '8y10DEziectf1WRHc9DWrmnog2p_YHo8',
            child: MaterialApp.router(
              title: 'Starcat',
              theme: createThemeBasedOn(
                scheme: lightScheme,
                brightness: Brightness.light,
              ),
              darkTheme: createThemeBasedOn(
                scheme: darkScheme,
                brightness: Brightness.dark,
              ),
              themeMode: context.read<ThemeCubit>().state.themeMode,
              routerConfig: router,
            ),
          ),
        );
      },
    );
  }
}
