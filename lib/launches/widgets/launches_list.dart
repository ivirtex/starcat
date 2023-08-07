// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:very_good_infinite_list/very_good_infinite_list.dart';

// Project imports:
import 'package:starcat/launches/launches.dart';

class LaunchesList extends StatelessWidget {
  const LaunchesList({
    required this.launches,
    super.key,
  });

  final List<Launch> launches;

  @override
  Widget build(BuildContext context) {
    final selectedLaunches =
        context.read<LaunchesBloc>().state.selectedLaunches;

    return SliverInfiniteList(
      onFetchData: () {
        context
            .read<LaunchesBloc>()
            .add(LaunchesNextPageRequested(type: selectedLaunches));
      },
      isLoading:
          context.read<LaunchesBloc>().state.status == LaunchesStatus.loading,
      hasError:
          context.read<LaunchesBloc>().state.status == LaunchesStatus.failure,
      loadingBuilder: (context) => const Padding(
        padding: EdgeInsets.all(8),
        child: Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      ),
      errorBuilder: (context) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Center(
            child: Text('Something went wrong'),
          ),
        );
      },
      debounceDuration: const Duration(milliseconds: 500),
      itemCount: launches.length,
      itemBuilder: (context, index) {
        final launch = launches[index];

        return LaunchCard(launch: launch);
      },
    );
  }
}
