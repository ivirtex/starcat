// Dart imports:
import 'dart:developer';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:starcat/explore/explore.dart';
import 'package:starcat/helpers/helpers.dart';
import 'package:starcat/launches/launches.dart';
import 'package:starcat/shared/shared.dart';

class LaunchDateCard extends StatelessWidget {
  const LaunchDateCard({
    super.key,
    this.date,
    this.status,
    this.launchName,
    this.launchDataForNotifications,
  });

  final DateTime? date;
  final Status? status;
  final String? launchName;

  final Launch? launchDataForNotifications;

  @override
  Widget build(BuildContext context) {
    var isUpcoming = false;

    String? localMMMd;
    String? localEEEE;
    String? localHm;
    String? utcTime;

    if (date != null) {
      isUpcoming = date!.isAfter(DateTime.now());

      localMMMd = formatDate(date, dateFormat: DateFormat.MMMd());
      localEEEE = formatDate(date, dateFormat: DateFormat.EEEE());
      localHm = formatDate(date, dateFormat: DateFormat.Hm());
      utcTime = formatDate(date?.toUtc(), dateFormat: DateFormat.Hm());
    }

    return ExploreCard(
      trailing: LaunchStatus(status),
      title: Row(
        children: const [
          Icon(Icons.calendar_month_rounded, size: 14),
          SizedBox(width: 5),
          Text('Launch Date'),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Text(
                  localMMMd ?? 'N/A',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.tertiary,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(localEEEE ?? 'N/A'),
                    if (localHm != null)
                      Text(
                        '$localHm ($utcTime UTC)',
                        style: Theme.of(context).textTheme.labelLarge,
                      )
                    else
                      Text(
                        'N/A',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          if (isUpcoming)
            BlocBuilder<LaunchesBloc, LaunchesState>(
              builder: (context, state) {
                if (state.launchesToTrack
                    .contains(launchDataForNotifications)) {
                  return ThemedButton(
                    child: Row(
                      children: const [
                        Text('Notify me'),
                        SizedBox(width: 5),
                        Icon(Icons.check_circle_rounded),
                      ],
                    ),
                  );
                } else {
                  return ThemedButton(
                    onPressed:
                        date != null ? () => onNotifyMePressed(context) : null,
                    child: const Text('Notify me'),
                  );
                }
              },
            )
        ],
      ),
    );
  }

  Future<void> onNotifyMePressed(BuildContext context) async {
    log('onNotifyMePressed');

    context
        .read<LaunchesBloc>()
        .add(LaunchesToTrackAdded(launch: launchDataForNotifications!));
  }
}
