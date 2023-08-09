import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:launch_library_api/api.dart' as api;

part 'starship_dashboard_upcoming.g.dart';

@JsonSerializable()
class StarshipDashboardUpcoming extends Equatable {
  const StarshipDashboardUpcoming({
    this.launches = const [],
    this.events = const [],
  });

  factory StarshipDashboardUpcoming.fromJson(Map<String, dynamic> json) =>
      _$StarshipDashboardUpcomingFromJson(json);

  factory StarshipDashboardUpcoming.fromApi(
      api.StarshipDashboardUpcoming data) {
    return StarshipDashboardUpcoming(
      launches: data.launches.map(Launch.fromApi).toList(),
      events: data.events.map(Event.fromApi).toList(),
    );
  }

  final List<Launch> launches;
  final List<Event> events;

  Map<String, dynamic> toJson() => _$StarshipDashboardUpcomingToJson(this);

  @override
  List<Object?> get props => [
        launches,
        events,
      ];
}
