// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_animate/flutter_animate.dart';

// Project imports:
import 'package:starcat/shared/shared.dart';
import 'package:starcat/starship/starship.dart';

class VehiclesPlaceholder extends StatelessWidget {
  const VehiclesPlaceholder({
    this.delay = Duration.zero,
    super.key,
  });

  final Duration delay;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Section(
          icon: Icon(Icons.rocket_rounded),
          child: Text('Vehicles'),
        ),
        ListView.builder(
          itemCount: 3,
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return const VehicleCard(
              title: LoadingPlaceholder(),
              subtitle: Padding(
                padding: EdgeInsets.only(top: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LoadingPlaceholder.expandedWidth(),
                    SizedBox(height: 8),
                    LoadingPlaceholder(width: 150),
                  ],
                ),
              ),
              status: LoadingPlaceholder(width: 60),
              leading: LoadingPlaceholder(),
            );
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
            )
      ],
    );
  }
}
