// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:url_launcher/url_launcher.dart';

// Project imports:
import 'package:starcat/explore/explore.dart';
import 'package:starcat/helpers/helpers.dart';
import 'package:starcat/shared/shared.dart';

class LaunchPadMap extends StatefulWidget {
  const LaunchPadMap({
    super.key,
    this.pad,
  });

  final Pad? pad;

  @override
  State<LaunchPadMap> createState() => _LaunchPadMapState();
}

class _LaunchPadMapState extends State<LaunchPadMap>
    with AutomaticKeepAliveClientMixin {
  final Completer<GoogleMapController> _controller = Completer();

  late String _mapStyle;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _loadMapStyle(_controller.future);
  }

  @override
  bool get wantKeepAlive => true;

  Future<void> _loadMapStyle(Future<GoogleMapController>? controller) async {
    if (!_isDataValid()) {
      return;
    }

    _mapStyle = await rootBundle.loadString(
      isDarkMode(context)
          ? 'assets/map_styles/dark_mode.json'
          : 'assets/map_styles/light_mode.json',
    );

    await controller?.then((value) => value.setMapStyle(_mapStyle));
  }

  void _launchMapView() {
    try {
      final launchByName =
          widget.pad!.name != null && widget.pad!.name != 'Unknown Pad';

      MapsLauncher.launchQuery(
        launchByName ? widget.pad!.name! : widget.pad!.location!.name ?? 'N/A',
      );
    } catch (e) {
      final url = Uri.parse(
        'https://www.google.com/maps/search/?api=1&query=${widget.pad!.location!.name}',
      );

      launchUrl(url);
    }
  }

  bool _isDataValid() {
    return widget.pad != null &&
        widget.pad!.latitude != null &&
        widget.pad!.longitude != null &&
        widget.pad!.latitude != '0' &&
        widget.pad!.longitude != '0';
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return ExploreCard(
      padding: EdgeInsets.zero,
      title: const Row(
        children: [
          Icon(Icons.location_on_rounded, size: 14),
          SizedBox(width: 5),
          Text('Launch Pad'),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: SizedBox(
              height: 150,
              child: _isDataValid()
                  ? GoogleMap(
                      zoomControlsEnabled: false,
                      myLocationButtonEnabled: false,
                      gestureRecognizers: const <Factory<
                          OneSequenceGestureRecognizer>>{
                        Factory<OneSequenceGestureRecognizer>(
                          EagerGestureRecognizer.new,
                        ),
                      },
                      onMapCreated: (GoogleMapController controller) async {
                        _controller.complete(controller);
                      },
                      markers: {
                        Marker(
                          markerId: MarkerId(widget.pad!.name!),
                          position: LatLng(
                            double.parse(widget.pad!.latitude!),
                            double.parse(widget.pad!.longitude!),
                          ),
                        ),
                      },
                      initialCameraPosition: CameraPosition(
                        zoom: 5,
                        target: LatLng(
                          double.parse(widget.pad!.latitude!),
                          double.parse(widget.pad!.longitude!),
                        ),
                      ),
                    )
                  : ColoredBox(
                      color: isDarkMode(context) ? Colors.black : Colors.white,
                      child: Center(
                        child: Text(
                          'N/A',
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                        ),
                      ),
                    ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.pad?.name ?? 'N/A',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(widget.pad?.location?.name ?? 'N/A'),
                    ],
                  ),
                ),
                const Spacer(),
                ThemedButton(
                  onPressed: _isDataValid() ? _launchMapView : null,
                  child: const Icon(Icons.map_rounded),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
