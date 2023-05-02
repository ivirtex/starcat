// Package imports:
import 'package:logger/logger.dart';
import 'package:workmanager/workmanager.dart';

String _launchTimeCheckTaskName = 'launchTimeCheck';

Future<void> scheduleLaunchTimeCheckTask(
  DateTime launchDate,
  Uri launchUpdateUri,
  Workmanager workmanager, {
  Duration? checkFrequency = const Duration(hours: 1),
}) async {
  Logger()
      .i('scheduling launch time check task with frequency $checkFrequency');

  await workmanager.registerPeriodicTask(
    launchUpdateUri.toString(),
    _launchTimeCheckTaskName,
    frequency: checkFrequency,
    initialDelay: const Duration(seconds: 3),
    constraints: Constraints(
      networkType: NetworkType.connected,
    ),
    existingWorkPolicy: ExistingWorkPolicy.replace,
    inputData: <String, dynamic>{
      'launchDate': launchDate.toIso8601String(),
      'launchUpdateUri': launchUpdateUri.toString(),
      'frequency': checkFrequency!.inSeconds,
    },
  );
}

Future<void> cancelLaunchTimeCheckTask(
  String launchName,
  Workmanager workmanager,
) async {
  await workmanager.cancelByUniqueName(launchName);
}