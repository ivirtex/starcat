// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_animate/flutter_animate.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/explore/explore.dart';
import 'package:starcat/shared/shared.dart';

class NextLaunchCardPlaceholder extends StatelessWidget {
  const NextLaunchCardPlaceholder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Section(
          icon: Icon(Icons.rocket_launch_rounded),
          child: Text('Next Launch'),
        ),
        ExploreCard(
          // "Status"
          title: const LoadingPlaceholder(width: 60),
          // Status
          trailing: const LoadingPlaceholder(),
          slideOut: Row(
            children: [
              // "Countdown"
              LoadingPlaceholder(
                color: Theme.of(context).colorScheme.surface.withOpacity(0.5),
              ),
              const Spacer(),
              // Countdown
              LoadingPlaceholder(
                width: 150,
                color: Theme.of(context).colorScheme.surface.withOpacity(0.5),
              ),
            ],
          ),
          child: Container(
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kBorderRadius),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                const LoadingPlaceholder.expandedWidth(height: 30),
                const SizedBox(height: 5),
                const LoadingPlaceholder.expandedWidth(
                  height: 30,
                  padding: EdgeInsets.only(right: 80),
                ),
                const SizedBox(height: kListSpacing),
                // Description
                const LoadingPlaceholder.expandedWidth(height: 15),
                const SizedBox(height: 5),
                const LoadingPlaceholder.expandedWidth(
                  height: 15,
                  padding: EdgeInsets.only(right: 40),
                ),
                const SizedBox(height: kListSpacing),
                // Button
                FilledButton.tonal(
                  onPressed: null,
                  child: ColoredBox(
                    color: Theme.of(context)
                        .colorScheme
                        .surfaceVariant
                        .withOpacity(0.5),
                    child: const SizedBox(width: double.infinity),
                  ),
                ),
              ],
            ),
          ),
        )
            .animate(
              onComplete: (controller) => controller.repeat(reverse: true),
            )
            .fade(duration: 1.seconds, begin: 0.3, curve: Curves.easeInOut),
      ],
    );
  }
}
