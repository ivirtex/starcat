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
  bool? _isLaunchTimeTbd;
  Rocket? _rocket;
  String? _description;

  bool _isTMinusAvailable = true;
  String? _tMinusToLaunchDays;
  late String _tMinusToLaunchHours;
  late String _tMinusToLaunchMinutes;
  Timer? _timer;

  @override
  void initState() {
    super.initState();

    final nextLaunchData = widget.launch;

    _launchName = nextLaunchData.mission?.name;
    _isLaunchTimeTbd = nextLaunchData.status?.abbrev == 'TBD';
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

    setState(() {
      _tMinusToLaunchDays = days.toString().padLeft(2, '0');
      _tMinusToLaunchHours = hours.toString().padLeft(2, '0');
      _tMinusToLaunchMinutes = minutes.toString().padLeft(2, '0');
    });
  }

  @override
  Widget build(BuildContext context) {
    return ExploreCard(
      title: const Text('Next Launch'),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                _launchName ?? 'No launch name',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              if (_isTMinusAvailable) ...[
                CountdownTimer(
                  tMinusToLaunchDays: _tMinusToLaunchDays,
                  tMinusToLaunchHours: _tMinusToLaunchHours,
                  tMinusToLaunchMinutes: _tMinusToLaunchMinutes,
                  isLaunchTimeTbd: _isLaunchTimeTbd,
                )
              ] else
                const Text('T- not available'),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            _rocket?.configuration?.fullName ?? 'No rocket name',
          ),
          const SizedBox(height: 10),
          Text(_description ?? 'No description'),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

class CountdownTimer extends StatelessWidget {
  const CountdownTimer({
    super.key,
    required String? tMinusToLaunchDays,
    required String tMinusToLaunchHours,
    required String tMinusToLaunchMinutes,
    required bool? isLaunchTimeTbd,
  })  : _tMinusToLaunchDays = tMinusToLaunchDays,
        _tMinusToLaunchHours = tMinusToLaunchHours,
        _tMinusToLaunchMinutes = tMinusToLaunchMinutes,
        _isLaunchTimeTbd = isLaunchTimeTbd;

  final String? _tMinusToLaunchDays;
  final String _tMinusToLaunchHours;
  final String _tMinusToLaunchMinutes;
  final bool? _isLaunchTimeTbd;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
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
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const Text('d', style: TextStyle(fontSize: 18)),
        const SizedBox(width: 5),
        Text(
          _tMinusToLaunchHours,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const Text('h', style: TextStyle(fontSize: 18)),
        const SizedBox(width: 5),
        Text(
          _tMinusToLaunchMinutes,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const Text('m', style: TextStyle(fontSize: 18)),
        const SizedBox(width: 5),
        if (_isLaunchTimeTbd != null && _isLaunchTimeTbd!) ...[
          Container(
            decoration: BoxDecoration(
              color: Colors.yellow[700],
              borderRadius: const BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            padding: const EdgeInsets.all(5),
            child: Row(
              children: [
                Icon(
                  Icons.warning_rounded,
                  color: Theme.of(context).colorScheme.secondary,
                  size: 15,
                ),
                const SizedBox(width: 2),
                const Text(
                  'TBD',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }
}
