// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:intl/intl.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:sliver_tools/sliver_tools.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/starship/starship.dart';

class OrbitalVehiclesPage extends StatelessWidget {
  const OrbitalVehiclesPage({
    required this.orbiters,
    super.key,
  });

  final List<Orbiter> orbiters;

  @override
  Widget build(BuildContext context) {
    return OrbitalVehiclesView(orbiters: orbiters);
  }
}

class OrbitalVehiclesView extends StatelessWidget {
  const OrbitalVehiclesView({
    required this.orbiters,
    super.key,
  });

  final List<Orbiter> orbiters;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            title: Text('Orbital Vehicles'),
          ),
          SliverPadding(
            padding: kBodyPadding,
            sliver: MultiSliver(
              children: [
                const SizedBox(height: kListSpacing),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    childCount: orbiters.length,
                    (context, index) {
                      final vehicle = orbiters[index];

                      // Capitalize status
                      final status =
                          toBeginningOfSentenceCase(vehicle.status.name);

                      return Padding(
                        padding: const EdgeInsets.only(bottom: kListSpacing),
                        child: VehicleCard(
                          title: Text(vehicle.name),
                          subtitle: Text(vehicle.description),
                          leading: Center(
                            child: Text(vehicle.serialNumber),
                          ),
                          status: Text(status ?? 'Unknown'),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
