// Package imports:
import 'package:workmanager/workmanager.dart';

String _userSpecifiedCheckTaskName = 'dev.ivirtex.starcat.userSpecifiedCheck';

Future<void> scheduleUserSpecifiedLaunchCheck({
  required DateTime launchDate,
  required Uri launchUpdateUri,
  required Workmanager workmanager,
  Duration checkFrequency = const Duration(hours: 1),
}) async {
  assert(
    launchDate == launchDate.toLocal(),
    'launchDate must be in local time',
  );

  await workmanager.registerOneOffTask(
    _userSpecifiedCheckTaskName,
    _userSpecifiedCheckTaskName,
    initialDelay: checkFrequency,
    constraints: Constraints(
      networkType: NetworkType.connected,
    ),
    existingWorkPolicy: ExistingWorkPolicy.replace,
    inputData: <String, dynamic>{
      'launchDate': launchDate.toIso8601String(),
      'launchUpdateUri': launchUpdateUri.toString(),
      'frequency': checkFrequency.inSeconds,
    },
  );
}

Future<void> cancelUserSpecifiedLaunchCheck(
  String launchName,
  Workmanager workmanager,
) async {
  await workmanager.cancelByUniqueName(launchName);
}
