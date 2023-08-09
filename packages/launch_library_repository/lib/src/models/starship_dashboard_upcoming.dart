import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:launch_library_api/api.dart' as api;

part 'starship_dashboard_upcoming.g.dart';

@JsonSerializable()
class StarshipLaunchesAndEvents extends Equatable {
  const StarshipLaunchesAndEvents({
    this.launches = const [],
    this.events = const [],
  });

  factory StarshipLaunchesAndEvents.fromJson(Map<String, dynamic> json) =>
      _$StarshipLaunchesAndEventsFromJson(json);

  factory StarshipLaunchesAndEvents.fromApi(
    api.StarshipDashboardUpcoming data,
  ) {
    return StarshipLaunchesAndEvents(
      launches: data.launches.map(Launch.fromApi).toList(),
      events: data.events.map(Event.fromApi).toList(),
    );
  }

  final List<Launch> launches;
  final List<Event> events;

  Map<String, dynamic> toJson() => _$StarshipLaunchesAndEventsToJson(this);

  @override
  List<Object?> get props => [
        launches,
        events,
      ];
}
