// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'launches.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Launches _$LaunchesFromJson(Map<String, dynamic> json) => Launches(
      count: json['count'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => Launch.fromJson(e as Map<String, dynamic>))
          .toList(),
      next: json['next'] as String?,
      previous: json['previous'] as String?,
    );

Map<String, dynamic> _$LaunchesToJson(Launches instance) => <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
