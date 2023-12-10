// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/launches/launches.dart';
import 'package:starcat/news/news.dart';
import 'package:starcat/starship/starship.dart';

class StatusIndicator extends StatelessWidget {
  const StatusIndicator({
    this.padding,
    super.key,
  });

  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    final launchesBloc = context.watch<LaunchesBloc>();
    final newsBloc = context.watch<NewsBloc>();
    final starshipBloc = context.watch<StarshipDashboardBloc>();

    var sourcesRefreshing = 0;
    if (launchesBloc.state.upcomingLaunchesStatus == LaunchesStatus.loading ||
        launchesBloc.state.pastLaunchesStatus == LaunchesStatus.loading) {
      sourcesRefreshing++;
    }

    if (newsBloc.state.status == NewsStatus.loading) {
      sourcesRefreshing++;
    }

    if (starshipBloc.state.dashboardStatus == FetchStatus.loading) {
      sourcesRefreshing++;
    }

    var refreshMessage = '';
    if (sourcesRefreshing == 1) {
      if (launchesBloc.state.upcomingLaunchesStatus == LaunchesStatus.loading ||
          launchesBloc.state.pastLaunchesStatus == LaunchesStatus.loading) {
        refreshMessage = 'Refreshing launches';
      } else if (newsBloc.state.status == NewsStatus.loading) {
        refreshMessage = 'Refreshing news';
      } else if (starshipBloc.state.dashboardStatus == FetchStatus.loading ||
          starshipBloc.state.newsStatus == FetchStatus.loading) {
        refreshMessage = 'Refreshing Starship';
      }
    } else if (sourcesRefreshing > 1) {
      refreshMessage = 'Refreshing $sourcesRefreshing sources';
    } else {
      refreshMessage = '';
    }

    return AnimatedSize(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOutCubic,
      child: AnimatedOpacity(
        opacity: sourcesRefreshing > 0 ? 1 : 0,
        duration: const Duration(milliseconds: 750),
        curve: Curves.easeOutCubic,
        child: Padding(
          padding: padding ?? kBodyPadding,
          child: Row(
            children: [
              SizedBox(
                width: 14,
                height: 14,
                child: sourcesRefreshing > 0
                    ? const CircularProgressIndicator.adaptive(strokeWidth: 2)
                    : const Icon(Icons.check_rounded, size: 16),
              ),
              const SizedBox(width: kListSpacing),
              Text(refreshMessage),
            ],
          ),
        ),
      ),
    );
  }
}
