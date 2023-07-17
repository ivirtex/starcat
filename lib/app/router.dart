// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

// Project imports:
import 'package:starcat/app/app.dart';
import 'package:starcat/explore/explore.dart';
import 'package:starcat/launches/launches.dart';
import 'package:starcat/news/news.dart';
import 'package:starcat/settings/settings.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/explore',
  debugLogDiagnostics: true,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navShell) {
        return AppView(navigationShell: navShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/explore',
              builder: (context, state) => const ExplorePage(),
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
                  path: 'settings',
                  builder: (context, state) => const SettingsPage(),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/launches',
              builder: (context, state) => const LaunchesPage(),
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
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/news',
              builder: (context, state) => const NewsPage(),
            ),
          ],
        ),
      ],
    ),
  ],
);
