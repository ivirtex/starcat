// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sliver_tools/sliver_tools.dart';

// Project imports:
import 'package:starcat/constants.dart';
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
        onRefresh: () async => context
            .read<StarshipDashboardBloc>()
            .add(const StarshipDashboardRequested()),
        edgeOffset: kRefreshEdgeOffset,
        child: const CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              title: Text('Starship'),
            ),
            _Body(),
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
    return SliverPadding(
      padding: kBodyPadding,
      sliver: MultiSliver(
        children: [
          SliverList.list(
            children: [
              BlocBuilder<StarshipDashboardBloc, StarshipDashboardState>(
                builder: (context, state) {
                  switch (state.status) {
                    case StarshipDashboardStatus.initial:
                    case StarshipDashboardStatus.loading:
                      return const Center(
                        child: CircularProgressIndicator.adaptive(),
                      );
                    case StarshipDashboardStatus.success:
                      return Column(
                        children: [
                          const SizedBox(height: kListSpacing),
                          RoadClosures(
                            roadClosures: state.dashboard!.roadClosures,
                          ),
                          const SizedBox(height: kSectionSpacing),
                          Notices(notices: state.dashboard!.notices),
                          const SizedBox(height: kSectionSpacing),
                          Updates(updates: state.dashboard!.updates),
                          const SizedBox(height: kSectionSpacing),
                          Orbiters(orbiters: state.dashboard!.orbiters),
                          const SizedBox(height: kSectionSpacing),
                          Vehicles(vehicles: state.dashboard!.vehicles),
                          const SizedBox(height: kSectionSpacing),
                          Launches(
                            title: 'Upcoming Launches',
                            icon: Icons.schedule_rounded,
                            launches: state.dashboard!.upcoming!.launches,
                          ),
                          const SizedBox(height: kSectionSpacing),
                          Launches(
                            title: 'Previous Launches',
                            icon: Icons.history_rounded,
                            launches: state.dashboard!.previous!.launches,
                          ),
                          const SizedBox(height: kListSpacing),
                        ],
                      );
                    case StarshipDashboardStatus.failure:
                      return const Center(
                        child: Text('Something went wrong'),
                      );
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
