// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:launch_library_repository/launch_library_repository.dart';

class LaunchStatus extends StatelessWidget {
  const LaunchStatus(
    this.launchStatus, {
    super.key,
  });

  final Status? launchStatus;

  Color getColorForAbbrev(StatusAbbrev abbrev) {
    switch (abbrev) {
      case StatusAbbrev.go:
        return Colors.greenAccent.shade400;
      case StatusAbbrev.success:
        return Colors.green;
      case StatusAbbrev.tbc:
        return Colors.lightGreen;
      case StatusAbbrev.hold:
        return Colors.orange;
      case StatusAbbrev.inFlight:
        return Colors.blue;
      case StatusAbbrev.partialFailure:
        return Colors.orange;
      case StatusAbbrev.failure:
        return Colors.red;
      case StatusAbbrev.tbd:
        return Colors.grey;
    }
  }

  IconData getIconForAbbrev(StatusAbbrev abbrev) {
    switch (abbrev) {
      case StatusAbbrev.go:
        return Icons.check_circle_rounded;
      case StatusAbbrev.success:
        return Icons.check_circle;
      case StatusAbbrev.tbc:
        return Icons.help_rounded;
      case StatusAbbrev.hold:
        return Icons.pause_circle_filled_rounded;
      case StatusAbbrev.inFlight:
        return Icons.flight_takeoff_rounded;
      case StatusAbbrev.partialFailure:
        return Icons.warning_rounded;
      case StatusAbbrev.failure:
        return Icons.cancel_rounded;
      case StatusAbbrev.tbd:
        return Icons.help_rounded;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          getIconForAbbrev(launchStatus?.abbrev ?? StatusAbbrev.tbd),
          size: 14,
          color: getColorForAbbrev(launchStatus?.abbrev ?? StatusAbbrev.tbd),
        ),
        const SizedBox(width: 3),
        Text(
          launchStatus?.name ?? '',
          style: TextStyle(
            color: getColorForAbbrev(launchStatus?.abbrev ?? StatusAbbrev.tbd),
          ),
        ),
      ],
    );
  }
}
