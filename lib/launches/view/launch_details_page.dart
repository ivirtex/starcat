// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:share_plus/share_plus.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/launches/launches.dart';
import 'package:starcat/shared/shared.dart';

class LaunchDetailsPage extends StatelessWidget {
  const LaunchDetailsPage({
    required this.launchId,
    super.key,
  });

  final String launchId;

  @override
  Widget build(BuildContext context) {
    final launch = context
        .read<LaunchesBloc>()
        .state
        .launches
        .firstWhere((launch) => launch.id == launchId);

    final isUpcoming =
        launch.id == context.read<LaunchesBloc>().state.launches.first.id;

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
            Body(
              launch: launch,
              isUpcoming: isUpcoming,
            ),
          ],
        ),
      ),
      material: (_) => Scaffold(
        body: CustomScrollView(
          slivers: [
            // TODO(ivirtex): think about showing mission image in flexibleSpace
            SliverAppBar.medium(
              stretch: true,
              title: AutoSizeText(launch.mission.name ?? 'N/A'),
              actions: [
                IconButton(
                  icon: const Icon(Icons.ios_share_rounded),
                  onPressed: () => Share.share(launch.name),
                ),
              ],
            ),
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
    return SliverPadding(
      padding: kBodyPadding,
      sliver: SliverList(
        delegate: SliverChildListDelegate(
          [
            if (launch.image != null)
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(kBorderRadius),
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
          ]
              .animate(interval: kListAnimationIntervalDuration)
              .fade(duration: kListAnimationFadeDuration, delay: 100.ms),
        ),
      ),
    );
  }
}
