// Flutter imports:
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex_info_repository/spacex_info_repository.dart';

// Project imports:
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
    return PlatformWidget(
      cupertino: (context) => CupertinoPageScaffold(
        child: CustomScrollView(
          slivers: [
            CupertinoSliverNavigationBar(
              stretch: true,
              border: null,
              largeTitle: AutoSizeText(launch.mission?.name ?? 'N/A'),
            ),
            SliverToBoxAdapter(
              child: Body(launch: launch),
            ),
          ],
        ),
      ),
      material: (_) => Scaffold(
        appBar: AppBar(
          title: Text(launch.mission?.name ?? 'N/A'),
        ),
        body: ListView(
          children: [
            Body(launch: launch),
          ],
        ),
      ),
    );
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
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          if (launch.image != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: MissionImage(
                  imageUrl: launch.image ?? '',
                ),
              ),
            ),
          const SizedBox(height: 10),
          Section(name: launch.mission?.description ?? 'N/A'),
          const SizedBox(height: 10),
          LaunchDateCard(date: launch.net),
          const SizedBox(height: 10),
          LaunchVehicleCard(vehicle: launch.rocket),
          const SizedBox(height: 10),
          LaunchPadMap(pad: launch.pad!),
        ],
      ),
    );
  }
}
