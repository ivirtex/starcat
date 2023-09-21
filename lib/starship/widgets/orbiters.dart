// Dart imports:
import 'dart:math';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

// Project imports:
import 'package:starcat/explore/explore.dart';
import 'package:starcat/shared/section.dart';
import 'package:starcat/starship/starship.dart';

class Orbiters extends StatelessWidget {
  const Orbiters({
    required this.orbiters,
    super.key,
  });

  final List<Orbiter> orbiters;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Section(
          icon: Icon(PhosphorIcons.planet()),
          trailing: SectionButton(
            onPressed: () => context.go('/starship/orbital-vehicles'),
          ),
          child: const Text('Orbital Vehicles'),
        ),
        if (orbiters.isEmpty)
          const ExploreCard(
            child: Text('No orbital vehicles currently available.'),
          )
        else
          ListView.builder(
            itemCount: min(3, orbiters.length),
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final vehicle = orbiters[index];

              return VehicleCard(
                title: Text(vehicle.name ?? 'Name N/A'),
                subtitle: Text(vehicle.description ?? 'Description N/A'),
                leading: Center(
                  child: Text(vehicle.serialNumber ?? 'SN N/A'),
                ),
                status: Text(vehicle.status?.name ?? 'Status N/A'),
              );
            },
          ),
      ],
    );
  }
}
