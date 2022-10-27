// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:falcon/shared/shared.dart';

class CountdownTimer extends StatelessWidget {
  const CountdownTimer({
    String? days,
    required String hours,
    required String minutes,
    required String seconds,
    String? abbrev,
    super.key,
  })  : _tMinusToLaunchDays = days,
        _tMinusToLaunchHours = hours,
        _tMinusToLaunchMinutes = minutes,
        _tMinusToLaunchSeconds = seconds,
        _launchStatusAbbrev = abbrev;

  final String? _tMinusToLaunchDays;
  final String _tMinusToLaunchHours;
  final String _tMinusToLaunchMinutes;
  final String _tMinusToLaunchSeconds;
  final String? _launchStatusAbbrev;

  @override
  Widget build(BuildContext context) {
    const numberTextStyle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18,
    );

    return Row(
      children: [
        if (_launchStatusAbbrev == 'Go') ...[
          Text(
            'T -',
            style: TextStyle(
              fontSize: 18,
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
          const SizedBox(width: 5),
          Text(
            _tMinusToLaunchHours,
            style: numberTextStyle,
          ),
          const Text('h', style: TextStyle(fontSize: 18)),
          const SizedBox(width: 5),
          Text(
            _tMinusToLaunchMinutes,
            style: numberTextStyle,
          ),
          const Text('m', style: TextStyle(fontSize: 18)),
          const SizedBox(width: 5),
          Text(
            _tMinusToLaunchSeconds,
            style: numberTextStyle,
          ),
          const Text('s', style: TextStyle(fontSize: 18)),
          const SizedBox(width: 5),
          InfoCard(
            color: Colors.greenAccent[700]!,
            icon: Icon(
              Icons.check_circle_rounded,
              color: Theme.of(context).colorScheme.secondary,
              size: 15,
            ),
            child: const Text(
              'Confirmed',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
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
            _tMinusToLaunchDays!,
            style: numberTextStyle,
          ),
          const Text('d', style: TextStyle(fontSize: 18)),
          const SizedBox(width: 5),
          Text(
            _tMinusToLaunchHours,
            style: numberTextStyle,
          ),
          const Text('h', style: TextStyle(fontSize: 18)),
          const SizedBox(width: 5),
          Text(
            _tMinusToLaunchMinutes,
            style: numberTextStyle,
          ),
          const Text('m', style: TextStyle(fontSize: 18)),
          const SizedBox(width: 5),
        ],
        if (_launchStatusAbbrev != null) ...[
          if (_launchStatusAbbrev == 'TBD')
            InfoCard(
              color: Colors.yellow[700]!,
              icon: Icon(
                Icons.warning_rounded,
                color: Theme.of(context).colorScheme.secondary,
                size: 15,
              ),
              child: const Text(
                'TBD',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          if (_launchStatusAbbrev == 'TBC')
            InfoCard(
              color: Colors.green[700]!,
              icon: Icon(
                Icons.check_circle_rounded,
                color: Theme.of(context).colorScheme.secondary,
                size: 15,
              ),
              child: const Text(
                'TBC',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
        ],
      ],
    );
  }
}
