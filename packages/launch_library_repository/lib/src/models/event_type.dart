import 'package:equatable/equatable.dart';
import 'package:launch_library_api/api.dart' as api;
import 'package:json_annotation/json_annotation.dart';

part 'event_type.g.dart';

@JsonSerializable()
class EventType extends Equatable {
  const EventType({
    required this.id,
    required this.name,
  });

  factory EventType.fromJson(Map<String, dynamic> json) =>
      _$EventTypeFromJson(json);

  factory EventType.fromApi(api.EventType data) {
    return EventType(
      id: data.id,
      name: data.name ?? 'N/A',
    );
  }

  final int id;
  final String name;

  Map<String, dynamic> toJson() => _$EventTypeToJson(this);

  @override
  List<Object?> get props => [
        id,
        name,
      ];
}
