// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';
import 'package:falcon/shared/shared.dart';

class TargetOrbitCard extends StatelessWidget {
  const TargetOrbitCard({
    super.key,
    required this.orbit,
  });

  final Orbit? orbit;

  @override
  Widget build(BuildContext context) {
    final isAvailable = orbit != null && orbit!.name != null;

    return ExploreCard(
      title: Row(
        children: const [
          Icon(PhosphorIcons.planetBold, size: 14),
          SizedBox(width: 5),
          Text('Target Orbit'),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            flex: 8,
            child: Text(
              isAvailable ? '${orbit!.name} (${orbit!.abbrev})' : 'N/A',
            ),
          ),
          const Spacer(),
          ThemedButton(
            onPressed: isAvailable ? () {} : null,
            child: const Text('Details'),
          ),
        ],
      ),
    );
  }
}
