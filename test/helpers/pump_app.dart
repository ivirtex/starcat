// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:space_devs_repository/space_devs_repository.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';
import 'package:falcon/launch_details/launch_details.dart';
import 'package:falcon/theme/theme.dart';

extension PumpApp on WidgetTester {
  Future<void> pumpApp(
    Widget widget, {
    SpaceDevsRepository? spaceDevsRepository,
    ExploreCubit? exploreCubit,
    ThemeCubit? themeCubit,
    TargetPlatform platform = TargetPlatform.android,
  }) {
    return pumpWidget(
      RepositoryProvider.value(
        value: SpaceDevsRepository,
        child: MultiBlocProvider(
          providers: [
            BlocProvider.value(
              value: themeCubit ?? ThemeCubit(),
            ),
            BlocProvider.value(
              value: exploreCubit ??
                  ExploreCubit(spaceDevsRepository ?? SpaceDevsRepository()),
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
    SpaceDevsRepository? spaceDevsRepository,
    ExploreCubit? exploreCubit,
    ThemeCubit? themeCubit,
    TargetPlatform platform = TargetPlatform.android,
  }) {
    return pumpWidget(
      RepositoryProvider.value(
        value: SpaceDevsRepository,
        child: MultiBlocProvider(
          providers: [
            BlocProvider.value(
              value: themeCubit ?? ThemeCubit(),
            ),
            BlocProvider.value(
              value: exploreCubit ??
                  ExploreCubit(spaceDevsRepository ?? SpaceDevsRepository()),
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
      ),
    );
  }
}
