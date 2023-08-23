// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/launches/launches.dart';
import 'package:starcat/shared/shared.dart';

class Launches extends StatelessWidget {
  const Launches({
    required this.launches,
    required this.title,
    required this.icon,
    super.key,
  });

  final List<Launch> launches;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Section(
          icon: Icon(icon),
          child: Text(title),
        ),
        if (launches.isEmpty)
          const Padding(
            padding: EdgeInsets.only(bottom: kListSpacing),
            child: Text('No launches currently available.'),
          )
        else
          ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: launches.length,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final launch = launches[index];

              return LaunchCard(
                launch: launch,
                destination: '/starship/launch/${launch.id}?withHero=true',
                padding: EdgeInsets.zero,
              );
            },
          ),
      ],
    );
  }
}
