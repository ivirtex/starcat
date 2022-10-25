// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex_info_repository/spacex_info_repository.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ExploreCubit(context.read<SpaceXInfoRepository>()),
      child: const ExploreView(),
    );
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
    super.initState();

    context.read<ExploreCubit>().fetchLaunches(launchTime: LaunchTime.upcoming);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: BlocBuilder<ExploreCubit, ExploreState>(
          builder: (context, state) {
            switch (state.status) {
              case ExploreStatus.initial:
              case ExploreStatus.loading:
                return const Center(
                  child: CircularProgressIndicator(),
                );
              case ExploreStatus.failure:
                return const ExploreCard(
                  child: Text('Something went wrong'),
                );
              case ExploreStatus.success:
                return Column(
                  children: [
                    NextLaunchCard(
                      launch: state.launches!.results!.first,
                    ),
                  ],
                );
            }
          },
        ),
      ),
    );
  }
}
