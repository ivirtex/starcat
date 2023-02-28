// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_size_text/auto_size_text.dart';
import 'package:go_router/go_router.dart';
import 'package:space_devs_repository/space_devs_repository.dart';

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Section(
          text: 'Upcoming Launches',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(height: 3),
        SizedBox(
          height: 130,
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
                  // TODO(ivirtex): Test this route
                  onTap: () => context.go('/launch/${launch.id}'),
                  child: Row(
                    children: [
                      Expanded(
                        child: ClipRect(
                          child: ShaderMask(
                            shaderCallback: (rect) {
                              return const LinearGradient(
                                colors: <Color>[
                                  Colors.white,
                                  Colors.transparent,
                                ],
                              ).createShader(
                                Rect.fromLTRB(
                                  rect.width - 30,
                                  rect.height - 30,
                                  rect.width,
                                  rect.height,
                                ),
                              );
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AutoSizeText(
                                  launch.mission?.name ?? 'No name',
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                  maxLines: 2,
                                ),
                                const SizedBox(height: 5),
                                Wrap(
                                  direction: Axis.vertical,
                                  spacing: 5,
                                  runSpacing: 5,
                                  children: [
                                    InfoCard(
                                      padding: const EdgeInsets.all(3),
                                      child: Text(date),
                                    ),
                                    InfoCard(
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
                      VehicleScheme(
                        vehicle: launch.rocket,
                        mission: launch.mission,
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
