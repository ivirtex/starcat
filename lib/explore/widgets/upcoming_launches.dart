// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';
import 'package:spacex_info_repository/spacex_info_repository.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';
import 'package:falcon/shared/shared.dart';

class UpcomingLaunches extends StatelessWidget {
  const UpcomingLaunches({
    required this.launches,
    super.key,
  });

  final Launches launches;

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
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
          final net =
              launch.net?.toLocal().toString().replaceAll('.000', '') ?? 'N/A';

          return SizedBox(
            width: 300,
            height: 200,
            child: ExploreCard(
              padding: EdgeInsets.zero,
              title: Flexible(
                child: Row(
                  children: [
                    InfoCard(
                      color: Colors.grey.shade200,
                      padding: const EdgeInsets.all(3),
                      child: Text('NET: $net'),
                    ),
                  ],
                ),
              ),
              child: Column(
                children: [
                  Image.network(
                    launch.image ?? '',
                    width: 300,
                    height: 200,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return const Center(
                        child: Icon(Icons.error),
                      );
                    },
                    loadingBuilder: (context, child, loadingProgress) {
                      return const Center(
                        child: CircularProgressIndicator.adaptive(),
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Flexible(
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
                        const SizedBox(width: 10),
                        ThemedOutlinedButton(
                          child: const Icon(Icons.chevron_right_rounded),
                          onPressed: () => context.go('/launch/${launch.id}'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
