// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_api/api.dart' as api;

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
    required this.id,
    this.name,
    this.abbrev,
    this.description,
  });

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);

  factory Status.fromApi(api.LaunchStatus apiStatusModel) {
    return Status(
      id: apiStatusModel.id,
      name: apiStatusModel.name,
      abbrev: _parseStatusAbbrev(apiStatusModel.abbrev),
      description: apiStatusModel.description,
    );
  }

  final int id;
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

StatusAbbrev _parseStatusAbbrev(String? statusAbbrev) {
  switch (statusAbbrev) {
    case 'Go':
      return StatusAbbrev.go;
    case 'TBC':
      return StatusAbbrev.tbc;
    case 'Success':
      return StatusAbbrev.success;
    case 'Failure':
      return StatusAbbrev.failure;
    case 'Hold':
      return StatusAbbrev.hold;
    case 'In Flight':
      return StatusAbbrev.inFlight;
    case 'Partial Failure':
      return StatusAbbrev.partialFailure;
    case 'TBD':
    default:
      return StatusAbbrev.tbd;
  }
}
