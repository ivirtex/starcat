// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:launch_library_api/api.dart' as api;

part 'starship_dashboard.g.dart';

@JsonSerializable()
class StarshipDashboard extends Equatable {
  const StarshipDashboard({
    this.updates = const [],
    this.upcoming,
    this.previous,
    this.roadClosures = const [],
    this.notices = const [],
    this.liveStreams = const [],
    this.vehicles = const [],
    this.orbiters = const [],
  });

  factory StarshipDashboard.fromJson(Map<String, dynamic> json) =>
      _$StarshipDashboardFromJson(json);

  factory StarshipDashboard.fromApi(api.StarshipDashboard data) {
    return StarshipDashboard(
      updates: data.updates.map(Update.fromApi).toList(),
      upcoming: data.upcoming != null
          ? StarshipLaunchesAndEvents.fromApi(data.upcoming!)
          : null,
      previous: data.previous != null
          ? StarshipLaunchesAndEvents.fromApi(data.previous!)
          : null,
      roadClosures: data.roadClosures.map(RoadClosureStatus.fromApi).toList(),
      notices: data.notices.map(NoticeType.fromApi).toList(),
      liveStreams: data.liveStreams.map(LiveStream.fromApi).toList(),
      vehicles: data.vehicles.map(Launcher.fromApiDetail).toList(),
      orbiters: data.orbiters.map(Orbiter.fromApi).toList(),
    );
  }

  final List<Update> updates;
  final StarshipLaunchesAndEvents? upcoming;
  final StarshipLaunchesAndEvents? previous;
  final List<RoadClosureStatus> roadClosures;
  final List<NoticeType> notices;
  final List<LiveStream> liveStreams;
  final List<Launcher> vehicles;
  final List<Orbiter> orbiters;

  Map<String, dynamic> toJson() => _$StarshipDashboardToJson(this);

  @override
  List<Object?> get props => [
        updates,
        upcoming,
        previous,
        roadClosures,
        notices,
        liveStreams,
        vehicles,
        orbiters,
      ];
}
