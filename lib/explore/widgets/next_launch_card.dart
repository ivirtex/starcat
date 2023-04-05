// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';
import 'package:falcon/shared/shared.dart';

class NextLaunchCard extends StatefulWidget {
  const NextLaunchCard({
    super.key,
    required this.launch,
  });

  final Launch? launch;

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

    if (widget.launch != null) {
      final nextLaunchData = widget.launch;
      _launchDate = nextLaunchData!.net;
      _launchName = nextLaunchData.name;
      _launchStatus = nextLaunchData.status;
      _description = nextLaunchData.mission.description?.split('.').first;
      _description = _description != null ? '$_description.' : null;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.launch == null) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Section(
          icon: Icon(Icons.rocket_launch_rounded),
          child: Text('Next Launch'),
        ),
        ExploreCard(
          title: const Text('Status'),
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
        ),
      ],
    );
  }
}
