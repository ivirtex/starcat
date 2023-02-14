// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:spacex_info_repository/spacex_info_repository.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';
import 'package:falcon/shared/shared.dart';

class TargetOrbitCard extends StatelessWidget {
  const TargetOrbitCard({
    super.key,
    required this.orbit,
  });

  final Status? orbit;

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
