// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';
import 'package:falcon/shared/shared.dart';

class LaunchVehicleCard extends StatelessWidget {
  const LaunchVehicleCard({
    super.key,
    required this.vehicle,
  });

  final Rocket? vehicle;

  @override
  Widget build(BuildContext context) {
    return ExploreCard(
      title: Row(
        children: const [
          Icon(Icons.rocket_launch_rounded, size: 14),
          SizedBox(width: 5),
          Text('Launch Vehicle'),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Text(
              vehicle?.configuration.fullName ?? 'N/A',
            ),
          ),
          const Spacer(),
          ThemedButton(
            child: const Text('Learn more'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
