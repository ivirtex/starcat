// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

// Project imports:
import 'package:starcat/explore/explore.dart';
import 'package:starcat/shared/shared.dart';

class TargetOrbitCard extends StatelessWidget {
  const TargetOrbitCard({
    required this.orbit,
    super.key,
  });

  final Orbit? orbit;

  @override
  Widget build(BuildContext context) {
    final isAvailable = orbit != null && orbit!.name != null;

    return ExploreCard(
      title: Row(
        children: [
          Icon(PhosphorIcons.fill.planet, size: 14),
          const SizedBox(width: 5),
          const Text('Target Orbit'),
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
          const ThemedButton(
            // onPressed: isAvailable ? () {} : null,
            child: Text('Details'),
          ),
        ],
      ),
    );
  }
}
