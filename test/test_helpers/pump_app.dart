// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:live_activities/live_activities.dart';
import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';
import 'package:workmanager/workmanager.dart';

// Project imports:
import 'package:starcat/app/app.dart';
import 'package:starcat/launches/launches.dart';
import 'package:starcat/news/news.dart';
import 'package:starcat/notifications/cubit/cubit.dart';
import 'package:starcat/starship/bloc/bloc.dart';
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
    FlutterLocalNotificationsPlugin? notificationsPlugin,
    LiveActivities? liveActivitiesPlugin,
    Workmanager? workmanager,
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
          BlocProvider(
            create: (context) => StarshipDashboardBloc(
              launchLibraryRepository ?? LaunchLibraryRepository(),
            ),
          ),
          BlocProvider.value(
            value: notificationsCubit ??
                NotificationsCubit(
                  notificationsPlugin ?? FlutterLocalNotificationsPlugin(),
                  liveActivitiesPlugin ?? LiveActivities(),
                  workmanager ?? Workmanager(),
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

  Future<void> pumpAppWithRouter({
    LaunchLibraryRepository? launchLibraryRepository,
    SpaceflightNewsRepository? spaceflightNewsRepository,
    LaunchesBloc? launchesBloc,
    NewsBloc? newsBloc,
    ThemeCubit? themeCubit,
    NotificationsCubit? notificationsCubit,
    FlutterLocalNotificationsPlugin? notificationsPlugin,
    LiveActivities? liveActivitiesPlugin,
    Workmanager? workmanager,
    TargetPlatform platform = TargetPlatform.android,
    String location = '/explore',
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
                  notificationsPlugin ?? FlutterLocalNotificationsPlugin(),
                  liveActivitiesPlugin ?? LiveActivities(),
                  workmanager ?? Workmanager(),
                ),
          )
        ],
        child: MaterialApp.router(
          themeMode: themeCubit?.state.themeMode,
          theme: ThemeData().copyWith(platform: platform),
          darkTheme: ThemeData.dark().copyWith(platform: platform),
          routerConfig: createRouter(initialLocation: location),
        ),
      ),
    );
  }
}
