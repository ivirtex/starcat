// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'status.g.dart';

enum StatusAbbrev {
  @JsonValue('Go')
  go('Go'),
  @JsonValue('TBC')
  tbc('TBC'),
  @JsonValue('Success')
  success('Success'),
  @JsonValue('Failure')
  failure('Failure'),
  @JsonValue('Hold')
  hold('Hold'),
  @JsonValue('In Flight')
  inFlight('In Flight'),
  @JsonValue('Partial Failure')
  partialFailure('Partial Failure'),
  @JsonValue('TBD')
  tbd('TBD');

  const StatusAbbrev(this.name);

  final String? name;
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
