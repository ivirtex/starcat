// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:starcat/explore/explore.dart';
import 'package:starcat/shared/shared.dart';

class LaunchesList extends StatelessWidget {
  const LaunchesList({
    required this.launches,
    super.key,
  });

  final List<Launch> launches;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: launches.length,
        (context, index) {
          final launch = launches[index];

          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: ExploreCard(
              title: const Text('Status'),
              trailing: LaunchStatus(launch.status),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    launch.name,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    launch.mission.description?.split('.').first ?? '',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.outline,
                        ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
