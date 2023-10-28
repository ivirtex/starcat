// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/shared/shared.dart';
import 'package:starcat/starship/starship.dart';

class StarshipPage extends StatelessWidget {
  const StarshipPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const StarshipView();
  }
}

class StarshipView extends StatelessWidget {
  const StarshipView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<StarshipDashboardBloc>()
            ..add(const StarshipDashboardRequested())
            ..add(const StarshipNewsRequested());
        },
        edgeOffset: kRefreshEdgeOffset,
        child: const CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              title: Text('Starship'),
              actions: [
                StatusIndicator(),
              ],
            ),
            SliverToBoxAdapter(
              child: _Body(),
            ),
          ],
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final dashboardBloc = context.watch<StarshipDashboardBloc>();

    final hasDashboardLoaded =
        dashboardBloc.state.dashboardStatus == FetchStatus.success ||
            dashboardBloc.state.dashboardStatus == FetchStatus.failure;
    final haveNewsLoaded =
        dashboardBloc.state.newsStatus == FetchStatus.success ||
            dashboardBloc.state.newsStatus == FetchStatus.failure;

    return Padding(
      padding: kBodyPadding,
      child: Column(
        children: [
          const SizedBox(height: kListSpacing),
          if (hasDashboardLoaded)
            Launches(
              title: 'Upcoming Launches',
              icon: Icons.schedule_rounded,
              launches: dashboardBloc.state.dashboard?.upcoming?.launches ?? [],
            ).animate().fadeIn(duration: kStateChangeAnimationDuration)
          else
            const LaunchesPlaceholder(
              title: 'Upcoming Launches',
              icon: Icons.schedule_rounded,
            ),
          const SizedBox(height: kSectionSpacing),
          if (haveNewsLoaded)
            News(news: dashboardBloc.state.news)
                .animate()
                .fadeIn(duration: kStateChangeAnimationDuration)
          else
            NewsPlaceholder(delay: 500.ms),
          const SizedBox(height: kSectionSpacing),
          if (hasDashboardLoaded)
            Updates(updates: dashboardBloc.state.dashboard?.updates ?? [])
                .animate()
                .fadeIn(duration: kStateChangeAnimationDuration)
          else
            UpdatesPlaceholder(delay: 500.ms * 2),
          const SizedBox(height: kSectionSpacing),
          if (hasDashboardLoaded)
            Orbiters(orbiters: dashboardBloc.state.dashboard?.orbiters ?? [])
                .animate()
                .fadeIn(duration: kStateChangeAnimationDuration)
          else
            OrbitersPlaceholder(delay: 500.ms * 3),
          const SizedBox(height: kSectionSpacing),
          if (hasDashboardLoaded)
            Vehicles(vehicles: dashboardBloc.state.dashboard?.vehicles ?? [])
                .animate()
                .fadeIn(duration: kStateChangeAnimationDuration)
          else
            VehiclesPlaceholder(delay: 500.ms * 4),
          const SizedBox(height: kSectionSpacing),
          if (hasDashboardLoaded)
            Launches(
              title: 'Previous Launches',
              icon: Icons.history_rounded,
              launches: dashboardBloc.state.dashboard?.previous?.launches ?? [],
            ).animate().fadeIn(duration: kStateChangeAnimationDuration)
          else
            LaunchesPlaceholder(
              title: 'Previous Launches',
              icon: Icons.history_rounded,
              delay: 500.ms * 5,
            ),
          const SizedBox(height: kListSpacing),
        ],
      ),
    );
  }
}
