// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Status _$StatusFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Status',
      json,
      ($checkedConvert) {
        final val = Status(
          abbrev: $checkedConvert(
              'abbrev', (v) => $enumDecode(_$StatusAbbrevEnumMap, v)),
          name: $checkedConvert('name', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$StatusToJson(Status instance) => <String, dynamic>{
      'name': instance.name,
      'abbrev': _$StatusAbbrevEnumMap[instance.abbrev]!,
      'description': instance.description,
    };

const _$StatusAbbrevEnumMap = {
  StatusAbbrev.go: 'Go',
  StatusAbbrev.tbd: 'TBD',
  StatusAbbrev.success: 'Success',
  StatusAbbrev.failure: 'Failure',
  StatusAbbrev.hold: 'Hold',
  StatusAbbrev.inFlight: 'In Flight',
  StatusAbbrev.partialFailure: 'Partial Failure',
  StatusAbbrev.tbc: 'TBC',
};
