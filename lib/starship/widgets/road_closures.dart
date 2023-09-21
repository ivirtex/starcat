// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:intl/intl.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/explore/explore.dart';
import 'package:starcat/helpers/format_date.dart';
import 'package:starcat/shared/shared.dart';

class RoadClosures extends StatelessWidget {
  const RoadClosures({
    required this.roadClosures,
    super.key,
  });

  final List<RoadClosure> roadClosures;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Section(
          icon: Icon(Icons.remove_road_rounded),
          child: Text('Starbase Road Closures'),
        ),
        if (roadClosures.isEmpty)
          const ExploreCard(
            child: Text('No road closures currently scheduled.'),
          )
        else
          ListView.separated(
            shrinkWrap: true,
            itemCount: roadClosures.length,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) =>
                const SizedBox(height: kListSpacing),
            itemBuilder: (context, index) {
              final closure = roadClosures[index];

              return ExploreCard(
                title: Text(closure.title!),
                trailing: Text(closure.status!.name ?? 'Status N/A'),
                child: Builder(
                  builder: (context) {
                    final startDateString = '${formatDate(
                      closure.windowStart,
                      dateFormat: DateFormat.Hm(),
                    )} ${formatDate(
                      closure.windowStart,
                      dateFormat: DateFormat.yMMMd(),
                    )}';

                    final endDateString = '${formatDate(
                      closure.windowEnd,
                      dateFormat: DateFormat.Hm(),
                    )} ${formatDate(
                      closure.windowEnd,
                      dateFormat: DateFormat.yMMMd(),
                    )}';

                    return Text('$startDateString to $endDateString');
                  },
                ),
              );
            },
          ),
      ],
    );
  }
}
