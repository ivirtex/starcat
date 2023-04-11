// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:clock/clock.dart';
import 'package:google_fonts/google_fonts.dart';

enum CountdownTimerMode {
  daysHoursMinutes,
  hoursMinutesSeconds,
}

class CountdownTimer extends StatefulWidget {
  const CountdownTimer({
    required this.launchDate,
    this.mode = CountdownTimerMode.daysHoursMinutes,
    this.clock = const Clock(),
    super.key,
  });

  final DateTime? launchDate;
  final CountdownTimerMode mode;
  final Clock clock;

  @override
  State<CountdownTimer> createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  late Map<String, String> _timeMap;
  bool _isNegative = false;
  Timer? _timer;

  Map<String, String> _getTimeToLaunchMap(Duration duration) {
    final days = duration.inDays;
    final hours = duration.inHours - days * 24;
    final minutes = duration.inMinutes - days * 24 * 60 - hours * 60;
    final seconds = duration.inSeconds -
        days * 24 * 60 * 60 -
        hours * 60 * 60 -
        minutes * 60;

    if (widget.mode == CountdownTimerMode.daysHoursMinutes) {
      return {
        'days': days.toString().replaceAll('-', '').padLeft(2, '0'),
        'hours': hours.toString().replaceAll('-', '').padLeft(2, '0'),
        'minutes': minutes.toString().replaceAll('-', '').padLeft(2, '0'),
      };
    } else {
      return {
        'hours': hours.toString().replaceAll('-', '').padLeft(2, '0'),
        'minutes': minutes.toString().replaceAll('-', '').padLeft(2, '0'),
        'seconds': seconds.toString().replaceAll('-', '').padLeft(2, '0'),
      };
    }
  }

  void _updateLaunchTime(DateTime launchDate) {
    final localLaunchDate = launchDate.toLocal();
    final now = widget.clock.now().toLocal();

    final duration = localLaunchDate.difference(now);
    _isNegative = duration.isNegative;

    setState(() {
      _timeMap = _getTimeToLaunchMap(duration);
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
    final numberTextStyle = Theme.of(context).textTheme.titleMedium?.copyWith(
          fontFamily: GoogleFonts.firaMono().fontFamily,
          fontWeight: FontWeight.bold,
        );

    if (widget.launchDate == null) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'T -',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Theme.of(context).colorScheme.primary),
          ),
          const SizedBox(width: 5),
          Text('N/A', style: numberTextStyle),
        ],
      );
    }

    return RepaintBoundary(
      child: Row(
        children: [
          Text(
            _isNegative ? 'T +' : 'T -',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Theme.of(context).colorScheme.primary),
          ),
          const SizedBox(width: 5),
          for (final timeUnit in _timeMap.entries)
            Row(
              children: [
                for (final char in timeUnit.value.characters)
                  Card(
                    color: Theme.of(context).colorScheme.surface,
                    margin: const EdgeInsets.only(right: 2),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: Text(
                        char,
                        style: numberTextStyle,
                      ),
                    ),
                  ),
                const SizedBox(width: 2),
                Text(
                  timeUnit.key.characters.first,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                if (timeUnit.key != _timeMap.entries.last.key)
                  const SizedBox(width: 6),
              ],
            ),
        ],
      ),
    );
  }
}
