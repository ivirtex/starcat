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

class _ExploreViewState extends State<ExploreView>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 700),
    vsync: this,
  );
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  @override
  void initState() {
    context.read<ExploreCubit>().fetchLaunches(launchTime: LaunchTime.upcoming);

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
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
                _controller.forward();

                return FadeTransition(
                  opacity: _animation,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      NextLaunchCard(
                        launch: state.launches!.results!.first,
                      ),
                      const SizedBox(height: 10),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text('Upcoming Launches'),
                      ),
                      Flexible(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: state.launches!.results!.length,
                          itemBuilder: (context, index) {
                            return ConstrainedBox(
                              constraints: const BoxConstraints(
                                maxWidth: 200,
                                maxHeight: 200,
                              ),
                              child: ExploreCard(
                                title: Text(
                                  'NET: ${state.launches!.results![index].net?.toLocal().toString().replaceAll('.000', '') ?? ''}',
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      state.launches!.results![index].mission
                                              ?.name ??
                                          'No name',
                                    ),
                                    Text(
                                      state.launches!.results![index].pad
                                              ?.name ??
                                          'No pad',
                                    ),
                                    Image.network(
                                      state.launches!.results![index].image ??
                                          'No image',
                                      height: 150,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                );
            }
          },
        ),
      ),
    );
  }
}
