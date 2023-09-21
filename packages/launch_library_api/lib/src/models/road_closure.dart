import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_api/launch_library_api.dart';

part 'road_closure.g.dart';

@JsonSerializable()
class RoadClosure extends Equatable {
  const RoadClosure({
    this.title,
    this.status,
    this.windowStart,
    this.windowEnd,
  });

  factory RoadClosure.fromJson(Map<String, dynamic> json) =>
      _$RoadClosureFromJson(json);

  final String? title;
  final RoadClosureStatus? status;
  final DateTime? windowStart;
  final DateTime? windowEnd;

  Map<String, dynamic> toJson() => _$RoadClosureToJson(this);

  @override
  List<Object?> get props => [
        title,
        status,
        windowStart,
        windowEnd,
      ];
}
