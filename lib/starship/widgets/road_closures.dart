// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:starcat/explore/explore.dart';
import 'package:starcat/shared/shared.dart';

class RoadClosures extends StatelessWidget {
  const RoadClosures({
    required this.roadClosures,
    super.key,
  });

  final List<RoadClosureStatus> roadClosures;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Section(
          icon: Icon(Icons.remove_road_rounded),
          child: Text('Starbase Road Closures'),
        ),
        ExploreCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (roadClosures.isEmpty)
                const Text('No road closures currently scheduled.')
              else
                for (final closure in roadClosures) Text(closure.name),
            ],
          ),
        ),
      ],
    );
  }
}
