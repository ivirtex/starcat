// Package imports:
import 'package:workmanager/workmanager.dart';

const String _autoNextLaunchCheckTaskName =
    'dev.ivirtex.starcat.autoNextLaunchCheck';

Future<void> scheduleAutoNextLaunchCheck({
  required Duration checkFrequency,
  String? currentUpcomingLaunchUrl,
  DateTime? launchDate,
}) async {
  assert(
    launchDate == launchDate?.toLocal(),
    'launchDate must be in local time',
  );

  await Workmanager().registerOneOffTask(
    _autoNextLaunchCheckTaskName,
    _autoNextLaunchCheckTaskName,
    initialDelay: checkFrequency,
    constraints: Constraints(
      networkType: NetworkType.connected,
    ),
    inputData: <String, dynamic>{
      'currentUpcomingLaunchUrl': currentUpcomingLaunchUrl ?? '',
      'launchDate': launchDate?.toIso8601String() ?? '',
      'currentCheckFrequency': checkFrequency.inSeconds,
    },
  );
}

Future<void> cancelAutoNextLaunchCheck() async {
  await Workmanager().cancelByUniqueName(_autoNextLaunchCheckTaskName);
}
