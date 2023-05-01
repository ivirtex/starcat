Duration getNewCheckFrequency(DateTime launchDate, DateTime now) {
  final timeUntilLaunch = launchDate.difference(now);

  if (timeUntilLaunch.inDays > 1) {
    return const Duration(hours: 6);
  } else if (timeUntilLaunch.inHours > 12) {
    return const Duration(hours: 3);
  } else if (timeUntilLaunch.inHours > 6) {
    return const Duration(hours: 2);
  } else if (timeUntilLaunch.inHours > 3) {
    return const Duration(hours: 1);
  } else if (timeUntilLaunch.inHours > 1) {
    return const Duration(minutes: 30);
  } else {
    // Minimum check frequency is 15 minutes
    return const Duration(minutes: 15);
  }
}
