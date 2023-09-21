// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:intl/intl.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

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
            padding: kBodyPadding + const EdgeInsets.only(top: kListSpacing),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: orbiters.length,
                (context, index) {
                  final vehicle = orbiters[index];

                  // Capitalize status
                  final status =
                      toBeginningOfSentenceCase(vehicle.status?.name);

                  return Padding(
                    padding: const EdgeInsets.only(bottom: kListSpacing),
                    child: VehicleCard(
                      title: Text(vehicle.name ?? 'Name N/A'),
                      subtitle: Text(vehicle.description ?? 'Description N/A'),
                      leading: Center(
                        child: Text(vehicle.serialNumber ?? 'SN N/A'),
                      ),
                      status: Text(status ?? 'Unknown'),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
