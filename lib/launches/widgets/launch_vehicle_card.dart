// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:starcat/explore/explore.dart';
import 'package:starcat/shared/shared.dart';

class LaunchVehicleCard extends StatelessWidget {
  const LaunchVehicleCard({
    required this.vehicle,
    super.key,
  });

  final Rocket? vehicle;

  @override
  Widget build(BuildContext context) {
    return ExploreCard(
      title: const Row(
        children: [
          Icon(Icons.rocket_launch_rounded, size: 14),
          SizedBox(width: 5),
          Text('Launch Vehicle'),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  vehicle?.configuration.fullName ?? 'N/A',
                ),
                Text(
                  vehicle?.launcherStage?.first.launcher.serialNumber ?? 'N/A',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.outline,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          // TODO(ivirtex): add vehicle details page
          const ThemedButton(
            child: Text('Learn more'),
          ),
        ],
      ),
    );
  }
}
