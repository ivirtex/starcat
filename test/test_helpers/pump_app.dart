// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:live_activities/live_activities.dart';
import 'package:mockito/mockito.dart';
import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';

// Project imports:
import 'package:starcat/app/app.dart';
import 'package:starcat/launches/launches.dart';
import 'package:starcat/news/news.dart';
import 'package:starcat/notifications/cubit/cubit.dart';
import 'package:starcat/starship/bloc/bloc.dart';
import 'package:starcat/theme/theme.dart';
import 'test_helpers.dart';

class FirebaseMessagingMock extends Mock implements FirebaseMessaging {}

extension PumpApp on WidgetTester {
  Future<void> pumpApp(
    Widget widget, {
    LaunchLibraryRepository? launchLibraryRepository,
    SpaceflightNewsRepository? spaceflightNewsRepository,
    LaunchesBloc? launchesBloc,
    NewsBloc? newsBloc,
    StarshipDashboardBloc? starshipDashboardBloc,
    ThemeCubit? themeCubit,
    NotificationsCubit? notificationsCubit,
    FirebaseMessaging? firebaseMessagingInstance,
    LiveActivities? liveActivitiesPlugin,
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
            create: (context) =>
                starshipDashboardBloc ??
                StarshipDashboardBloc(
                  launchLibraryRepository ?? LaunchLibraryRepository(),
                ),
          ),
          BlocProvider.value(
            value: notificationsCubit ??
                NotificationsCubit(
                  firebaseMessagingInstance ?? FirebaseMessagingMock(),
                  liveActivitiesPlugin ?? LiveActivities(),
                ),
          ),
        ],
        child: MaterialApp(
          themeMode: themeCubit?.state.themeMode,
          theme: ThemeData().copyWith(platform: platform),
          darkTheme: ThemeData.dark().copyWith(platform: platform),
          home: Scaffold(body: widget),
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
    FirebaseMessaging? firebaseMessagingInstance,
    LiveActivities? liveActivitiesPlugin,
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
                  firebaseMessagingInstance ?? FirebaseMessagingMock(),
                  liveActivitiesPlugin ?? LiveActivities(),
                ),
          ),
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
