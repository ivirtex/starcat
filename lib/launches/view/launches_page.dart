// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sliver_tools/sliver_tools.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/launches/launches.dart';

class LaunchesPage extends StatefulWidget {
  const LaunchesPage({super.key});

  @override
  State<LaunchesPage> createState() => _LaunchesPageState();
}

class _LaunchesPageState extends State<LaunchesPage> {
  final scrollController = ScrollController();

  bool shouldShowFab = false;

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if (scrollController.offset > 0) {
        if (!shouldShowFab) {
          setState(() => shouldShowFab = true);
        }
      } else {
        if (shouldShowFab) {
          setState(() => shouldShowFab = false);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: shouldShowFab
          ? FloatingActionButton(
              onPressed: () => scrollController.animateTo(
                0,
                duration: const Duration(seconds: 1),
                curve: Curves.easeInOut,
              ),
              child: const Icon(Icons.arrow_upward_rounded),
            )
          : null,
      body: CustomScrollView(
        controller: scrollController,
        slivers: const [
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
          ),
        ],
      ),
    );
  }
}
