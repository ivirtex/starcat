// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'package:launch_library_api/launch_library_api.dart';

part 'starship_dashboard_upcoming.g.dart';

@JsonSerializable()
class StarshipLaunchesAndEvents extends Equatable {
  const StarshipLaunchesAndEvents({
    this.launches = const [],
    this.events = const [],
  });

  factory StarshipLaunchesAndEvents.fromJson(Map<String, dynamic> json) =>
      _$StarshipLaunchesAndEventsFromJson(json);

  final List<Launch> launches;
  final List<Event> events;

  Map<String, dynamic> toJson() => _$StarshipLaunchesAndEventsToJson(this);

  @override
  List<Object?> get props => [
        launches,
        events,
      ];
}
