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
    return Padding(
      padding: kBodyPadding,
      child: BlocBuilder<StarshipDashboardBloc, StarshipDashboardState>(
        builder: (context, state) {
          switch (state.dashboardStatus) {
            case FetchStatus.initial:
            case FetchStatus.loading:
              return const Column(
                children: [
                  SizedBox(height: kListSpacing),
                  LaunchesPlaceholder(
                    title: 'Upcoming Launches',
                    icon: Icons.schedule_rounded,
                  ),
                  // TODO(ivirtex): broken on API side
                  // SizedBox(height: kSectionSpacing),
                  // RoadClosurePlaceholder(
                  //   delay: Duration(milliseconds: 500),
                  // ),
                  // SizedBox(height: kSectionSpacing),
                  // NoticesPlaceholder(
                  //   delay: Duration(milliseconds: 500 * 2),
                  // ),
                  SizedBox(height: kSectionSpacing),
                  NewsPlaceholder(
                    delay: Duration(milliseconds: 500 * 2),
                  ),
                  UpdatesPlaceholder(
                    delay: Duration(milliseconds: 500 * 3),
                  ),
                  SizedBox(height: kSectionSpacing),
                  OrbitersPlaceholder(
                    delay: Duration(milliseconds: 500 * 4),
                  ),
                  SizedBox(height: kSectionSpacing),
                  VehiclesPlaceholder(
                    delay: Duration(milliseconds: 500 * 5),
                  ),
                  SizedBox(height: kSectionSpacing),
                ],
              );
            case FetchStatus.failure:
            case FetchStatus.success:
              return Column(
                children: [
                  const SizedBox(height: kListSpacing),
                  Launches(
                    title: 'Upcoming Launches',
                    icon: Icons.schedule_rounded,
                    launches: state.dashboard?.upcoming?.launches ?? [],
                  ),
                  // TODO(ivirtex): broken on API side
                  // const SizedBox(height: kSectionSpacing),
                  // RoadClosures(
                  //   roadClosures: state.dashboard?.roadClosures ?? [],
                  // ),
                  // const SizedBox(height: kSectionSpacing),
                  // Notices(notices: state.dashboard?.notices ?? []),
                  const SizedBox(height: kSectionSpacing),
                  News(news: state.news),
                  const SizedBox(height: kSectionSpacing),
                  Updates(updates: state.dashboard?.updates ?? []),
                  const SizedBox(height: kSectionSpacing),
                  Orbiters(orbiters: state.dashboard?.orbiters ?? []),
                  const SizedBox(height: kSectionSpacing),
                  Vehicles(vehicles: state.dashboard?.vehicles ?? []),
                  const SizedBox(height: kSectionSpacing),
                  Launches(
                    title: 'Previous Launches',
                    icon: Icons.history_rounded,
                    launches: state.dashboard?.previous?.launches ?? [],
                  ),
                  const SizedBox(height: kListSpacing),
                ]
                    .animate(interval: kListAnimationIntervalDuration)
                    .fadeIn(duration: kStateChangeAnimationDuration),
              );
          }
        },
      ),
    );
  }
}
