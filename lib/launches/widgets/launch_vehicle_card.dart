// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:starcat/constants.dart';
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
    final launcherStages = vehicle?.launcherStage;

    return AnimatedSize(
      duration: kStateChangeAnimationDuration,
      alignment: Alignment.bottomCenter,
      curve: Curves.easeInOut,
      child: ExploreCard(
        title: const Row(
          children: [
            Icon(Icons.rocket_launch_rounded, size: 14),
            SizedBox(width: 5),
            Text('Launch Vehicle'),
          ],
        ),
        slideOut: launcherStages != null && launcherStages.isNotEmpty
            ? Column(
                children: [
                  for (final stage in launcherStages)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Wrap(
                        spacing: 5,
                        runSpacing: 5,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        runAlignment: WrapAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text(stage.type),
                              const Spacer(),
                              Text(
                                stage.launcher.serialNumber ?? 'N/A',
                              ),
                            ],
                          ),
                          if (stage.reused != null)
                            InfoCard(
                              bgColor: stage.reused!
                                  ? Colors.lightGreen
                                  : Colors.redAccent,
                              contentColor: Colors.white,
                              icon: const Icon(Icons.eco_rounded),
                              child:
                                  Text(stage.reused! ? 'Reused' : 'Not reused'),
                            ),
                          if (stage.launcherFlightNumber != null)
                            InfoCard.tertiary(
                              icon: const Icon(Icons.flight_rounded),
                              child: Text(
                                'Flight #${stage.launcherFlightNumber}',
                              ),
                            ),
                          if (stage.turnAroundTimeDays != null)
                            InfoCard.tertiary(
                              icon: const Icon(Icons.timer_rounded),
                              child: Text(
                                '${stage.turnAroundTimeDays} days',
                              ),
                            ),
                        ],
                      ),
                    ),
                ],
              )
            : null,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (vehicle?.configuration.manufacturer?.name != null)
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Text(
                            vehicle?.configuration.manufacturer?.name ?? 'N/A',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ),
                      Text(
                        vehicle?.configuration.fullName ?? 'N/A',
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
          ],
        ),
      ),
    );
  }
}
