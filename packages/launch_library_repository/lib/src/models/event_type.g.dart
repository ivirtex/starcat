// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'event_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventType _$EventTypeFromJson(Map<String, dynamic> json) => $checkedCreate(
      'EventType',
      json,
      ($checkedConvert) {
        final val = EventType(
          id: $checkedConvert('id', (v) => v as int),
          name: $checkedConvert('name', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$EventTypeToJson(EventType instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
