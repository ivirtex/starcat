// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:intl/intl.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:starcat/explore/explore.dart';
import 'package:starcat/helpers/helpers.dart';
import 'package:starcat/notifications/notifications.dart';
import 'package:starcat/shared/shared.dart';

class LaunchDateCard extends StatelessWidget {
  const LaunchDateCard({
    super.key,
    this.date,
    this.status,
    this.launchName,
    this.optionalFailReason,
    this.launchDataForNotifications,
  });

  final DateTime? date;
  final Status? status;
  final String? launchName;
  final String? optionalFailReason;

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
      localHm = formatDate(date?.toLocal(), dateFormat: DateFormat.Hm());
      utcTime = formatDate(date?.toUtc(), dateFormat: DateFormat.Hm());
    }

    return ExploreCard(
      trailing: LaunchStatus(status),
      title: const Row(
        children: [
          Icon(Icons.calendar_month_rounded, size: 14),
          SizedBox(width: 5),
          Text('Launch Date'),
        ],
      ),
      slideOutColor: Theme.of(context).colorScheme.errorContainer,
      slideOut: optionalFailReason != null && optionalFailReason!.isNotEmpty
          ? Text(
              optionalFailReason!,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onErrorContainer,
              ),
            )
          : null,
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Text(
                  localMMMd ?? 'N/A',
                  style: isCupertino(context)
                      ? CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                            fontSize: 18,
                          )
                      : TextStyle(
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
                        style: isCupertino(context)
                            ? CupertinoTheme.of(context).textTheme.textStyle
                            : Theme.of(context).textTheme.labelLarge,
                      )
                    else
                      Text(
                        'N/A',
                        style: isCupertino(context)
                            ? CupertinoTheme.of(context).textTheme.textStyle
                            : Theme.of(context).textTheme.labelLarge,
                      ),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          if (launchDataForNotifications != null)
            NotifyAboutLaunchButton(
              launch: launchDataForNotifications!,
              isUpcoming: isUpcoming,
            ),
        ],
      ),
    );
  }
}
