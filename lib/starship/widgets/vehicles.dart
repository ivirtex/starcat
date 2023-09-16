// Dart imports:
import 'dart:math';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/explore/explore.dart';
import 'package:starcat/shared/section.dart';
import 'package:starcat/starship/starship.dart';

class Vehicles extends StatelessWidget {
  const Vehicles({
    required this.vehicles,
    super.key,
  });

  final List<Launcher> vehicles;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Section(
          icon: const Icon(Icons.rocket_rounded),
          trailing: SectionButton(
            onPressed: () => context.go('/starship/vehicles'),
          ),
          child: const Text('Vehicles'),
        ),
        if (vehicles.isEmpty)
          const ExploreCard(
            child: Text('No vehicles currently available.'),
          )
        else
          ListView.separated(
            itemCount: min(3, vehicles.length),
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) =>
                const SizedBox(height: kListSpacing),
            itemBuilder: (context, index) {
              final vehicle = vehicles[index];

              String? serialNumber;

              // convert Booster X to BX due to the way
              // API returns the serial number
              if (vehicle.serialNumber != null) {
                serialNumber = vehicle.serialNumber!.replaceAll(' ', '');
                serialNumber = serialNumber.replaceAll('Booster', 'B');
                serialNumber = serialNumber.replaceAll('Ship', 'S');
              }

              return VehicleCard(
                title: Text(vehicle.serialNumber ?? 'N/A SN'),
                subtitle: Text(vehicle.details ?? 'N/A Details'),
                leading: Center(
                  child: Text(serialNumber ?? 'N/A SN'),
                ),
              );
            },
          ),
      ],
    );
  }
}
