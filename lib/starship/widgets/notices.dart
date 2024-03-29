// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:starcat/constants.dart';
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
        if (notices.isEmpty)
          const ExploreCard(child: Text('No notices recently delivered.'))
        else
          ListView.separated(
            shrinkWrap: true,
            itemCount: notices.length,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) =>
                const SizedBox(height: kListSpacing),
            itemBuilder: (context, index) {
              final notice = notices[index];

              return ExploreCard(
                child: Text(notice.name ?? 'Notice N/A'),
              );
            },
          ),
      ],
    );
  }
}
