// Package imports:
import 'package:hive_flutter/hive_flutter.dart';
import 'package:workmanager/workmanager.dart';

const String _autoNextLaunchCheckTaskName =
    'dev.ivirtex.starcat.autoNextLaunchCheck';

Future<void> scheduleAutoNextLaunchCheck({
  required Duration checkFrequency,
  required Workmanager workmanagerInstance,
  String? currentUpcomingLaunchUrl,
  DateTime? launchDate,
}) async {
  assert(
    launchDate == launchDate?.toLocal(),
    'launchDate must be in local time',
  );

  await workmanagerInstance.registerOneOffTask(
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

  await Hive.initFlutter();
  final box = await Hive.openBox<String>('upcomingLaunch');
  await box.put('launchDate', launchDate?.toIso8601String() ?? '');
}

Future<void> cancelAutoNextLaunchCheck() async {
  await Workmanager().cancelByUniqueName(_autoNextLaunchCheckTaskName);
}
