import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_api/api.dart' as api;

part 'road_closure_status.g.dart';

@JsonSerializable()
class RoadClosureStatus extends Equatable {
  const RoadClosureStatus({
    required this.id,
    required this.name,
  });

  factory RoadClosureStatus.fromJson(Map<String, dynamic> json) =>
      _$RoadClosureStatusFromJson(json);

  factory RoadClosureStatus.fromApi(api.RoadClosureStatus data) {
    return RoadClosureStatus(
      id: data.id,
      name: data.name,
    );
  }

  final int id;
  final String name;

  Map<String, dynamic> toJson() => _$RoadClosureStatusToJson(this);

  @override
  List<Object?> get props => [
        id,
        name,
      ];
}
