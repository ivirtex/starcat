// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spacex_info_repository/spacex_info_repository.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';
import 'package:falcon/shared/shared.dart';

class LaunchDetailsPage extends StatelessWidget {
  const LaunchDetailsPage({
    required this.launchId,
    super.key,
  });

  final String launchId;

  @override
  Widget build(BuildContext context) {
    final launch = context
        .read<ExploreCubit>()
        .state
        .launches!
        .results!
        .firstWhere((launch) => launch.id == launchId);

    return LaunchDetailsView(launch: launch);
  }
}

class LaunchDetailsView extends StatelessWidget {
  const LaunchDetailsView({
    required this.launch,
    super.key,
  });

  final Launch launch;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(launch.name!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ExploreCard(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 5),
                    DataLine(
                      icon: const Icon(FontAwesomeIcons.helicopterSymbol),
                      leftSide: const Text('Launch Location: '),
                      rightSide: Text(launch.pad?.name ?? 'N/A'),
                    ),
                  ],
                ),
              ),
              SvgPicture.asset('assets/rockets/falcon_heavy/fh.svg'),
            ],
          ),
        ),
      ),
    );
  }
}
