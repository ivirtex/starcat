// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:flutter_animate/flutter_animate.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/helpers/helpers.dart';
import 'package:starcat/launches/launches.dart';

class LaunchDetailsPage extends StatefulWidget {
  const LaunchDetailsPage({
    required this.launch,
    this.withHero = false,
    super.key,
  });

  final Launch launch;
  final bool withHero;

  @override
  State<LaunchDetailsPage> createState() => _LaunchDetailsPageState();
}

class _LaunchDetailsPageState extends State<LaunchDetailsPage> {
  final scrollController = ScrollController();

  bool hasAppBarCollapsed = false;
  Color appBarContentColor = Colors.white;

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
              appBarContentColor = Colors.black;
            });
          }
        } else {
          if (hasAppBarCollapsed) {
            setState(() {
              hasAppBarCollapsed = false;
              appBarContentColor = Colors.white;
            });
          }
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              color: appBarContentColor,
              onPressed: () => Navigator.of(context).pop(),
            ),
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: const [
                StretchMode.zoomBackground,
                StretchMode.blurBackground,
              ],
              background: Stack(
                fit: StackFit.expand,
                children: [
                  HeroMode(
                    enabled: widget.withHero,
                    child: Hero(
                      tag: widget.launch.id,
                      child: MissionImage(
                        imageUrl: widget.launch.image,
                        fit: BoxFit.cover,
                      ),
                    ),
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
                  )
                      .animate(delay: 150.ms)
                      .fadeIn(duration: kListAnimationFadeDuration),
                ],
              ),
              centerTitle: false,
              title: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  widget.launch.mission?.name ?? 'N/A',
                  style: TextStyle(
                    color: appBarContentColor,
                  ),
                )
                    .animate(delay: 150.ms)
                    .fadeIn(duration: kListAnimationFadeDuration),
              ),
            ),
          ),
          _Body(launch: widget.launch),
        ],
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
        delegate: SliverChildListDelegate.fixed(
          [
            const SizedBox(height: kListSpacing),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: kBodyPadding.horizontal / 4),
              child: Text(
                launch.mission?.description ?? 'No description',
              ),
            ),
            const SizedBox(height: kListSpacing),
            LaunchVideoCard(videos: launch.vidURLs),
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
