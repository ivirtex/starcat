// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';
import 'package:workmanager/workmanager.dart';

// Project imports:
import 'package:starcat/launches/launches.dart';
import 'package:starcat/news/news.dart';
import 'package:starcat/notifications/cubit/cubit.dart';
import 'package:starcat/theme/theme.dart';
import 'test_helpers.dart';

extension PumpApp on WidgetTester {
  Future<void> pumpApp(
    Widget widget, {
    LaunchLibraryRepository? launchLibraryRepository,
    SpaceflightNewsRepository? spaceflightNewsRepository,
    LaunchesBloc? launchesBloc,
    NewsBloc? newsBloc,
    ThemeCubit? themeCubit,
    NotificationsCubit? notificationsCubit,
    FlutterLocalNotificationsPlugin? notificationsPluginMock,
    Workmanager? workmanagerMock,
    TargetPlatform platform = TargetPlatform.android,
  }) {
    initHydratedStorage();

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
          BlocProvider.value(
            value: newsBloc ??
                NewsBloc(
                  spaceflightNewsRepository ?? SpaceflightNewsRepository(),
                ),
          ),
          BlocProvider.value(
            value: notificationsCubit ??
                NotificationsCubit(
                  notificationsPluginMock ?? FlutterLocalNotificationsPlugin(),
                  workmanagerMock ?? Workmanager(),
                ),
          )
        ],
        child: MaterialApp(
          themeMode: themeCubit?.state.themeMode,
          theme: ThemeData().copyWith(platform: platform),
          darkTheme: ThemeData.dark().copyWith(platform: platform),
          home: widget,
        ),
      ),
    );
  }

  Future<void> pumpAppWithRouter(
    Widget widget, {
    LaunchLibraryRepository? launchLibraryRepository,
    SpaceflightNewsRepository? spaceflightNewsRepository,
    LaunchesBloc? launchesBloc,
    NewsBloc? newsBloc,
    ThemeCubit? themeCubit,
    NotificationsCubit? notificationsCubit,
    FlutterLocalNotificationsPlugin? notificationsPluginMock,
    Workmanager? workmanagerMock,
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
          BlocProvider.value(
            value: newsBloc ??
                NewsBloc(
                  spaceflightNewsRepository ?? SpaceflightNewsRepository(),
                ),
          ),
          BlocProvider.value(
            value: notificationsCubit ??
                NotificationsCubit(
                  notificationsPluginMock ?? FlutterLocalNotificationsPlugin(),
                  workmanagerMock ?? Workmanager(),
                ),
          )
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
                    path: 'launch/:id',
                    builder: (context, state) {
                      final allLaunches =
                          context.read<LaunchesBloc>().state.allLaunches;
                      final launch = allLaunches.firstWhere(
                        (launch) => launch.id == state.pathParameters['id'],
                      );

                      return LaunchDetailsPage(
                        launch: launch,
                        withHero: state.queryParameters['withHero'] == 'true',
                      );
                    },
                  ),
                  GoRoute(
                    path: 'news',
                    builder: (context, state) => const NewsPage(),
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
