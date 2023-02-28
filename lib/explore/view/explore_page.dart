// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_devs_repository/space_devs_repository.dart';

// Project imports:
import 'package:falcon/constants.dart';
import 'package:falcon/explore/explore.dart';
import 'package:falcon/shared/shared.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExploreView();
  }
}

class ExploreView extends StatefulWidget {
  const ExploreView({
    super.key,
  });

  @override
  State<ExploreView> createState() => _ExploreViewState();
}

class _ExploreViewState extends State<ExploreView> {
  @override
  void initState() {
    context.read<ExploreCubit>().fetchLaunches(launchTime: LaunchTime.upcoming);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PlatformWidget(
      cupertino: (context) => const CupertinoPageScaffold(
        child: CustomScrollView(
          slivers: [
            CupertinoSliverNavigationBar(
              stretch: true,
              border: null,
              largeTitle: Text('Explore'),
            ),
            SliverToBoxAdapter(
              child: Body(),
            )
          ],
        ),
      ),
      material: (context) => Scaffold(
        appBar: AppBar(
          title: const Text('Explore'),
        ),
        body: const Body(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: BlocBuilder<ExploreCubit, ExploreState>(
        builder: (context, state) {
          return AnimatedSwitcher(
            duration: kStateChangeAnimationDuration,
            child: state.status == ExploreStatus.loading ||
                    state.status == ExploreStatus.initial
                ? _buildLoader(context)
                : state.status == ExploreStatus.failure
                    ? _buildError(context)
                    : _buildSuccess(state),
          );
        },
      ),
    );
  }

  Widget _buildLoader(BuildContext context) {
    return const Center(
      key: ValueKey('loading'),
      child: CircularProgressIndicator.adaptive(),
    );
  }

  Widget _buildError(BuildContext context) {
    return const ExploreCard(
      child: Text('Something went wrong'),
    ).animate(delay: kStateChangeAnimationDuration).fadeIn();
  }

  Widget _buildSuccess(ExploreState state) {
    return Column(
      children: [
        NextLaunchCard(launch: state.launches!.results!.first),
        const SizedBox(height: 15),
        UpcomingLaunches(launches: state.launches!),
      ],
    ).animate(delay: kStateChangeAnimationDuration).fadeIn();
  }
}
