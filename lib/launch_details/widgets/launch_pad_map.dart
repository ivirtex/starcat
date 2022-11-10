// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:spacex_info_repository/spacex_info_repository.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';

class LaunchPadMap extends StatelessWidget {
  const LaunchPadMap({
    super.key,
    required Completer<GoogleMapController> controller,
    required this.pad,
  }) : _controller = controller;

  final Completer<GoogleMapController> _controller;
  final Pad pad;

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
                    markerId: MarkerId(pad.name!),
                    position: LatLng(
                      double.parse(pad.latitude!),
                      double.parse(pad.longitude!),
                    ),
                  ),
                },
                initialCameraPosition: CameraPosition(
                  zoom: 10,
                  target: LatLng(
                    double.parse(pad.latitude!),
                    double.parse(pad.longitude!),
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
                  pad.name!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(pad.location?.name ?? 'N/A'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
