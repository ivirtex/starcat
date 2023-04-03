// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';
import 'package:space_devs_repository/space_devs_repository.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';
import 'package:falcon/shared/shared.dart';

class UpcomingLaunchCard extends StatefulWidget {
  const UpcomingLaunchCard({
    super.key,
    required this.launch,
  });

  final Launch? launch;

  @override
  State<UpcomingLaunchCard> createState() => _UpcomingLaunchCardState();
}

class _UpcomingLaunchCardState extends State<UpcomingLaunchCard> {
  String? _launchName;
  Status? _launchStatus;
  String? _description;

  DateTime? _launchDate;

  @override
  void initState() {
    super.initState();

    if (widget.launch != null) {
      final nextLaunchData = widget.launch;
      _launchDate = nextLaunchData!.net;
      _launchName = nextLaunchData.name;
      _launchStatus = nextLaunchData.status;
      _description = nextLaunchData.mission?.description?.split('.').first;
      _description = _description != null ? '$_description.' : null;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.launch == null) {
      return const SizedBox.shrink();
    }

    return ExploreCard(
      title: const Text('Next Launch'),
      trailing: LaunchStatus(_launchStatus),
      slideOut: Row(
        children: [
          Text(
            'Countdown',
            style: Theme.of(context).textTheme.labelLarge,
          ),
          const Spacer(),
          CountdownTimer(
            launchDate: _launchDate,
            mode: _launchStatus?.abbrev == 'Go'
                ? CountdownTimerMode.hoursMinutesSeconds
                : CountdownTimerMode.daysHoursMinutes,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _launchName ?? 'No launch name',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 10),
          Text(
            _description ?? 'No description',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.outline,
                ),
          ),
          const SizedBox(height: 10),
          ThemedButton(
            shouldCupertinoButtonBeFilled: true,
            onPressed: () => context.go('/launch/${widget.launch!.id}'),
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
