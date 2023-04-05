// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:falcon/constants.dart';
import 'package:falcon/explore/explore.dart';
import 'package:falcon/launch_details/launch_details.dart';
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
        .firstWhere((launch) => launch.id == launchId);

    final isUpcoming =
        launch.id == context.read<ExploreCubit>().state.launches!.first.id;

    return LaunchDetailsView(launch: launch, isUpcoming: isUpcoming);
  }
}

class LaunchDetailsView extends StatelessWidget {
  const LaunchDetailsView({
    required this.launch,
    this.isUpcoming = false,
    super.key,
  });

  final Launch launch;
  final bool isUpcoming;

  @override
  Widget build(BuildContext context) {
    return PlatformWidget(
      cupertino: (_) => CupertinoPageScaffold(
        child: CustomScrollView(
          slivers: [
            CupertinoSliverNavigationBar(
              stretch: true,
              border: null,
              largeTitle: AutoSizeText(launch.mission.name ?? 'N/A'),
            ),
            SliverToBoxAdapter(
              child: Body(
                launch: launch,
                isUpcoming: isUpcoming,
              ),
            ),
          ],
        ),
      ),
      material: (_) => Scaffold(
        appBar: AppBar(
          title: Text(launch.mission.name ?? 'N/A'),
        ),
        body: ListView(
          children: [
            Body(
              launch: launch,
              isUpcoming: isUpcoming,
            ),
          ],
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    required this.launch,
    required this.isUpcoming,
    super.key,
  });

  final Launch launch;
  final bool isUpcoming;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kBodyPadding,
      child: Column(
        children: [
          if (launch.image != null)
            Column(
              children: [
                const SizedBox(height: 10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: MissionImage(
                    imageUrl: launch.image ?? '',
                  ),
                ),
              ],
            ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              launch.mission.description ?? 'No description',
            ),
          ),
          const SizedBox(height: 10),
          LaunchDateCard(
            date: launch.net,
            status: launch.status,
            launchName: launch.name,
          ),
          const SizedBox(height: 10),
          LaunchVehicleCard(vehicle: launch.rocket),
          const SizedBox(height: 10),
          LaunchPadMap(pad: launch.pad),
          const SizedBox(height: 10),
          TargetOrbitCard(orbit: launch.mission.orbit),
          const SizedBox(height: 10),
        ].animate(interval: 100.ms).fade(duration: 350.ms, delay: 100.ms),
      ),
    );
  }
}
