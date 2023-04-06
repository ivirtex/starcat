// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';

// Project imports:
import 'package:falcon/launches/launches.dart';
import 'package:falcon/news/news.dart';
import 'package:falcon/theme/theme.dart';

extension PumpApp on WidgetTester {
  Future<void> pumpApp(
    Widget widget, {
    LaunchLibraryRepository? launchLibraryRepository,
    SpaceflightNewsRepository? spaceflightNewsRepository,
    LaunchesBloc? launchesBloc,
    NewsBloc? newsBloc,
    ThemeCubit? themeCubit,
    TargetPlatform platform = TargetPlatform.android,
  }) {
    return pumpWidget(
      RepositoryProvider.value(
        value: LaunchLibraryRepository,
        child: MultiBlocProvider(
          providers: [
            BlocProvider.value(
              value: themeCubit ?? ThemeCubit(),
            ),
            BlocProvider.value(
              value: launchesBloc ??
                  LaunchesBloc(
                    launchLibraryRepository ?? LaunchLibraryRepository(),
                  ),
            ),
            BlocProvider.value(
              value: newsBloc ??
                  NewsBloc(
                    spaceflightNewsRepository ?? SpaceflightNewsRepository(),
                  ),
            ),
          ],
          child: MaterialApp(
            themeMode: themeCubit?.state.themeMode,
            theme: ThemeData().copyWith(platform: platform),
            darkTheme: ThemeData.dark().copyWith(platform: platform),
            home: widget,
          ),
        ),
      ),
    );
  }

  Future<void> pumpAppWithRouter(
    Widget widget, {
    LaunchLibraryRepository? launchLibraryRepository,
    SpaceflightNewsRepository? spaceflightNewsRepository,
    LaunchesBloc? launchesBloc,
    ThemeCubit? themeCubit,
    TargetPlatform platform = TargetPlatform.android,
  }) {
    return pumpWidget(
      MultiBlocProvider(
        providers: [
          BlocProvider.value(
            value: themeCubit ?? ThemeCubit(),
          ),
          BlocProvider.value(
            value: launchesBloc ??
                LaunchesBloc(
                  launchLibraryRepository ?? LaunchLibraryRepository(),
                ),
          ),
        ],
        child: MaterialApp.router(
          themeMode: themeCubit?.state.themeMode,
          theme: ThemeData().copyWith(platform: platform),
          darkTheme: ThemeData.dark().copyWith(platform: platform),
          routerConfig: GoRouter(
            routes: [
              GoRoute(
                path: '/',
                builder: (context, state) => widget,
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
          ),
        ),
      ),
    );
  }
}
