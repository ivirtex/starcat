// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'road_closure_status.g.dart';

@JsonSerializable()
class RoadClosureStatus extends Equatable {
  const RoadClosureStatus({
    this.name,
  });

  factory RoadClosureStatus.fromJson(Map<String, dynamic> json) =>
      _$RoadClosureStatusFromJson(json);

  final String? name;

  Map<String, dynamic> toJson() => _$RoadClosureStatusToJson(this);

  @override
  List<Object?> get props => [
        name,
      ];
}
