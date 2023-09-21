// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'event_type.g.dart';

@JsonSerializable()
class EventType extends Equatable {
  const EventType({
    this.name,
  });

  factory EventType.fromJson(Map<String, dynamic> json) =>
      _$EventTypeFromJson(json);

  final String? name;

  Map<String, dynamic> toJson() => _$EventTypeToJson(this);

  @override
  List<Object?> get props => [
        name,
      ];
}
