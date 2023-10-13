// ignore_for_file: lines_longer_than_80_chars

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
  final liveActivitiesPlugin = LiveActivities();

  final List<String> _activitiesIds = [];

  @override
  void initState() {
    super.initState();

    liveActivitiesPlugin.init(appGroupId: kAppGroupId);
  }

  Future<void> refreshActivities() async {
    final activities = await liveActivitiesPlugin.getAllActivitiesIds();

    setState(() {
      _activitiesIds
        ..clear()
        ..addAll(activities);
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    refreshActivities();
  }

  @override
  Widget build(BuildContext context) {
    final notificationsCubit = context.watch<NotificationsCubit>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Section(
          icon: Icon(Icons.bug_report_rounded),
          child: Text('Debug Menu'),
        ),
        ExploreCard(
          title: const Text('Tracked launch'),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                notificationsCubit.state.trackedLaunch?.launchData.name ??
                    'No tracked launch',
              ),
              const SizedBox(width: 10),
              Text(
                'ID: ${notificationsCubit.state.trackedLaunch?.launchData.id ?? 'N/A'}',
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
                'areNotificationsContinuous: ${notificationsCubit.state.areNotificationsContinuous}',
              ),
              Text(
                'hasNotificationsPreferenceModalBeenShown: ${notificationsCubit.state.hasNotificationsPreferenceModalBeenShown}',
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
              if (_activitiesIds.isNotEmpty)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    for (final id in _activitiesIds) Text('ID: $id'),
                  ],
                )
              else
                const Text('No activities active'),
              const SizedBox(height: kListSpacing),
              FilledButton.tonal(
                onPressed: () async {
                  final exampleTime = DateTime.now().add(
                    const Duration(
                      minutes: 15,
                    ),
                  );

                  await liveActivitiesPlugin.createActivity(
                    {
                      'status': 'Hold',
                      'launchTZeroDate': exampleTime.toUtc().toIso8601String(),
                      'launchName': 'CRS-21 (ISS Resupply) - SpaceX CRS-21',
                      'launchVehicle': 'Falcon 9',
                    },
                  );

                  await refreshActivities();
                },
                child: const Text('Create activity (iOS)'),
              ),
              FilledButton.tonal(
                onPressed: () async {
                  await liveActivitiesPlugin.endAllActivities();
                  await refreshActivities();
                },
                child: const Text('End all activities (iOS)'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
