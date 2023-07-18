// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sliver_tools/sliver_tools.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/launches/launches.dart';

class LaunchesPage extends StatelessWidget {
  const LaunchesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: Text('Launches'),
          ),
          _Body(),
        ],
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
          const SliverList(
            delegate: SliverChildListDelegate.fixed(
              [
                SizedBox(height: kListSpacing),
                LaunchesSelection(),
                SizedBox(height: kListSpacing),
              ],
            ),
          ),
          BlocBuilder<LaunchesBloc, LaunchesState>(
            builder: (context, state) {
              switch (state.selectedLaunches) {
                case SelectedLaunches.past:
                  return LaunchesList(launches: state.pastLaunches);
                case SelectedLaunches.upcoming:
                  return LaunchesList(launches: state.upcomingLaunches);
              }
            },
          )
        ],
      ),
    );
  }
}
