// Package imports:
import 'package:workmanager/workmanager.dart';

Future<void> scheduleUpcomingLaunchCheck(
  String currentUpcomingLaunchUrl,
) async {
  await Workmanager().registerPeriodicTask(
    'upcomingLaunchCheck',
    'upcomingLaunchCheck',
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
