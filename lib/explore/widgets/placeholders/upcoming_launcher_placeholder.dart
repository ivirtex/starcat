// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_animate/flutter_animate.dart';

// Project imports:
import 'package:starcat/explore/explore.dart';
import 'package:starcat/shared/shared.dart';

class UpcomingLaunchesPlaceholder extends StatelessWidget {
  const UpcomingLaunchesPlaceholder({
    this.delay = Duration.zero,
    super.key,
  });

  final Duration delay;

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
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.only(right: 10),
                child: UpcomingLaunchCardPlaceholder(),
              );
            },
          ),
        )
            .animate(
              delay: delay,
              onComplete: (controller) => controller.repeat(reverse: true),
            )
            .fade(
              begin: 0.3,
              curve: Curves.easeInOut,
              duration: 1.seconds,
            )
      ],
    );
  }
}

class UpcomingLaunchCardPlaceholder extends StatelessWidget {
  const UpcomingLaunchCardPlaceholder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 250,
      child: ExploreCard(
        expandVertically: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LoadingPlaceholder(width: 150),
            Spacer(),
            LoadingPlaceholder(),
          ],
        ),
      ),
    );
  }
}
