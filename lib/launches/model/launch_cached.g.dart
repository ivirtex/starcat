// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_cached.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LaunchCached _$LaunchCachedFromJson(Map<String, dynamic> json) => LaunchCached(
      launch: Launch.fromJson(json['launch'] as Map<String, dynamic>),
      expirationDate: DateTime.parse(json['expirationDate'] as String),
    );

Map<String, dynamic> _$LaunchCachedToJson(LaunchCached instance) =>
    <String, dynamic>{
      'launch': instance.launch,
      'expirationDate': instance.expirationDate.toIso8601String(),
    };
