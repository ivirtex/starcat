// ignore_for_file: lines_longer_than_80_chars

// Dart imports:
import 'dart:developer';
import 'dart:io';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:live_activities/live_activities.dart';
import 'package:path_provider/path_provider.dart';
import 'package:workmanager/workmanager.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/explore/explore.dart';
import 'package:starcat/notifications/notifications.dart';
import 'package:starcat/shared/filled_card.dart';
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
    final activeNotifications =
        FlutterLocalNotificationsPlugin().pendingNotificationRequests();

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
                      child: Text(launch.name),
                    ),
                    const SizedBox(width: 10),
                    Text('ID: ${launch.id.hashCode}'),
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
          title: const Text('Pending notifications'),
          child: FutureBuilder(
            future: activeNotifications,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final notifications = snapshot.data!;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    for (final notification in notifications)
                      FilledCard(
                        margin: const EdgeInsets.only(bottom: kListSpacing),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                children: [
                                  Flexible(
                                    child: Text(
                                      notification.title ?? 'No title',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Text('ID: ${notification.id}'),
                                ],
                              ),
                              Text(notification.body ?? 'No body'),
                            ],
                          ),
                        ),
                      ),
                    FilledButton.tonal(
                      onPressed: () {
                        setState(() {
                          FlutterLocalNotificationsPlugin().cancelAll();
                        });
                      },
                      child: const Text('Clear notifications'),
                    ),
                  ],
                );
              } else {
                return const Center(child: Text('Loading...'));
              }
            },
          ),
        ),
        const SizedBox(height: kListSpacing),
        ExploreCard(
          title: const Text('Background tasks'),
          child: FilledButton.tonal(
            onPressed: () {
              setState(() {
                Workmanager().cancelAll();
              });
            },
            child: const Text('Cancel all background tasks'),
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
          title: const Text('Workmanager logs'),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              FilledButton.tonal(
                onPressed: () async {
                  final directory = await getApplicationDocumentsDirectory();
                  final logFile = File('${directory.path}/logs.txt');

                  final logs = await logFile.readAsString();

                  // ignore: use_build_context_synchronously
                  await showModalBottomSheet<void>(
                    context: context,
                    builder: (context) {
                      return Container(
                        padding: const EdgeInsets.all(10),
                        child: SingleChildScrollView(
                          child: Text(logs),
                        ),
                      );
                    },
                  );
                },
                child: const Text('Read logs'),
              ),
              FilledButton.tonal(
                onPressed: () async {
                  final directory = await getApplicationDocumentsDirectory();
                  final logFile = File('${directory.path}/logs.txt');

                  await logFile.writeAsString('');
                },
                child: const Text('Clear logs'),
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
        )
      ],
    );
  }

  void _clearTrackedLaunches(
    BuildContext context,
    List<Launch> trackedLaunches,
  ) {
    Workmanager().cancelAll();

    for (final launch in trackedLaunches) {
      log('Cancelling notification (id: ${launch.id.hashCode})');

      context.read<NotificationsCubit>().cancelTrackingLaunch(launch);
    }

    log('Cleared tracked launches');
  }
}
