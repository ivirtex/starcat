// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/explore/explore.dart';
import 'package:starcat/launches/launches.dart';
import 'package:starcat/news/news.dart';
import 'package:starcat/notifications/notifications.dart';
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

    if (!context
        .read<NotificationsCubit>()
        .state
        .hasNotificationsPreferenceModalBeenShown) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Future.delayed(const Duration(seconds: 1), () {
          showModalBottomSheet<void>(
            context: context,
            builder: (context) => const NotificationsPreferenceModal(),
          );
        });
      });
    }

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
          onRefresh: () async => _onRefresh(context),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                title: const Text('Explore'),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.settings_rounded),
                    onPressed: () => context.go('/settings'),
                  ),
                ],
              ),
              const Body(),
            ],
          ),
        ),
      ),
    );
  }

  void _onRefresh(BuildContext context) {
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
    // TODO(ivirtex): add animated background patterns
    return SliverPadding(
      padding: kBodyPadding,
      sliver: SliverList(
        delegate: SliverChildListDelegate.fixed(
          [
            const SizedBox(height: kListSpacing),
            AnimatedSize(
              alignment: Alignment.topCenter,
              duration: kStateChangeAnimationDuration,
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
                          SizedBox(height: kListSpacing * 2),
                          UpcomingLaunchesPlaceholder(
                            delay: Duration(milliseconds: 500),
                          ),
                        ],
                      );
                    case LaunchesStatus.failure:
                    case LaunchesStatus.success:
                      return Column(
                        children: [
                          NextLaunchCard(
                            launch: state.upcomingLaunches.isNotEmpty
                                ? state.upcomingLaunches.first
                                : null,
                          ),
                          const SizedBox(height: kListSpacing * 2),
                          UpcomingLaunches(launches: state.upcomingLaunches),
                        ]
                            .animate(interval: kListAnimationIntervalDuration)
                            .fadeIn(duration: kStateChangeAnimationDuration),
                      );
                  }
                },
              ),
            ),
            const SizedBox(height: kListSpacing * 2),
            if (kDebugMode) ...[
              const DebugMenu(),
              const SizedBox(height: kListSpacing * 2)
            ],
            AnimatedSize(
              alignment: Alignment.topCenter,
              duration: kStateChangeAnimationDuration,
              curve: Curves.easeInOut,
              child: BlocConsumer<NewsBloc, NewsState>(
                listener: _listenForNewsStateUpdates,
                builder: (context, state) {
                  switch (state.status) {
                    case NewsStatus.initial:
                    case NewsStatus.loading:
                      return const ArticlesPreviewPlaceholder(
                        delay: Duration(milliseconds: 1000),
                      );
                    case NewsStatus.failure:
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

  void _listenForLaunchesStateUpdates(
    BuildContext context,
    LaunchesState state,
  ) {
    switch (state.status) {
      case LaunchesStatus.initial:
      case LaunchesStatus.loading:
      case LaunchesStatus.success:
        break;
      case LaunchesStatus.failure:
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Theme.of(context).colorScheme.errorContainer,
            content: Text(
              kLaunchesUpdateErrorText,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onErrorContainer,
              ),
            ),
          ),
        );
        break;
    }
  }

  void _listenForNewsStateUpdates(
    BuildContext context,
    NewsState state,
  ) {
    if (state.status == NewsStatus.failure) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Theme.of(context).colorScheme.errorContainer,
          content: Text(
            kNewsUpdateErrorText,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onErrorContainer,
            ),
          ),
        ),
      );
    }
  }
}
