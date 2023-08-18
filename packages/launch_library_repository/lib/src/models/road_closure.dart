import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_api/api.dart' as api;
import 'package:launch_library_repository/src/models/road_closure_status.dart';

part 'road_closure.g.dart';

@JsonSerializable()
class RoadClosure extends Equatable {
  const RoadClosure({
    required this.id,
    required this.title,
    required this.status,
    required this.windowStart,
    required this.windowEnd,
  });

  factory RoadClosure.fromJson(Map<String, dynamic> json) =>
      _$RoadClosureFromJson(json);

  factory RoadClosure.fromApi(api.RoadClosure data) {
    return RoadClosure(
      id: data.id,
      title: data.title,
      status:
          data.status != null ? RoadClosureStatus.fromApi(data.status!) : null,
      windowStart: data.windowStart,
      windowEnd: data.windowEnd,
    );
  }

  final int? id;
  final String? title;
  final RoadClosureStatus? status;
  final DateTime? windowStart;
  final DateTime? windowEnd;

  Map<String, dynamic> toJson() => _$RoadClosureToJson(this);

  @override
  List<Object?> get props => [
        id,
        title,
        status,
        windowStart,
        windowEnd,
      ];
}
