// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/explore/explore.dart';
import 'package:starcat/helpers/helpers.dart';
import 'package:starcat/launches/launches.dart';
import 'package:starcat/shared/shared.dart';

// TODO(ivirtex): add infinite scrolling
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
            padding: const EdgeInsets.only(bottom: kListSpacing),
            child: ExploreCard(
              title: const Text('Status'),
              trailing: LaunchStatus(launch.status),
              onTap: () => context.go('/launch/${launch.id}'),
              padding: EdgeInsets.zero,
              child: IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      width: 100,
                      child: MissionImage(
                        imageUrl: launch.image ?? '',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(kListSpacing),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              launch.name,
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            Text(
                              formatDate(
                                    launch.net?.toLocal(),
                                    dateFormat: DateFormat.yMd().add_jm(),
                                  ) ??
                                  'N/A',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                    color:
                                        Theme.of(context).colorScheme.outline,
                                  ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              createShortDescription(
                                    launch.mission?.description,
                                  ) ??
                                  'No description',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color:
                                        Theme.of(context).colorScheme.outline,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
