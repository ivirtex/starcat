// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spacex_info_repository/spacex_info_repository.dart';
import 'package:vector_graphics/vector_graphics.dart';

class VehicleScheme extends StatelessWidget {
  const VehicleScheme({
    this.vehicleConfiguration,
    this.mission,
    super.key,
  });

  final Configuration? vehicleConfiguration;
  final Mission? mission;

  @override
  Widget build(BuildContext context) {
    String? vehiclePath;

    switch (vehicleConfiguration?.name) {
      case 'Falcon 9':
        if (mission?.type == 'Resupply' ||
            mission?.type == 'Human Exploration') {
          vehiclePath = 'assets/schematics/falcon_9/f9_dragon.svg.vec';
        } else {
          vehiclePath = 'assets/schematics/falcon_9/f9.svg.vec';
        }

        break;
      case 'Falcon Heavy':
        vehiclePath = 'assets/schematics/falcon_heavy/fh.svg.vec';
        break;
      default:
        break;
    }

    if (vehiclePath == null) {
      return const SizedBox();
    }

    return SvgPicture(
      AssetBytesLoader(vehiclePath),
    );
  }
}
