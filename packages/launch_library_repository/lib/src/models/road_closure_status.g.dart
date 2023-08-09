// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'road_closure_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoadClosureStatus _$RoadClosureStatusFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'RoadClosureStatus',
      json,
      ($checkedConvert) {
        final val = RoadClosureStatus(
          id: $checkedConvert('id', (v) => v as int),
          name: $checkedConvert('name', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$RoadClosureStatusToJson(RoadClosureStatus instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
