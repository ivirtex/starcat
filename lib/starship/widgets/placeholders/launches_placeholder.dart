// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_animate/flutter_animate.dart';

// Project imports:
import 'package:starcat/launches/launches.dart';
import 'package:starcat/shared/shared.dart';

class LaunchesPlaceholder extends StatelessWidget {
  const LaunchesPlaceholder({
    required this.title,
    required this.icon,
    this.delay = Duration.zero,
    super.key,
  });

  final String title;
  final IconData icon;
  final Duration delay;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Section(
          icon: Icon(icon),
          child: Text(title),
        ),
        ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 1,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return const LaunchCardPlaceholder(padding: EdgeInsets.zero);
          },
        )
            .animate(
              delay: delay,
              onPlay: (controller) => controller.repeat(reverse: true),
            )
            .fade(
              begin: 0.3,
              curve: Curves.easeInOut,
              duration: 1.seconds,
            ),
      ],
    );
  }
}
