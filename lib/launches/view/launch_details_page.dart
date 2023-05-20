// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/helpers/helpers.dart';
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

class LaunchDetailsView extends StatefulWidget {
  const LaunchDetailsView({
    required this.launch,
    super.key,
  });

  final Launch launch;

  @override
  State<LaunchDetailsView> createState() => _LaunchDetailsViewState();
}

class _LaunchDetailsViewState extends State<LaunchDetailsView> {
  final scrollController = ScrollController();

  bool hasAppBarCollapsed = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // This code allows for changing colors of the status bar
    // and the app bar when scrolling to allow for better readability
    // (white text when expanded, black text when collapsed).
    // It is not used in dark mode because text
    // is already fairly readable (always white).
    if (!isDarkMode(context)) {
      scrollController.addListener(() {
        if (scrollController.offset > 125) {
          if (!hasAppBarCollapsed) {
            setState(() {
              hasAppBarCollapsed = true;
            });
          }
        } else {
          if (hasAppBarCollapsed) {
            setState(() {
              hasAppBarCollapsed = false;
            });
          }
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return PlatformWidget(
      cupertino: (_) => CupertinoPageScaffold(
        child: CustomScrollView(
          slivers: [
            CupertinoSliverNavigationBar(
              stretch: true,
              border: null,
              largeTitle: AutoSizeText(widget.launch.mission?.name ?? 'N/A'),
            ),
            _Body(
              launch: widget.launch,
            ),
          ],
        ),
      ),
      material: (_) => Scaffold(
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          controller: scrollController,
          slivers: [
            SliverAppBar.medium(
              stretch: true,
              expandedHeight: 200,
              systemOverlayStyle:
                  hasAppBarCollapsed ? null : SystemUiOverlayStyle.light,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                color: hasAppBarCollapsed ? Colors.black : Colors.white,
                onPressed: () => Navigator.of(context).pop(),
              ),
              flexibleSpace: FlexibleSpaceBar(
                stretchModes: const [
                  StretchMode.zoomBackground,
                  StretchMode.blurBackground,
                ],
                titlePadding: const EdgeInsetsDirectional.only(
                  start: 72,
                  bottom: 16,
                  end: 16,
                ),
                background: Stack(
                  fit: StackFit.expand,
                  children: [
                    MissionImage(
                      imageUrl: widget.launch.image ?? '',
                      fit: BoxFit.cover,
                    ),
                    const DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0, 0.5),
                          end: Alignment.center,
                          colors: [
                            Colors.black26,
                            Colors.transparent,
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                title: Text(
                  widget.launch.mission?.name ?? 'N/A',
                  style: TextStyle(
                    color: hasAppBarCollapsed ? Colors.black : Colors.white,
                  ),
                ),
              ),
            ),
            _Body(launch: widget.launch),
          ],
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.launch,
  });

  final Launch launch;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: kBodyPadding,
      sliver: SliverList(
        delegate: SliverChildListDelegate(
          [
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
