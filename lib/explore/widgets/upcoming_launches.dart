// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:spacex_info_repository/spacex_info_repository.dart';
import 'package:vector_graphics/vector_graphics_compat.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';
import 'package:falcon/helpers/format_date.dart';
import 'package:falcon/shared/shared.dart';

class UpcomingLaunches extends StatelessWidget {
  const UpcomingLaunches({
    required this.launches,
    super.key,
  });

  final Launches launches;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: launches.results!.length,
        itemBuilder: (context, index) {
          // We are not displaying the first launch because
          // it is already displayed above this widget
          if (index == 0) {
            return const SizedBox();
          }

          final launch = launches.results![index];
          final date = formatDate(launch.net!.toLocal());

          return SizedBox(
            width: 250,
            child: ExploreCard(
              expandVertically: true,
              onTap: () => context.go('/launch/${launch.id}'),
              child: Row(
                children: [
                  ShaderMask(
                    shaderCallback: (rect) {
                      return const LinearGradient(
                        colors: <Color>[
                          Colors.white,
                          Colors.transparent,
                        ],
                      ).createShader(
                        Rect.fromLTRB(
                          rect.width - 50,
                          rect.height - 50,
                          rect.width - 10,
                          rect.height - 10,
                        ),
                      );
                    },
                    child: ClipRect(
                      child: SizedBox(
                        width: 180,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AutoSizeText(
                              launch.mission?.name ?? 'No name',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 2,
                            ),
                            const SizedBox(height: 5),
                            Wrap(
                              direction: Axis.vertical,
                              spacing: 5,
                              runSpacing: 5,
                              children: [
                                InfoCard(
                                  color: Colors.grey.shade800,
                                  padding: const EdgeInsets.all(3),
                                  child: Text(date),
                                ),
                                InfoCard(
                                  color: Colors.grey.shade800,
                                  padding: const EdgeInsets.all(3),
                                  child: Text(
                                    launch.pad?.name ?? 'No pad',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Flexible(
                    child: VehicleScheme(
                      vehicleConfiguration: launch.rocket?.configuration,
                      mission: launch.mission,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

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
