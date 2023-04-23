// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:intl/intl.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:timezone/timezone.dart' as tz;

// Project imports:
import 'package:starcat/explore/explore.dart';
import 'package:starcat/helpers/helpers.dart';
import 'package:starcat/shared/shared.dart';

class LaunchDateCard extends StatelessWidget {
  const LaunchDateCard({
    super.key,
    this.date,
    this.status,
    this.launchName,
  });

  final DateTime? date;
  final Status? status;
  final String? launchName;

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
            flex: 4,
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
            ThemedButton(
              onPressed: date != null ? onNotifyMePressed : null,
              child: const Text('Notify me'),
            )
        ],
      ),
    );
  }

  Future<void> onNotifyMePressed() async {
    // TODO(ivirtex): implement notifications
    final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.requestPermission();

    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            IOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );

    const notificationDetails = NotificationDetails(
      android: AndroidNotificationDetails(
        '0',
        'dev.ivirtex.starcat.notifications',
        visibility: NotificationVisibility.public,
      ),
      iOS: DarwinNotificationDetails(),
    );

    await flutterLocalNotificationsPlugin.zonedSchedule(
      launchName.hashCode,
      launchName,
      'T-5 minutes to the launch',
      // tz.TZDateTime.from(date!.toLocal(), tz.local)
      //     .subtract(const Duration(minutes: 5)),
      tz.TZDateTime.now(tz.local).add(const Duration(seconds: 3)),
      notificationDetails,
      androidAllowWhileIdle: true,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
    );
  }
}
