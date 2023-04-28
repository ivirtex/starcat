// Dart imports:
import 'dart:developer';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:workmanager/workmanager.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/explore/explore.dart';
import 'package:starcat/launches/launches.dart';
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
    final trackedLaunches = context.watch<LaunchesBloc>().state.launchesToTrack;
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
