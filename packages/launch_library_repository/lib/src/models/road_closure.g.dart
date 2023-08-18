// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'road_closure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoadClosure _$RoadClosureFromJson(Map<String, dynamic> json) => $checkedCreate(
      'RoadClosure',
      json,
      ($checkedConvert) {
        final val = RoadClosure(
          id: $checkedConvert('id', (v) => v as int?),
          title: $checkedConvert('title', (v) => v as String?),
          status: $checkedConvert(
              'status',
              (v) => v == null
                  ? null
                  : RoadClosureStatus.fromJson(v as Map<String, dynamic>)),
          windowStart: $checkedConvert('window_start',
              (v) => v == null ? null : DateTime.parse(v as String)),
          windowEnd: $checkedConvert('window_end',
              (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'windowStart': 'window_start',
        'windowEnd': 'window_end'
      },
    );

Map<String, dynamic> _$RoadClosureToJson(RoadClosure instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'status': instance.status,
      'window_start': instance.windowStart?.toIso8601String(),
      'window_end': instance.windowEnd?.toIso8601String(),
    };
