// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:spacex_info_repository/spacex_info_repository.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';

class UpcomingLaunches extends StatelessWidget {
  const UpcomingLaunches({
    required this.launches,
    super.key,
  });

  final Launches launches;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 100),
      child: Scrollbar(
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
            final net = launch.net?.toLocal().toString().replaceAll('.000', '');

            return ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 250,
                maxHeight: 200,
              ),
              child: ExploreCard(
                title: Text(
                  'NET: ${net ?? 'N/A'}',
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      launch.mission?.name ?? 'No name',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      launch.pad?.name ?? 'No pad',
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
