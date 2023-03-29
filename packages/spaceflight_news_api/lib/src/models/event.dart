// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'event.g.dart';

@JsonSerializable()
class Event extends Equatable {
  const Event({
    required this.eventId,
    required this.provider,
  });

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);

  final int eventId;
  final String provider;

  @override
  List<Object?> get props => [
        eventId,
        provider,
      ];
}
