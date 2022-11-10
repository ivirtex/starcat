// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
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
  late GoogleMapController _controller;

  late String mapStyle;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    loadMapStyle();
  }

  Future<void> loadMapStyle() async {
    mapStyle = await rootBundle.loadString(
      Theme.of(context).brightness == Brightness.dark
          ? 'assets/map_styles/dark_mode.json'
          : 'assets/map_styles/light_mode.json',
    );
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
                ExploreCard(
                  title: Row(
                    children: const [
                      Icon(Icons.rocket_launch_rounded, size: 14),
                      SizedBox(width: 5),
                      Text('Launch Vehicle'),
                    ],
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            widget.launch.rocket?.configuration?.fullName ??
                                'N/A',
                          ),
                        ],
                      ),
                      const Spacer(),
                      ThemedOutlinedButton(
                        child: const Text('Learn more'),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                ExploreCard(
                  padding: EdgeInsets.zero,
                  title: Row(
                    children: const [
                      Icon(Icons.location_on_rounded, size: 14),
                      SizedBox(width: 5),
                      Text('Launch Pad'),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // TODO(ivirtex): visual glitch?
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        child: SizedBox(
                          height: 150,
                          child: GoogleMap(
                            zoomControlsEnabled: false,
                            gestureRecognizers: const <
                                Factory<OneSequenceGestureRecognizer>>{
                              Factory<OneSequenceGestureRecognizer>(
                                EagerGestureRecognizer.new,
                              ),
                            },
                            onMapCreated:
                                (GoogleMapController controller) async {
                              _controller = controller;
                              await _controller.setMapStyle(mapStyle);
                            },
                            markers: {
                              Marker(
                                markerId: MarkerId(widget.launch.pad!.name!),
                                position: LatLng(
                                  double.parse(widget.launch.pad!.latitude!),
                                  double.parse(widget.launch.pad!.longitude!),
                                ),
                              ),
                            },
                            initialCameraPosition: CameraPosition(
                              zoom: 10,
                              target: LatLng(
                                double.parse(widget.launch.pad!.latitude!),
                                double.parse(widget.launch.pad!.longitude!),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.launch.pad!.name!,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(widget.launch.pad!.location?.name ?? 'N/A'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
