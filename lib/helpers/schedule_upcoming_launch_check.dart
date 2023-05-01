// Package imports:
import 'package:workmanager/workmanager.dart';

const String _upcomingLaunchCheckTaskName = 'upcomingLaunchCheck';

Future<void> scheduleUpcomingLaunchCheck(
  String currentUpcomingLaunchUrl,
) async {
  await Workmanager().registerPeriodicTask(
    _upcomingLaunchCheckTaskName,
    _upcomingLaunchCheckTaskName,
    frequency: const Duration(hours: 3),
    initialDelay: const Duration(seconds: 5),
    constraints: Constraints(
      networkType: NetworkType.connected,
    ),
    existingWorkPolicy: ExistingWorkPolicy.replace,
    inputData: <String, dynamic>{
      'currentUpcomingLaunchUrl': currentUpcomingLaunchUrl,
    },
  );
}

Future<void> cancelUpcomingLaunchCheck() async {
  await Workmanager().cancelByUniqueName(_upcomingLaunchCheckTaskName);
}
