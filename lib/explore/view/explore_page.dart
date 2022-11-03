// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
    return PlatformWidget(
      cupertino: (context) => CupertinoPageScaffold(
        child: CustomScrollView(
          slivers: [
            const CupertinoSliverNavigationBar(
              stretch: true,
              border: null,
              largeTitle: Text('Explore'),
            ),
            SliverFillRemaining(
              child: Body(
                controller: _controller,
                animation: _animation,
              ),
            )
          ],
        ),
      ),
      material: (context) => Scaffold(
        appBar: AppBar(
          title: const Text('Explore'),
        ),
        body: Body(
          controller: _controller,
          animation: _animation,
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    required AnimationController controller,
    required Animation<double> animation,
    super.key,
  })  : _controller = controller,
        _animation = animation;

  final AnimationController _controller;
  final Animation<double> _animation;

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
              _controller.forward();

              return FadeTransition(
                opacity: _animation,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NextLaunchCard(launch: state.launches!.results!.first),
                    const SizedBox(height: 10),
                    const Section(name: 'Upcoming Launches'),
                    UpcomingLaunches(launches: state.launches!),
                  ],
                ),
              );
          }
        },
      ),
    );
  }
}
