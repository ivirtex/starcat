// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:spacex_info_repository/spacex_info_repository.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';
import 'package:falcon/helpers/helpers.dart';

class LaunchPadMap extends StatefulWidget {
  const LaunchPadMap({
    super.key,
    required this.pad,
  });

  final Pad pad;

  @override
  State<LaunchPadMap> createState() => _LaunchPadMapState();
}

class _LaunchPadMapState extends State<LaunchPadMap> {
  final Completer<GoogleMapController> _controller = Completer();

  late String mapStyle;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    loadMapStyle(_controller.future);
  }

  Future<void> loadMapStyle(Future<GoogleMapController>? controller) async {
    mapStyle = await rootBundle.loadString(
      isDarkMode(context)
          ? 'assets/map_styles/dark_mode.json'
          : 'assets/map_styles/light_mode.json',
    );

    await controller?.then((value) => value.setMapStyle(mapStyle));
  }

  @override
  Widget build(BuildContext context) {
    return ExploreCard(
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
                onMapCreated: (GoogleMapController controller) async {
                  _controller.complete(controller);
                },
                markers: {
                  Marker(
                    markerId: MarkerId(widget.pad.name!),
                    position: LatLng(
                      double.parse(widget.pad.latitude!),
                      double.parse(widget.pad.longitude!),
                    ),
                  ),
                },
                initialCameraPosition: CameraPosition(
                  zoom: 10,
                  target: LatLng(
                    double.parse(widget.pad.latitude!),
                    double.parse(widget.pad.longitude!),
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
                  widget.pad.name!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(widget.pad.location?.name ?? 'N/A'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
