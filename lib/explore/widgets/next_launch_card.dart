// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:live_activities/live_activities.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/explore/explore.dart';
import 'package:starcat/helpers/helpers.dart';
import 'package:starcat/shared/shared.dart';

class NextLaunchCard extends StatelessWidget {
  const NextLaunchCard({
    required this.launch,
    super.key,
  });

  final Launch? launch;

  @override
  Widget build(BuildContext context) {
    final doesExist = launch != null;
    final launchDate = launch?.net;
    final timeLeft = launch?.net?.difference(DateTime.now());
    final launchName = launch?.name;
    final launchStatus = launch?.status;
    final description = createShortDescription(launch?.mission?.description);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Section(
          icon: Icon(Icons.rocket_launch_rounded),
          child: Text('Next Launch'),
        ),
        ExploreCard(
          title: const Text('Status'),
          trailing: LaunchStatus(launchStatus),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kBorderRadius),
          ),
          slideOut: Row(
            children: [
              Text(
                'Countdown',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const Spacer(),
              CountdownTimer(
                launchDate: launchDate,
                // TODO(ivirtex): use netPrecision instead
                mode: launchStatus?.abbrev == StatusAbbrev.go &&
                        timeLeft! < 24.hours
                    ? CountdownTimerMode.hoursMinutesSeconds
                    : CountdownTimerMode.daysHoursMinutes,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                launchName ?? 'Unknown',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: kListSpacing),
              Text(
                description ?? 'No description',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.outline,
                    ),
              ),
              const SizedBox(height: kListSpacing),
              if (timeLeft != null && timeLeft < 24.hours)
                OutlinedButton(
                  onPressed: () async {
                    final liveActivitiesPlugin = LiveActivities();
                    await liveActivitiesPlugin.init(
                      appGroupId: 'group.hubertjozwiak.starcat',
                    );

                    await liveActivitiesPlugin.createActivity(
                      {
                        'launchTimeLeft': timeLeft.inSeconds,
                        'launchName': launchName
                      },
                    );
                  },
                  child: const Text('Track using Dynamic Island'),
                ),
              ThemedButton(
                onPressed: doesExist
                    ? () => context.go('/explore/launch/${launch!.id}')
                    : null,
                child: const Text('Launch Details'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
