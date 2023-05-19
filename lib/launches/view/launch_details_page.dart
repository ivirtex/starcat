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
import 'package:starcat/helpers/format_date.dart';
import 'package:starcat/launches/launches.dart';
import 'package:starcat/shared/shared.dart';

class LaunchDetailsPage extends StatefulWidget {
  const LaunchDetailsPage({
    required this.launchId,
    super.key,
  });

  final String launchId;

  @override
  State<LaunchDetailsPage> createState() => _LaunchDetailsPageState();
}

class _LaunchDetailsPageState extends State<LaunchDetailsPage> {
  @override
  void initState() {
    super.initState();

    context
        .read<LaunchesBloc>()
        .add(LaunchesDetailsRequested(launchId: widget.launchId));
  }

  @override
  Widget build(BuildContext context) {
    late Launch launch;

    final upcomingLaunches =
        context.watch<LaunchesBloc>().state.upcomingLaunches;
    final pastLaunches = context.watch<LaunchesBloc>().state.pastLaunches;

    if (upcomingLaunches.any((element) => element.id == widget.launchId)) {
      launch = upcomingLaunches
          .firstWhere((element) => element.id == widget.launchId);
    } else {
      launch =
          pastLaunches.firstWhere((element) => element.id == widget.launchId);
    }

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
    return PlatformWidget(
      cupertino: (_) => CupertinoPageScaffold(
        child: CustomScrollView(
          slivers: [
            CupertinoSliverNavigationBar(
              stretch: true,
              border: null,
              largeTitle: AutoSizeText(launch.mission?.name ?? 'N/A'),
            ),
            Body(
              launch: launch,
            ),
          ],
        ),
      ),
      material: (_) => Scaffold(
        body: CustomScrollView(
          slivers: [
            // TODO(ivirtex): consider showing mission image in flexibleSpace
            SliverAppBar.medium(
              stretch: true,
              title: AutoSizeText(launch.mission?.name ?? 'N/A'),
              actions: [
                IconButton(
                  icon: const Icon(Icons.ios_share_rounded),
                  onPressed: () => Share.share(composeShareText(launch)),
                ),
              ],
            ),
            Body(launch: launch),
          ],
        ),
      ),
    );
  }

  String composeShareText(Launch launch) {
    final net = formatDate(launch.net);
    final launchName = launch.name;
    final launchPad = launch.pad?.name;

    // ignore: lines_longer_than_80_chars
    return '$launchName launch date is NET $net and will be launching from $launchPad.';
  }
}

class Body extends StatelessWidget {
  const Body({
    required this.launch,
    super.key,
  });

  final Launch launch;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: kBodyPadding,
      sliver: SliverList(
        delegate: SliverChildListDelegate(
          [
            Column(
              children: [
                const SizedBox(height: kListSpacing),
                ClipRRect(
                  borderRadius: BorderRadius.circular(kBorderRadius),
                  child: MissionImage(imageUrl: launch.image ?? ''),
                ),
              ],
            ),
            const SizedBox(height: kListSpacing),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                launch.mission?.description ?? 'No description',
              ),
            ),
            const SizedBox(height: kListSpacing),
            LaunchDateCard(
              date: launch.net,
              status: launch.status,
              launchName: launch.name,
              optionalFailReason: launch.failreason,
              launchDataForNotifications: launch,
            ),
            const SizedBox(height: kListSpacing),
            LaunchVehicleCard(vehicle: launch.rocket),
            const SizedBox(height: kListSpacing),
            LaunchPadMap(pad: launch.pad),
            const SizedBox(height: kListSpacing),
            FirstStageLandingCard(
              landing: launch.rocket?.launcherStage?.firstOrNull?.landing,
            ),
            const SizedBox(height: kListSpacing),
            TargetOrbitCard(orbit: launch.mission?.orbit),
            const SizedBox(height: kListSpacing),
          ]
              .animate(interval: kListAnimationIntervalDuration)
              .fade(duration: kListAnimationFadeDuration, delay: 100.ms),
        ),
      ),
    );
  }
}
