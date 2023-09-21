// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Status _$StatusFromJson(Map<String, dynamic> json) => Status(
      name: json['name'] as String?,
      abbrev: $enumDecodeNullable(_$StatusAbbrevEnumMap, json['abbrev']),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$StatusToJson(Status instance) => <String, dynamic>{
      'name': instance.name,
      'abbrev': _$StatusAbbrevEnumMap[instance.abbrev],
      'description': instance.description,
    };

const _$StatusAbbrevEnumMap = {
  StatusAbbrev.go: 'Go',
  StatusAbbrev.tbc: 'TBC',
  StatusAbbrev.success: 'Success',
  StatusAbbrev.failure: 'Failure',
  StatusAbbrev.hold: 'Hold',
  StatusAbbrev.inFlight: 'In Flight',
  StatusAbbrev.partialFailure: 'Partial Failure',
  StatusAbbrev.tbd: 'TBD',
};
