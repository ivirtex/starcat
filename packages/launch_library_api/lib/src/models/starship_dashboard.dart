// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_api/launch_library_api.dart';

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

  final List<Update> updates;
  final StarshipLaunchesAndEvents? upcoming;
  final StarshipLaunchesAndEvents? previous;
  final List<RoadClosure> roadClosures;
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
