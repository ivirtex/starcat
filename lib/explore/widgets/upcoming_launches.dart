// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_size_text/auto_size_text.dart';
import 'package:go_router/go_router.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';
import 'package:falcon/helpers/format_date.dart';
import 'package:falcon/shared/shared.dart';

class UpcomingLaunches extends StatelessWidget {
  const UpcomingLaunches({
    required this.launches,
    super.key,
  });

  final List<Launch>? launches;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Section(
          icon: Icon(Icons.rocket_rounded),
          child: Text('Upcoming Launches'),
        ),
        SizedBox(
          height: 140,
          child: launches != null && launches!.isNotEmpty
              ? ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: launches!.length,
                  itemBuilder: (context, index) {
                    // We are not displaying the first launch because
                    // it is already displayed above by NextLaunchCard
                    if (index == 0) {
                      return const SizedBox.shrink();
                    }

                    final launch = launches![index];
                    final date = launch.net != null
                        ? formatDate(launch.net!.toLocal())
                        : 'No date';

                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: UpcomingLaunchCard(
                        launch: launch,
                        date: date,
                      ),
                    );
                  },
                )
              : const Center(
                  child: Text('No upcoming launches'),
                ),
        ),
      ],
    );
  }
}

class UpcomingLaunchCard extends StatelessWidget {
  const UpcomingLaunchCard({
    super.key,
    required this.launch,
    required this.date,
  });

  final Launch launch;
  final String date;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: ExploreCard(
        expandVertically: true,
        onTap: () => context.go('/launch/${launch.id}'),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        launch.mission.name ?? 'No name',
                        style: Theme.of(context).textTheme.titleMedium,
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
                              launch.pad.name ?? 'No pad',
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
  }
}
