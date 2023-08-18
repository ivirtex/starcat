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
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (roadClosures.isEmpty)
              const Padding(
                padding: EdgeInsets.only(bottom: kListSpacing),
                child: Text('No road closures currently scheduled.'),
              )
            else
              ListView.builder(
                shrinkWrap: true,
                itemCount: roadClosures.length,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final closure = roadClosures[index];

                  return Padding(
                    padding: const EdgeInsets.only(bottom: kListSpacing),
                    child: ExploreCard(
                      title: Text(closure.title!),
                      trailing: Text(closure.status!.name),
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
                    ),
                  );
                },
              ),
          ],
        ),
      ],
    );
  }
}
