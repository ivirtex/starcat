// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:starcat/explore/explore.dart';
import 'package:starcat/shared/shared.dart';

class Notices extends StatelessWidget {
  const Notices({
    required this.notices,
    super.key,
  });

  final List<NoticeType> notices;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Section(
          icon: Icon(Icons.notifications_rounded),
          child: Text('Starbase Notices'),
        ),
        ExploreCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (notices.isEmpty)
                const Text('No notices recently delivered.')
              else
                for (final closure in notices) Text(closure.name),
            ],
          ),
        ),
      ],
    );
  }
}