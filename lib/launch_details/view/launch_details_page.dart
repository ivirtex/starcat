// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
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
  final Completer<GoogleMapController> _controller = Completer();

  late String mapStyle;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    loadMapStyle(_controller.future);
  }

  Future<void> loadMapStyle(Future<GoogleMapController>? controller) async {
    mapStyle = await rootBundle.loadString(
      Theme.of(context).brightness == Brightness.dark
          ? 'assets/map_styles/dark_mode.json'
          : 'assets/map_styles/light_mode.json',
    );

    await controller?.then((value) => value.setMapStyle(mapStyle));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.launch.mission?.name ?? 'N/A'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                if (widget.launch.image != null)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: MissionImage(
                        imageUrl: widget.launch.image ?? '',
                      ),
                    ),
                  ),
                const SizedBox(height: 10),
                Section(name: widget.launch.mission?.description ?? 'N/A'),
                const SizedBox(height: 10),
                LaunchDateCard(date: widget.launch.net),
                const SizedBox(height: 10),
                LaunchVehicleCard(rocket: widget.launch.rocket),
                const SizedBox(height: 10),
                LaunchPadMap(
                  controller: _controller,
                  pad: widget.launch.pad!,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
