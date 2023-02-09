// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_size_text/auto_size_text.dart';
import 'package:go_router/go_router.dart';
import 'package:spacex_info_repository/spacex_info_repository.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';
import 'package:falcon/helpers/parse_date.dart';
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
      height: 100,
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
          final date = parseDateStr(launch.net!.toLocal());

          return SizedBox(
            width: 250,
            child: ExploreCard(
              expandVertically: true,
              onTap: () => context.go('/launch/${launch.id}'),
              child: Row(
                children: [
                  Column(
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
                      Flexible(
                        child: Wrap(
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
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Placeholder(fallbackWidth: 30)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
