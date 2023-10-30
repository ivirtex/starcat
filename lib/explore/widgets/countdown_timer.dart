// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:clock/clock.dart';
import 'package:equatable/equatable.dart';
import 'package:google_fonts/google_fonts.dart';

// Project imports:
import 'package:starcat/explore/explore.dart';

enum CountdownTimerMode {
  daysHoursMinutes,
  hoursMinutesSeconds,
}

class TimeUnit {
  const TimeUnit.days(this.value) : abbrev = 'd';
  const TimeUnit.hours(this.value) : abbrev = 'h';
  const TimeUnit.minutes(this.value) : abbrev = 'm';
  const TimeUnit.seconds(this.value) : abbrev = 's';

  final String abbrev;
  final int value;

  String get valueFormatted {
    return value.toString().replaceAll('-', '').padLeft(2, '0');
  }
}

class Time extends Equatable {
  const Time({
    this.days,
    this.hours,
    this.minutes,
    this.seconds,
  });

  final TimeUnit? days;
  final TimeUnit? hours;
  final TimeUnit? minutes;
  final TimeUnit? seconds;

  @override
  List<Object?> get props => [days, hours, minutes, seconds];
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
  Time _time = const Time();
  bool _isNegative = false;
  Timer? _timer;

  Time _getTime(Duration duration) {
    final days = duration.inDays;
    final hours = duration.inHours - days * 24;
    final minutes = duration.inMinutes - days * 24 * 60 - hours * 60;
    final seconds = duration.inSeconds -
        days * 24 * 60 * 60 -
        hours * 60 * 60 -
        minutes * 60;

    switch (widget.mode) {
      case CountdownTimerMode.daysHoursMinutes:
        return Time(
          days: TimeUnit.days(days),
          hours: TimeUnit.hours(hours),
          minutes: TimeUnit.minutes(minutes),
        );
      case CountdownTimerMode.hoursMinutesSeconds:
        return Time(
          hours: TimeUnit.hours(hours),
          minutes: TimeUnit.minutes(minutes),
          seconds: TimeUnit.seconds(seconds),
        );
    }
  }

  void _updateLaunchTime(DateTime launchDate) {
    final localLaunchDate = launchDate.toLocal();
    final now = widget.clock.now().toLocal();

    final duration = localLaunchDate.difference(now);
    _isNegative = duration.isNegative;

    // TODO(ivirtex): do not rebuild every second if
    // mode is .daysHoursMinutes
    setState(() {
      _time = _getTime(duration);
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
    const abbrevPadding = EdgeInsets.only(left: 2);
    const unitSeperatorWidth = 6.0;
    final numberTextStyle = Theme.of(context).textTheme.titleMedium?.copyWith(
          fontFamily: GoogleFonts.ptMono().fontFamily,
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
                ?.copyWith(color: Theme.of(context).colorScheme.tertiary),
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
                ?.copyWith(color: Theme.of(context).colorScheme.tertiary),
          ),
          const SizedBox(width: 5),
          Row(
            children: [
              if (_time.days != null) ...[
                MonospaceNumberCard(
                  numberString: _time.days!.valueFormatted,
                  numberTextStyle: numberTextStyle!,
                ),
                Padding(
                  padding: abbrevPadding,
                  child: Text(
                    _time.days!.abbrev,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                const SizedBox(width: unitSeperatorWidth),
              ],
              if (_time.hours != null) ...[
                MonospaceNumberCard(
                  numberString: _time.hours!.valueFormatted,
                  numberTextStyle: numberTextStyle!,
                ),
                Padding(
                  padding: abbrevPadding,
                  child: Text(
                    _time.hours!.abbrev,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ],
              const SizedBox(width: unitSeperatorWidth),
              if (_time.minutes != null) ...[
                MonospaceNumberCard(
                  numberString: _time.minutes!.valueFormatted,
                  numberTextStyle: numberTextStyle!,
                ),
                Padding(
                  padding: abbrevPadding,
                  child: Text(
                    _time.minutes!.abbrev,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ],
              if (_time.seconds != null) ...[
                const SizedBox(width: unitSeperatorWidth),
                MonospaceNumberCard(
                  numberString: _time.seconds!.valueFormatted,
                  numberTextStyle: numberTextStyle!,
                ),
                Padding(
                  padding: abbrevPadding,
                  child: Text(
                    _time.seconds!.abbrev,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}
