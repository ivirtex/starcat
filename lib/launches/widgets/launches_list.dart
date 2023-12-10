// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:very_good_infinite_list/very_good_infinite_list.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/launches/launches.dart';

class LaunchesList extends StatelessWidget {
  const LaunchesList({
    required this.launches,
    super.key,
  });

  final List<Launch> launches;

  @override
  Widget build(BuildContext context) {
    final launchesBloc = context.read<LaunchesBloc>();
    final selectedLaunches = launchesBloc.state.selectedLaunches;

    final largeMessageStyle = Theme.of(context).textTheme.titleLarge?.copyWith(
          color: Theme.of(context).colorScheme.outline,
        );
    final smallMessageStyle = Theme.of(context).textTheme.titleSmall?.copyWith(
          color: Theme.of(context).colorScheme.outline,
        );

    switch (selectedLaunches) {
      case SelectedLaunches.upcoming:
        if (launchesBloc.state.upcomingLaunches.isEmpty) {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: Text(
                'No launches found',
                style: largeMessageStyle,
              ),
            ),
          );
        }

        return SliverInfiniteList(
          onFetchData: () {
            launchesBloc.add(
              const LaunchesNextPageRequested(type: SelectedLaunches.upcoming),
            );
          },
          debounceDuration: const Duration(milliseconds: 500),
          isLoading: launchesBloc.state.upcomingLaunchesStatus ==
              LaunchesStatus.loading,
          hasError: launchesBloc.state.upcomingLaunchesStatus ==
                  LaunchesStatus.failure ||
              launchesBloc.state.upcomingLaunchesStatus ==
                  LaunchesStatus.noMoreResults,
          hasReachedMax: launchesBloc.state.upcomingLaunchesStatus ==
              LaunchesStatus.noMoreResults,
          loadingBuilder: (context) => const Padding(
            padding: EdgeInsets.symmetric(vertical: kSectionSpacing),
            child: Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          ),
          errorBuilder: (context) {
            if (launchesBloc.state.upcomingLaunchesStatus ==
                LaunchesStatus.noMoreResults) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: kSectionSpacing),
                child: Center(
                  child: Text(
                    'No more launches available',
                    style: smallMessageStyle,
                  ),
                ),
              );
            } else {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: kSectionSpacing),
                child: Center(
                  child: Text('Something went wrong'),
                ),
              );
            }
          },
          separatorBuilder: (context, index) =>
              const SizedBox(height: kListSpacing),
          itemCount: launches.length,
          itemBuilder: (context, index) {
            final launch = launches[index];

            return LaunchCard(
              launch: launch,
              destination: '/launches/launch/${launch.id}?withHero=true',
              padding: EdgeInsets.zero,
            );
          },
        );
      case SelectedLaunches.past:
        if (launchesBloc.state.pastLaunches.isEmpty) {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: Text(
                'No launches found',
                style: largeMessageStyle,
              ),
            ),
          );
        }

        return SliverInfiniteList(
          onFetchData: () {
            launchesBloc.add(
              const LaunchesNextPageRequested(type: SelectedLaunches.past),
            );
          },
          debounceDuration: const Duration(milliseconds: 500),
          isLoading:
              launchesBloc.state.pastLaunchesStatus == LaunchesStatus.loading,
          hasError:
              launchesBloc.state.pastLaunchesStatus == LaunchesStatus.failure ||
                  launchesBloc.state.pastLaunchesStatus ==
                      LaunchesStatus.noMoreResults,
          hasReachedMax: launchesBloc.state.pastLaunchesStatus ==
              LaunchesStatus.noMoreResults,
          loadingBuilder: (context) => const Padding(
            padding: EdgeInsets.symmetric(vertical: kSectionSpacing),
            child: Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          ),
          errorBuilder: (context) {
            if (launchesBloc.state.pastLaunchesStatus ==
                LaunchesStatus.noMoreResults) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: kSectionSpacing),
                child: Center(
                  child: Text(
                    'No more launches available',
                    style: smallMessageStyle,
                  ),
                ),
              );
            } else {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: kSectionSpacing),
                child: Center(
                  child: Text('Something went wrong'),
                ),
              );
            }
          },
          separatorBuilder: (context, index) =>
              const SizedBox(height: kListSpacing),
          itemCount: launches.length,
          itemBuilder: (context, index) {
            final launch = launches[index];

            return LaunchCard(
              launch: launch,
              destination: '/launches/launch/${launch.id}?withHero=true',
              padding: EdgeInsets.zero,
            );
          },
        );
    }
  }
}
