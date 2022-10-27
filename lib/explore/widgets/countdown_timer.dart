// Flutter imports:
import 'package:flutter/material.dart';

enum CountdownTimerMode {
  daysHoursMinutes,
  hoursMinutesSeconds,
}

class CountdownTimer extends StatelessWidget {
  const CountdownTimer({
    this.mode = CountdownTimerMode.daysHoursMinutes,
    String? days,
    required String hours,
    required String minutes,
    required String seconds,
    super.key,
  })  : tMinusDays = days,
        tMinusHours = hours,
        tMinusMinutes = minutes,
        tMinusSeconds = seconds;

  final CountdownTimerMode mode;
  final String? tMinusDays;
  final String tMinusHours;
  final String tMinusMinutes;
  final String tMinusSeconds;

  @override
  Widget build(BuildContext context) {
    const numberTextStyle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18,
    );

    return RepaintBoundary(
      child: Row(
        children: [
          if (mode == CountdownTimerMode.hoursMinutesSeconds) ...[
            Text(
              'T -',
              style: TextStyle(
                fontSize: 18,
                color: Theme.of(context).colorScheme.tertiary,
              ),
            ),
            const SizedBox(width: 5),
            Text(
              tMinusHours,
              style: numberTextStyle,
            ),
            const Text('h', style: TextStyle(fontSize: 18)),
            const SizedBox(width: 5),
            Text(
              tMinusMinutes,
              style: numberTextStyle,
            ),
            const Text('m', style: TextStyle(fontSize: 18)),
            const SizedBox(width: 5),
            Text(
              tMinusSeconds,
              style: numberTextStyle,
            ),
            const Text('s', style: TextStyle(fontSize: 18)),
          ] else ...[
            Text(
              'T -',
              style: TextStyle(
                fontSize: 18,
                color: Theme.of(context).colorScheme.tertiary,
              ),
            ),
            const SizedBox(width: 5),
            Text(
              tMinusDays!,
              style: numberTextStyle,
            ),
            const Text('d', style: TextStyle(fontSize: 18)),
            const SizedBox(width: 5),
            Text(
              tMinusHours,
              style: numberTextStyle,
            ),
            const Text('h', style: TextStyle(fontSize: 18)),
            const SizedBox(width: 5),
            Text(
              tMinusMinutes,
              style: numberTextStyle,
            ),
            const Text('m', style: TextStyle(fontSize: 18)),
            const SizedBox(width: 5),
          ],
        ],
      ),
    );
  }
}
