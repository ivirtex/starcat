// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';
import 'package:space_devs_repository/space_devs_repository.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';
import 'package:falcon/shared/shared.dart';

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
  String? _description;

  DateTime? _launchDate;

  @override
  void initState() {
    super.initState();

    final nextLaunchData = widget.launch;
    _launchDate = nextLaunchData.net;
    _launchName = nextLaunchData.name;
    _launchStatus = nextLaunchData.status;
    _description = '${nextLaunchData.mission?.description?.split('.').first}.';
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
              const SizedBox(width: 20),
              CountdownTimer(
                launchDate: _launchDate,
                mode: _launchStatus?.abbrev == 'Go'
                    ? CountdownTimerMode.hoursMinutesSeconds
                    : CountdownTimerMode.daysHoursMinutes,
              )
            ],
          ),
          const SizedBox(height: 10),
          Text(
            _description ?? 'No description',
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
            ),
          ),
          const SizedBox(height: 10),
          ThemedButton(
            shouldCupertinoButtonBeFilled: true,
            onPressed: () => context.go('/launch/${widget.launch.id}'),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Launch Details'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
