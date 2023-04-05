// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:falcon/constants.dart';
import 'package:falcon/explore/explore.dart';
import 'package:falcon/launches/launches.dart';
import 'package:falcon/news/news.dart';
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
    context
        .read<LaunchesBloc>()
        .add(const LaunchesRequested(launchTime: LaunchTime.upcoming));
    context.read<NewsBloc>().add(const NewsFetchRequested());

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
      padding: kBodyPadding,
      child: ListView(
        children: [
          const SizedBox(height: 10),
          BlocBuilder<LaunchesBloc, LaunchesState>(
            builder: (context, state) {
              switch (state.status) {
                case LaunchesStatus.initial:
                case LaunchesStatus.loading:
                  return _buildLoader(context);
                case LaunchesStatus.failure:
                  return _buildError(context);
                case LaunchesStatus.success:
                  return Column(
                    children: [
                      NextLaunchCard(launch: state.launches.first),
                      const SizedBox(height: 20),
                      UpcomingLaunches(launches: state.launches),
                    ],
                  );
              }
            },
          ),
          const SizedBox(height: 20),
          BlocBuilder<NewsBloc, NewsState>(
            builder: (context, state) {
              switch (state.status) {
                case NewsStatus.initial:
                case NewsStatus.loading:
                  return _buildLoader(context);
                case NewsStatus.failure:
                  return _buildError(context);
                case NewsStatus.success:
                  return Articles(articles: state.news.articles);
              }
            },
          ),
        ],
      ).animate(delay: kStateChangeAnimationDuration).fadeIn(),
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
}
