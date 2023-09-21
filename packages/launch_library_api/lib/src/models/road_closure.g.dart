// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'road_closure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoadClosure _$RoadClosureFromJson(Map<String, dynamic> json) => RoadClosure(
      title: json['title'] as String?,
      status: json['status'] == null
          ? null
          : RoadClosureStatus.fromJson(json['status'] as Map<String, dynamic>),
      windowStart: json['window_start'] == null
          ? null
          : DateTime.parse(json['window_start'] as String),
      windowEnd: json['window_end'] == null
          ? null
          : DateTime.parse(json['window_end'] as String),
    );

Map<String, dynamic> _$RoadClosureToJson(RoadClosure instance) =>
    <String, dynamic>{
      'title': instance.title,
      'status': instance.status,
      'window_start': instance.windowStart?.toIso8601String(),
      'window_end': instance.windowEnd?.toIso8601String(),
    };
