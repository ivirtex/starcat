// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:starcat/launches/launches.dart';
import 'package:starcat/starship/starship.dart';

class StarshipLaunchDetailsPage extends StatelessWidget {
  const StarshipLaunchDetailsPage({
    required this.launchId,
    this.withHero = false,
    super.key,
  });

  final String launchId;
  final bool withHero;

  @override
  Widget build(BuildContext context) {
    final launch =
        context.watch<StarshipDashboardBloc>().state.allLaunches.firstWhere(
              (launch) => launch.id == launchId,
            );

    return LaunchDetailsView(
      launch: launch,
      withHero: withHero,
    );
  }
}
