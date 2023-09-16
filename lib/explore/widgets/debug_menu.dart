// ignore_for_file: lines_longer_than_80_chars

// Dart imports:
import 'dart:developer';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:live_activities/live_activities.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/explore/explore.dart';
import 'package:starcat/notifications/notifications.dart';
import 'package:starcat/shared/section.dart';

class DebugMenu extends StatefulWidget {
  const DebugMenu({super.key});

  @override
  State<DebugMenu> createState() => _DebugMenuState();
}

class _DebugMenuState extends State<DebugMenu> {
  @override
  Widget build(BuildContext context) {
    final trackedLaunches =
        context.watch<NotificationsCubit>().state.trackedLaunches;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Section(
          icon: Icon(Icons.bug_report_rounded),
          child: Text('Debug Menu'),
        ),
        ExploreCard(
          title: const Text('Tracked launches'),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              for (final launch in trackedLaunches)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(launch.launchData.name),
                    ),
                    const SizedBox(width: 10),
                    Text('ID: ${launch.launchData.id.hashCode}'),
                  ],
                ),
              FilledButton.tonal(
                onPressed: () =>
                    _clearTrackedLaunches(context, trackedLaunches),
                child: const Text('Clear tracked launches'),
              ),
            ],
          ),
        ),
        const SizedBox(height: kListSpacing),
        ExploreCard(
          title: const Text('Notifications preference'),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'areNotificationsContinuous: ${context.watch<NotificationsCubit>().state.areNotificationsContinuous}',
              ),
              Text(
                'hasNotificationsPreferenceModalBeenShown: ${context.watch<NotificationsCubit>().state.hasNotificationsPreferenceModalBeenShown}',
              ),
              FilledButton.tonal(
                onPressed: () {
                  context
                      .read<NotificationsCubit>()
                      .setIfNotificationsPreferenceModalHasBeenShown(
                        isTrue: false,
                      );
                },
                child: const Text('Unset notifications preference'),
              ),
            ],
          ),
        ),
        const SizedBox(height: kListSpacing),
        ExploreCard(
          title: const Text('Live activities'),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              FilledButton.tonal(
                onPressed: () async {
                  final liveActivitiesPlugin = LiveActivities();
                  await liveActivitiesPlugin.init(
                    appGroupId: 'group.hubertjozwiak.starcat',
                  );

                  final exampleTime = DateTime.now().add(
                    const Duration(
                      minutes: 15,
                    ),
                  );

                  await liveActivitiesPlugin.createActivity(
                    {'remainingTime': exampleTime.toIso8601String()},
                  );
                },
                child: const Text('Create activity (iOS)'),
              ),
              FilledButton.tonal(
                onPressed: () async {
                  final liveActivitiesPlugin = LiveActivities();
                  await liveActivitiesPlugin.init(
                    appGroupId: 'group.hubertjozwiak.starcat',
                  );

                  await liveActivitiesPlugin.endAllActivities();
                },
                child: const Text('End all activities (iOS)'),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _clearTrackedLaunches(
    BuildContext context,
    List<TrackedLaunch> trackedLaunches,
  ) {
    for (final launch in trackedLaunches) {
      log('Cancelling notification (id: ${launch.launchData.id.hashCode})');

      context
          .read<NotificationsCubit>()
          .cancelTrackingLaunch(launch.launchData);
    }

    log('Cleared tracked launches');
  }
}
