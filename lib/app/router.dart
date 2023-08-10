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
import 'package:starcat/starship/starship.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

/// Primary router for the app, created as a variable so that it can be
/// reused by Flutter when rebuilding the tree.
final router = createRouter();

/// Used directly only in tests.
GoRouter createRouter({String initialLocation = '/explore'}) {
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: initialLocation,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        redirect: (_, __) => '/explore',
      ),
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
                      context.read<LaunchesBloc>().add(
                            LaunchesDetailsRequested(
                              launchId: state.pathParameters['id']!,
                            ),
                          );

                      return LaunchDetailsPage(
                        launchId: state.pathParameters['id']!,
                        withHero:
                            state.uri.queryParameters['withHero'] == 'true',
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
                path: '/launches',
                builder: (context, state) => const LaunchesPage(),
                routes: [
                  GoRoute(
                    path: 'launch/:id',
                    builder: (context, state) {
                      context.read<LaunchesBloc>().add(
                            LaunchesDetailsRequested(
                              launchId: state.pathParameters['id']!,
                            ),
                          );

                      return LaunchDetailsPage(
                        launchId: state.pathParameters['id']!,
                        withHero:
                            state.uri.queryParameters['withHero'] == 'true',
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
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/starship',
                builder: (context, state) => const StarshipPage(),
                routes: [
                  GoRoute(
                    path: 'launch/:id',
                    builder: (context, state) {
                      return StarshipLaunchDetailsPage(
                        launchId: state.pathParameters['id']!,
                        withHero:
                            state.uri.queryParameters['withHero'] == 'true',
                      );
                    },
                  ),
                  GoRoute(
                    path: 'updates',
                    builder: (context, state) {
                      final updates = context
                          .read<StarshipDashboardBloc>()
                          .state
                          .dashboard!
                          .updates;

                      return UpdatesPage(updates: updates);
                    },
                  ),
                  GoRoute(
                    path: 'orbital-vehicles',
                    builder: (context, state) {
                      final orbiters = context
                          .read<StarshipDashboardBloc>()
                          .state
                          .dashboard!
                          .orbiters;

                      return OrbitalVehiclesPage(orbiters: orbiters);
                    },
                  ),
                  GoRoute(
                    path: 'vehicles',
                    builder: (context, state) {
                      final vehicles = context
                          .read<StarshipDashboardBloc>()
                          .state
                          .dashboard!
                          .vehicles;

                      return VehiclesPage(launchers: vehicles);
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
