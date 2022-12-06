// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:intl/intl.dart';
import 'package:spacex_info_repository/spacex_info_repository.dart';
import 'package:timezone/timezone.dart' as tz;

// Project imports:
import 'package:falcon/explore/explore.dart';
import 'package:falcon/shared/shared.dart';

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
    String? localMMMd;
    String? localEEEE;
    String? localHm;

    String? utcTime;

    if (date != null) {
      localMMMd = DateFormat.MMMd().format(date!.toLocal());
      localEEEE = DateFormat.EEEE().format(date!.toLocal());
      localHm = DateFormat.Hm().format(date!.toLocal());

      utcTime = DateFormat.Hm().format(date!.toUtc());
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
          Text(
            localMMMd ?? 'N/A',
            style: const TextStyle(
              color: Colors.red,
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
                  style: TextStyle(color: Colors.grey.shade600),
                )
              else
                Text(
                  'N/A',
                  style: TextStyle(color: Colors.grey.shade600),
                ),
            ],
          ),
          const Spacer(),
          ThemedButton(
            onPressed: date != null ? onNotifyMePressed : null,
            child: const Text('Notify me'),
          ),
        ],
      ),
    );
  }

  Future<void> onNotifyMePressed() async {
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

    const androidNotificationDetails = AndroidNotificationDetails(
      'your channel id',
      'your channel name',
      channelDescription: 'your channel description',
      visibility: NotificationVisibility.public,
    );
    const notificationDetails =
        NotificationDetails(android: androidNotificationDetails);

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
