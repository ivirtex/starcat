// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';
import 'package:spacex_info_repository/spacex_info_repository.dart';

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
    _description = nextLaunchData.mission?.description;
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
              color: Colors.grey.shade400,
            ),
          ),
          const SizedBox(height: 10),
          ThemedOutlinedButton(
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

class LaunchStatus extends StatelessWidget {
  const LaunchStatus(
    this.launchStatus, {
    super.key,
  });

  final Status? launchStatus;

  Color? tryToGetColorForAbbrev(String? abbrev) {
    switch (abbrev) {
      case 'Success':
      case 'Go':
        return Colors.green;
      case 'TBC':
        return Colors.greenAccent[700]!;
      case 'TBD':
        return Colors.orange;
      default:
        return null;
    }
  }

  IconData tryToGetIconForAbbrev(String? abbrev) {
    switch (abbrev) {
      case 'Success':
        return Icons.check_circle;
      case 'Go':
        return Icons.check_rounded;
      case 'TBC':
        return Icons.access_time_rounded;
      case 'TBD':
        return Icons.access_time_rounded;
      default:
        return Icons.event;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          tryToGetIconForAbbrev(launchStatus?.abbrev),
          size: 14,
          color: tryToGetColorForAbbrev(launchStatus?.abbrev),
        ),
        const SizedBox(width: 3),
        Text(
          launchStatus?.name ?? '',
          style: TextStyle(
            color: tryToGetColorForAbbrev(launchStatus?.abbrev),
          ),
        ),
      ],
    );
  }
}
