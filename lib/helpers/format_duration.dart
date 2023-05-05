String formatDuration(Duration duration) {
  String twoDigits(int n) => n.toString().padLeft(2, '0');

  final twoDigitsDays = twoDigits(duration.inDays);
  final twoDigitsHours = twoDigits(duration.inHours.remainder(24));
  final twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));

  return '${twoDigitsDays}d:${twoDigitsHours}h:${twoDigitMinutes}m';
}
