// Dart imports:
import 'dart:developer';

// Package imports:
import 'package:workmanager/workmanager.dart';

String _launchTimeCheckTaskName = 'launchTimeCheck';

Future<void> scheduleLaunchTimeCheckTask(
  DateTime launchDate,
  String launchName,
  String launchPadName,
  Uri launchUpdateUri,
) async {
  log('registering periodic launch time check task');

  await Workmanager().registerPeriodicTask(
    _launchTimeCheckTaskName,
    _launchTimeCheckTaskName,
    frequency: const Duration(hours: 1),
    initialDelay: const Duration(seconds: 3),
    constraints: Constraints(
      networkType: NetworkType.connected,
    ),
    inputData: <String, dynamic>{
      'launchName': launchName,
      'launchDate': launchDate.toIso8601String(),
      'launchPadName': launchPadName,
      'launchUpdateUri': launchUpdateUri.toString(),
    },
  );
}

Future<void> cancelLaunchTimeCheckTask() async {
  await Workmanager().cancelByUniqueName(_launchTimeCheckTaskName);
}
