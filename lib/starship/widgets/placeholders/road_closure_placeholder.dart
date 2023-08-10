// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_animate/flutter_animate.dart';

// Project imports:
import 'package:starcat/explore/explore.dart';
import 'package:starcat/shared/shared.dart';

class RoadClosurePlaceholder extends StatelessWidget {
  const RoadClosurePlaceholder({
    this.delay = Duration.zero,
    super.key,
  });

  final Duration delay;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Section(
          icon: Icon(Icons.remove_road_rounded),
          child: Text('Starbase Road Closures'),
        ),
        const ExploreCard(
          padding: EdgeInsets.zero,
          child: LoadingPlaceholder.expandedWidth(height: 35),
        )
            .animate(
              delay: delay,
              onPlay: (controller) => controller.repeat(reverse: true),
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
