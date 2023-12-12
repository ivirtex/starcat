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

class LaunchCard extends StatelessWidget {
  const LaunchCard({
    required this.launch,
    required this.destination,
    this.padding = const EdgeInsets.only(bottom: kListSpacing),
    super.key,
  });

  final Launch launch;
  final String destination;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: ExploreCard(
        title: const Text('Status'),
        trailing: LaunchStatus(launch.status),
        onTap: () => context.go(destination),
        padding: EdgeInsets.zero,
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                width: 100,
                child: Hero(
                  tag: launch.id,
                  child: MissionImage(
                    imageUrl: launch.image,
                    fit: BoxFit.cover,
                  ),
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
                      const SizedBox(height: 5),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: formatDate(
                                    launch.net?.toLocal(),
                                    dateFormat: DateFormat.yMMMd(),
                                  ) ??
                                  'N/A',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.tertiary,
                              ),
                            ),
                            TextSpan(
                              text: ' • ',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.outline,
                              ),
                            ),
                            TextSpan(
                              text: formatDate(
                                    launch.net?.toLocal(),
                                    dateFormat: DateFormat.Hm(),
                                  ) ??
                                  'N/A',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.outline,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        createShortDescription(
                              launch.mission?.description,
                            ) ??
                            'No description',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Theme.of(context).colorScheme.outline,
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
  }
}
