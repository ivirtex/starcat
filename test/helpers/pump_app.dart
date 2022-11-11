// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:spacex_info_repository/spacex_info_repository.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';
import 'package:falcon/launch_details/launch_details.dart';
import 'package:falcon/theme/theme.dart';

extension PumpApp on WidgetTester {
  Future<void> pumpApp(
    Widget widget, {
    SpaceXInfoRepository? spaceXInfoRepository,
    ExploreCubit? exploreCubit,
    ThemeCubit? themeCubit,
    TargetPlatform platform = TargetPlatform.android,
  }) {
    return pumpWidget(
      RepositoryProvider.value(
        value: spaceXInfoRepository,
        child: MultiBlocProvider(
          providers: [
            BlocProvider.value(
              value: themeCubit ?? ThemeCubit(),
            ),
            BlocProvider.value(
              value: exploreCubit ??
                  ExploreCubit(spaceXInfoRepository ?? SpaceXInfoRepository()),
            ),
          ],
          child: MaterialApp(
            themeMode: themeCubit?.state.themeMode,
            theme: lightTheme.copyWith(platform: platform),
            darkTheme: darkTheme.copyWith(platform: platform),
            home: widget,
          ),
        ),
      ),
    );
  }

  Future<void> pumpAppWithRouter(
    Widget widget, {
    SpaceXInfoRepository? spaceXInfoRepository,
    ExploreCubit? exploreCubit,
    ThemeCubit? themeCubit,
    TargetPlatform platform = TargetPlatform.android,
  }) {
    return pumpWidget(
      RepositoryProvider.value(
        value: spaceXInfoRepository,
        child: MultiBlocProvider(
          providers: [
            BlocProvider.value(
              value: themeCubit ?? ThemeCubit(),
            ),
            BlocProvider.value(
              value: exploreCubit ??
                  ExploreCubit(spaceXInfoRepository ?? SpaceXInfoRepository()),
            ),
          ],
          child: MaterialApp.router(
            themeMode: themeCubit?.state.themeMode,
            theme: lightTheme.copyWith(platform: platform),
            darkTheme: darkTheme.copyWith(platform: platform),
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
