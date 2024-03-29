// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

// Project imports:
import 'package:starcat/explore/explore.dart';

class FirstStageLandingCard extends StatelessWidget {
  const FirstStageLandingCard({
    this.landing,
    super.key,
  });

  final Landing? landing;

  @override
  Widget build(BuildContext context) {
    return ExploreCard(
      title: Row(
        children: [
          Icon(
            PhosphorIcons.airplaneLanding(PhosphorIconsStyle.fill),
            size: 14,
          ),
          const SizedBox(width: 5),
          const Text('Landing'),
        ],
      ),
      trailing: landing?.success != null
          ? landing!.success ?? false
              ? const Row(
                  children: [
                    Icon(
                      Icons.check_circle_rounded,
                      size: 14,
                      color: Colors.green,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Landing Successful',
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                )
              : Row(
                  children: [
                    Icon(
                      Icons.cancel_rounded,
                      size: 14,
                      color: Theme.of(context).colorScheme.error,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      'Landing Failed',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                  ],
                )
          : null,
      child: Text(landing?.description ?? 'No landing information'),
    );
  }
}
