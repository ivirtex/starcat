// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex_info_repository/spacex_info_repository.dart';

// Project imports:
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
          switch (state.status) {
            case ExploreStatus.initial:
            case ExploreStatus.loading:
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            case ExploreStatus.failure:
              return const ExploreCard(
                child: Text('Something went wrong'),
              );
            case ExploreStatus.success:
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NextLaunchCard(launch: state.launches!.results!.first),
                  const SizedBox(height: 10),
                  const Section(name: 'Upcoming Launches'),
                  UpcomingLaunches(launches: state.launches!),
                ],
              );
          }
        },
      ),
    ).animate(key: UniqueKey()).fadeIn(duration: 1000.ms, curve: Curves.ease);
  }
}
