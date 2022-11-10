// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:spacex_info_repository/spacex_info_repository.dart';

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
          Column(
            children: [
              Text(
                vehicle?.configuration?.fullName ?? 'N/A',
              ),
            ],
          ),
          const Spacer(),
          ThemedOutlinedButton(
            child: const Text('Learn more'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
