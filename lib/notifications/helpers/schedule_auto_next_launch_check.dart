// Package imports:
import 'package:workmanager/workmanager.dart';

const String _upcomingLaunchCheckTaskName = 'autoNextLaunchCheck';

Future<void> scheduleAutoNextLaunchCheck({
  required Duration checkFrequency,
  String? currentUpcomingLaunchUrl,
  DateTime? launchDate,
}) async {
  assert(
    launchDate == launchDate?.toLocal(),
    'launchDate must be in local time',
  );

  await Workmanager().registerPeriodicTask(
    _upcomingLaunchCheckTaskName,
    _upcomingLaunchCheckTaskName,
    frequency: checkFrequency,
    initialDelay: const Duration(seconds: 5),
    constraints: Constraints(
      networkType: NetworkType.connected,
    ),
    existingWorkPolicy: ExistingWorkPolicy.replace,
    inputData: <String, dynamic>{
      'currentUpcomingLaunchUrl': currentUpcomingLaunchUrl ?? '',
      'launchDate': launchDate?.toIso8601String() ?? '',
      'currentCheckFrequency': checkFrequency.inSeconds,
    },
  );
}

Future<void> cancelAutoNextLaunchCheck() async {
  await Workmanager().cancelByUniqueName(_upcomingLaunchCheckTaskName);
}
