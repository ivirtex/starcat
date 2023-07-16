// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:starcat/helpers/helpers.dart';

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

  CupertinoDynamicColor getCupertinoColorForAbbrev(StatusAbbrev abbrev) {
    switch (abbrev) {
      case StatusAbbrev.go:
        return CupertinoColors.systemGreen;
      case StatusAbbrev.success:
        return CupertinoColors.systemGreen;
      case StatusAbbrev.tbc:
        return CupertinoColors.systemGreen;
      case StatusAbbrev.hold:
        return CupertinoColors.systemOrange;
      case StatusAbbrev.inFlight:
        return CupertinoColors.systemBlue;
      case StatusAbbrev.partialFailure:
        return CupertinoColors.systemOrange;
      case StatusAbbrev.failure:
        return CupertinoColors.systemRed;
      case StatusAbbrev.tbd:
        return CupertinoColors.systemGrey;
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

  IconData getCupertinoIconForAbbrev(StatusAbbrev abbrev) {
    switch (abbrev) {
      case StatusAbbrev.go:
        return CupertinoIcons.checkmark_circle;
      case StatusAbbrev.success:
        return CupertinoIcons.checkmark_circle;
      case StatusAbbrev.tbc:
        return CupertinoIcons.question_circle;
      case StatusAbbrev.hold:
        return CupertinoIcons.pause_circle;
      case StatusAbbrev.inFlight:
        return CupertinoIcons.airplane;
      case StatusAbbrev.partialFailure:
        return CupertinoIcons.exclamationmark_circle;
      case StatusAbbrev.failure:
        return CupertinoIcons.xmark_circle;
      case StatusAbbrev.tbd:
        return CupertinoIcons.question_circle;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          isCupertino(context)
              ? getCupertinoIconForAbbrev(
                  launchStatus?.abbrev ?? StatusAbbrev.tbd,
                )
              : getIconForAbbrev(launchStatus?.abbrev ?? StatusAbbrev.tbd),
          color: isCupertino(context)
              ? getCupertinoColorForAbbrev(
                  launchStatus?.abbrev ?? StatusAbbrev.tbd,
                )
              : getColorForAbbrev(launchStatus?.abbrev ?? StatusAbbrev.tbd),
          size: 14,
        ),
        const SizedBox(width: 3),
        Text(
          launchStatus?.name ?? '',
          style: TextStyle(
            color: isCupertino(context)
                ? getCupertinoColorForAbbrev(
                    launchStatus?.abbrev ?? StatusAbbrev.tbd,
                  )
                : getColorForAbbrev(launchStatus?.abbrev ?? StatusAbbrev.tbd),
          ),
        ),
      ],
    );
  }
}
