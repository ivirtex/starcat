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

  DateTime? _launchDate;

  @override
  void initState() {
    super.initState();

    final nextLaunchData = widget.launch;

    _launchDate = nextLaunchData.net;
    _launchName = nextLaunchData.mission?.name;
    _launchStatus = nextLaunchData.status;
    _rocket = nextLaunchData.rocket;
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
              CountdownTimer(
                launchDate: _launchDate,
                mode: _launchStatus?.abbrev == 'Go'
                    ? CountdownTimerMode.hoursMinutesSeconds
                    : CountdownTimerMode.daysHoursMinutes,
              )
            ],
          ),
          const SizedBox(height: 10),
          Text(_description ?? 'No description'),
          const SizedBox(height: 10),
          OutlinedButton(
            style: const ButtonStyle(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Launch Details',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
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
                      : Icons.comment_rounded,
          size: 15,
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
