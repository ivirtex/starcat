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
        return Icons.error_rounded;
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
