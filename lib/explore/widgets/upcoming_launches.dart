// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_size_text/auto_size_text.dart';
import 'package:go_router/go_router.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:starcat/explore/explore.dart';
import 'package:starcat/helpers/helpers.dart';
import 'package:starcat/shared/shared.dart';

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
                        date: date!,
                      ),
                    );
                  },
                )
              : const ExploreCard(
                  expandVertically: true,
                  child: Center(
                    child: Text('No upcoming launches'),
                  ),
                ),
        ),
      ],
    );
  }
}

class UpcomingLaunchCard extends StatelessWidget {
  const UpcomingLaunchCard({
    required this.launch,
    required this.date,
    super.key,
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
                  blendMode: BlendMode.dstIn,
                  shaderCallback: (rect) {
                    return const LinearGradient(
                      colors: <Color>[
                        Colors.white,
                        Colors.transparent,
                      ],
                    ).createShader(
                      Rect.fromLTRB(
                        rect.width - 50,
                        rect.height,
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
                        style: isCupertino(context)
                            ? CupertinoTheme.of(context).textTheme.textStyle
                            : Theme.of(context).textTheme.titleMedium,
                        maxLines: 2,
                      ),
                      const SizedBox(height: 5),
                      Wrap(
                        direction: Axis.vertical,
                        spacing: 5,
                        runSpacing: 5,
                        children: [
                          InfoCard.secondary(
                            borderRadius: BorderRadius.circular(8),
                            child: Text(date),
                          ),
                          InfoCard.secondary(
                            borderRadius: BorderRadius.circular(8),
                            child: Text(launch.pad?.name ?? 'No pad'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
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
