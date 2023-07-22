// Package imports:
import 'package:equatable/equatable.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

enum TrackingMethod { notifications, liveActivity }

class TrackedLaunch extends Equatable {
  const TrackedLaunch({
    required this.launch,
    required this.trackingMethod,
  });

  final Launch launch;
  final TrackingMethod trackingMethod;

  @override
  List<Object> get props => [launch, trackingMethod];
}
