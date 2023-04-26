// Dart imports:
import 'dart:developer';

// Package imports:
import 'package:workmanager/workmanager.dart';

Future<void> scheduleLaunchTimeCheckTask(
  DateTime launchDate,
  String launchName,
  String launchPadName,
  Uri launchUpdateUri,
) async {
  log('registering periodic launch time check task');

  await Workmanager().registerPeriodicTask(
    'launchTimeCheck',
    'launchTimeCheck',
    frequency: const Duration(hours: 1),
    initialDelay: const Duration(seconds: 3),
    constraints: Constraints(
      networkType: NetworkType.connected,
    ),
    tag: launchName,
    inputData: <String, dynamic>{
      'launchName': launchName,
      'launchDate': launchDate.toIso8601String(),
      'launchPadName': launchPadName,
      'launchUpdateUri': launchUpdateUri.toString(),
    },
  );
}
