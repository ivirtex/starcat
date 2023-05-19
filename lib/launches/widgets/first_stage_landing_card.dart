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
    Row? landingSuccessWidget;

    if (landing?.success != null) {
      // ignore: use_if_null_to_convert_nulls_to_bools
      landingSuccessWidget = landing!.success == true
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
          : const Row(
              children: [
                Icon(
                  Icons.cancel_rounded,
                  size: 14,
                  color: Colors.red,
                ),
                SizedBox(width: 5),
                Text(
                  'Landing Failed',
                  style: TextStyle(color: Colors.green),
                ),
              ],
            );
    }

    return ExploreCard(
      title: Row(
        children: [
          Icon(PhosphorIcons.fill.airplaneLanding, size: 14),
          const SizedBox(width: 5),
          const Text('Landing'),
        ],
      ),
      trailing: landingSuccessWidget,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            landing?.description ?? 'No landing information',
          ),
        ],
      ),
    );
  }
}
