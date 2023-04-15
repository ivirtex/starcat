// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/explore/explore.dart';
import 'package:starcat/launches/launches.dart';
import 'package:starcat/news/news.dart';
import 'package:starcat/shared/shared.dart';

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
            Body(),
          ],
        ),
      ),
      material: (context) => Scaffold(
        body: RefreshIndicator(
          onRefresh: () async => _onPullToRefresh(context),
          child: const CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                title: Text('Explore'),
              ),
              Body(),
            ],
          ),
        ),
      ),
    );
  }

  void _onPullToRefresh(BuildContext context) {
    context
        .read<LaunchesBloc>()
        .add(const LaunchesRequested(launchTime: LaunchTime.upcoming));
    context.read<NewsBloc>().add(const NewsFetchRequested());
  }
}

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: kBodyPadding,
      sliver: SliverList(
        delegate: SliverChildListDelegate(
          [
            const SizedBox(height: 10),
            AnimatedSize(
              alignment: Alignment.topCenter,
              duration: 1.seconds,
              curve: Curves.easeInOut,
              child: BlocConsumer<LaunchesBloc, LaunchesState>(
                listener: _listenForLaunchesStateUpdates,
                builder: (context, state) {
                  switch (state.status) {
                    case LaunchesStatus.initial:
                    case LaunchesStatus.loading:
                      return Column(
                        children: const [
                          NextLaunchCardPlaceholder(),
                          SizedBox(height: 20),
                          UpcomingLaunchesPlaceholder(
                            delay: Duration(milliseconds: 500),
                          ),
                        ],
                      );
                    case LaunchesStatus.failure:
                      return _buildError(context);
                    case LaunchesStatus.success:
                      return Column(
                        children: [
                          NextLaunchCard(
                            launch: state.launches.isNotEmpty
                                ? state.launches.first
                                : null,
                          ),
                          const SizedBox(height: 20),
                          UpcomingLaunches(launches: state.launches),
                        ]
                            .animate(interval: kListAnimationIntervalDuration)
                            .fadeIn(duration: kStateChangeAnimationDuration),
                      );
                  }
                },
              ),
            ),
            const SizedBox(height: 20),
            AnimatedSize(
              alignment: Alignment.topCenter,
              duration: 1.seconds,
              curve: Curves.easeInOut,
              child: BlocBuilder<NewsBloc, NewsState>(
                builder: (context, state) {
                  switch (state.status) {
                    case NewsStatus.initial:
                    case NewsStatus.loading:
                      return const ArticlesPreviewPlaceholder(
                        delay: Duration(milliseconds: 1000),
                      );
                    case NewsStatus.failure:
                      return _buildError(context);
                    case NewsStatus.success:
                      return ArticlesPreview(
                        articles: state.news.latestArticles,
                      )
                          .animate()
                          .fadeIn(duration: kStateChangeAnimationDuration);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildError(BuildContext context) {
    return const ExploreCard(
      child: Text('Something went wrong'),
    ).animate(delay: kStateChangeAnimationDuration).fadeIn();
  }

  void _listenForLaunchesStateUpdates(
    BuildContext context,
    LaunchesState state,
  ) {
    if (state.status == LaunchesStatus.failure) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Theme.of(context).colorScheme.errorContainer,
          behavior: SnackBarBehavior.floating,
          content: const Text('Something went wrong'),
        ),
      );
    }

    if (state.status == LaunchesStatus.success) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Launches updated'),
        ),
      );
    }
  }
}
