// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:spacex_info_repository/spacex_info_repository.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';

class NextLaunchCard extends StatefulWidget {
  const NextLaunchCard({
    super.key,
    required this.launch,
  });

  final Launch launch;

  @override
  State<NextLaunchCard> createState() => _NextLaunchCardState();
}

class _NextLaunchCardState extends State<NextLaunchCard> {
  String? _launchName;
  Status? _launchStatus;
  Rocket? _rocket;
  String? _description;

  bool _isTMinusAvailable = true;
  String? _tMinusToLaunchDays;
  late String _tMinusToLaunchHours;
  late String _tMinusToLaunchMinutes;
  late String _tMinusToLaunchSeconds;
  Timer? _timer;

  @override
  void initState() {
    super.initState();

    final nextLaunchData = widget.launch;

    _launchName = nextLaunchData.mission?.name;
    _launchStatus = nextLaunchData.status;
    _rocket = nextLaunchData.rocket;
    _description = nextLaunchData.mission?.description;

    _updateLaunchTime(nextLaunchData);
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (_) => _updateLaunchTime(nextLaunchData),
    );
  }

  @override
  void dispose() {
    super.dispose();

    _timer?.cancel();
  }

  void _updateLaunchTime(Launch? launch) {
    if (launch == null || launch.net == null) {
      _isTMinusAvailable = false;

      return;
    }

    final launchDate = launch.net!.toUtc();
    final now = DateTime.now().toUtc();

    final duration = launchDate.difference(now);

    final days = duration.inDays;
    final hours = duration.inHours - (days * 24);
    final minutes = duration.inMinutes - (days * 24 * 60) - (hours * 60);
    final seconds = duration.inSeconds -
        (days * 24 * 60 * 60) -
        (hours * 60 * 60) -
        (minutes * 60);

    setState(() {
      _tMinusToLaunchDays = days.toString().padLeft(2, '0');
      _tMinusToLaunchHours = hours.toString().padLeft(2, '0');
      _tMinusToLaunchMinutes = minutes.toString().padLeft(2, '0');
      _tMinusToLaunchSeconds = seconds.toString().padLeft(2, '0');
    });
  }

  @override
  Widget build(BuildContext context) {
    return ExploreCard(
      title: const Text('Next Launch'),
      trailing: LaunchStatus(_launchStatus),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 6,
                child: Text(
                  _launchName ?? 'No launch name',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              const Spacer(),
              if (_isTMinusAvailable) ...[
                CountdownTimer(
                  mode: _launchStatus?.abbrev == 'Go'
                      ? CountdownTimerMode.hoursMinutesSeconds
                      : CountdownTimerMode.daysHoursMinutes,
                  days: _tMinusToLaunchDays,
                  hours: _tMinusToLaunchHours,
                  minutes: _tMinusToLaunchMinutes,
                  seconds: _tMinusToLaunchSeconds,
                )
              ] else
                const Text(
                  'T- not available',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
            ],
          ),
          const SizedBox(height: 10),
          Text(_description ?? 'No description'),
          const SizedBox(height: 10),
          Text(
            _rocket?.configuration?.fullName ?? 'No rocket name',
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

class LaunchStatus extends StatelessWidget {
  const LaunchStatus(
    this.launchStatus, {
    super.key,
  });

  final Status? launchStatus;

  Color getColorForAbbrev(String? abbrev, BuildContext context) {
    switch (abbrev) {
      case 'Go':
        return Colors.green;
      case 'TBC':
        return Colors.greenAccent[700]!;
      case 'TBD':
        return Colors.orange;
      default:
        return Theme.of(context).primaryTextTheme.bodySmall!.color!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          launchStatus?.abbrev == 'Go'
              ? Icons.check_rounded
              : launchStatus?.abbrev == 'TBC'
                  ? Icons.access_time_rounded
                  : launchStatus?.abbrev == 'TBD'
                      ? Icons.access_time_rounded
                      : Icons.warning,
          size: 15,
          color: getColorForAbbrev(launchStatus?.abbrev, context),
        ),
        const SizedBox(width: 3),
        Text(
          launchStatus?.name ?? '',
          style: TextStyle(
            color: getColorForAbbrev(launchStatus?.abbrev, context),
          ),
        ),
      ],
    );
  }
}
