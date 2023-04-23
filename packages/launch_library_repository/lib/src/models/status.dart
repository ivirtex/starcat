// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'status.g.dart';

enum StatusAbbrev {
  @JsonValue('Go')
  go,
  @JsonValue('TBD')
  tbd,
  @JsonValue('Success')
  success,
  @JsonValue('Failure')
  failure,
  @JsonValue('Hold')
  hold,
  @JsonValue('In Flight')
  inFlight,
  @JsonValue('Partial Failure')
  partialFailure,
  @JsonValue('TBC')
  tbc,
}

@JsonSerializable()
class Status extends Equatable {
  const Status({
    this.name,
    this.abbrev,
    this.description,
  });

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);

  final String? name;
  final StatusAbbrev? abbrev;
  final String? description;

  Map<String, dynamic> toJson() => _$StatusToJson(this);

  @override
  List<Object?> get props => [
        name,
        abbrev,
        description,
      ];
}
