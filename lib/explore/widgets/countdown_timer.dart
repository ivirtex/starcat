// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:clock/clock.dart';

enum CountdownTimerMode {
  daysHoursMinutes,
  hoursMinutesSeconds,
}

class CountdownTimer extends StatefulWidget {
  const CountdownTimer({
    this.mode = CountdownTimerMode.daysHoursMinutes,
    required this.launchDate,
    this.clock = const Clock(),
    super.key,
  });

  final CountdownTimerMode mode;
  final DateTime? launchDate;
  final Clock clock;

  @override
  State<CountdownTimer> createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  late String _tMinusToLaunchDays;
  late String _tMinusToLaunchHours;
  late String _tMinusToLaunchMinutes;
  late String _tMinusToLaunchSeconds;
  bool _isNegative = false;
  Timer? _timer;

  void _updateLaunchTime(DateTime launchDate) {
    final localLaunchDate = launchDate.toLocal();
    final now = widget.clock.now().toLocal();

    final duration = localLaunchDate.difference(now);
    _isNegative = duration.isNegative;

    final days = duration.inDays;
    final hours = duration.inHours - (days * 24);
    final minutes = duration.inMinutes - (days * 24 * 60) - (hours * 60);
    final seconds = duration.inSeconds -
        (days * 24 * 60 * 60) -
        (hours * 60 * 60) -
        (minutes * 60);

    setState(() {
      _tMinusToLaunchDays = days.toString().replaceAll('-', '').padLeft(2, '0');
      _tMinusToLaunchHours =
          hours.toString().replaceAll('-', '').padLeft(2, '0');
      _tMinusToLaunchMinutes =
          minutes.toString().replaceAll('-', '').padLeft(2, '0');
      _tMinusToLaunchSeconds =
          seconds.toString().replaceAll('-', '').padLeft(2, '0');
    });
  }

  @override
  void initState() {
    super.initState();

    if (widget.launchDate != null) {
      _updateLaunchTime(widget.launchDate!);
      _timer = Timer.periodic(
        const Duration(seconds: 1),
        (_) => _updateLaunchTime(widget.launchDate!),
      );
    }
  }

  @override
  void dispose() {
    super.dispose();

    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    const numberTextStyle = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    );

    if (widget.launchDate == null) {
      return Row(
        children: [
          Text(
            'T -',
            style: TextStyle(
              fontSize: 18,
              color: Theme.of(context).platform == TargetPlatform.iOS
                  ? CupertinoColors.systemRed.resolveFrom(context)
                  : Colors.red,
            ),
          ),
          const SizedBox(width: 5),
          const Text('N/A', style: numberTextStyle),
        ],
      );
    }

    return RepaintBoundary(
      child: Row(
        children: [
          if (widget.mode == CountdownTimerMode.hoursMinutesSeconds) ...[
            Text(
              _isNegative ? 'T +' : 'T -',
              style: TextStyle(
                fontSize: 18,
                color: Theme.of(context).platform == TargetPlatform.iOS
                    ? CupertinoColors.systemRed.resolveFrom(context)
                    : Colors.red,
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
          ] else ...[
            Text(
              _isNegative ? 'T +' : 'T -',
              style: TextStyle(
                fontSize: 18,
                color: Theme.of(context).platform == TargetPlatform.iOS
                    ? CupertinoColors.systemRed.resolveFrom(context)
                    : Colors.red,
              ),
            ),
            const SizedBox(width: 5),
            Text(
              _tMinusToLaunchDays,
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
          ],
        ],
      ),
    );
  }
}
