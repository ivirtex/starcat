// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'notice_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NoticeType _$NoticeTypeFromJson(Map<String, dynamic> json) => $checkedCreate(
      'NoticeType',
      json,
      ($checkedConvert) {
        final val = NoticeType(
          id: $checkedConvert('id', (v) => v as int),
          name: $checkedConvert('name', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$NoticeTypeToJson(NoticeType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
