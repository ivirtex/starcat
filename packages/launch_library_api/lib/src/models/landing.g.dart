// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'landing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Landing _$LandingFromJson(Map<String, dynamic> json) => Landing(
      attempt: json['attempt'] as bool?,
      success: json['success'] as bool?,
      description: json['description'] as String?,
      location: json['location'] == null
          ? null
          : LandingLocation.fromJson(json['location'] as Map<String, dynamic>),
      type: json['type'] == null
          ? null
          : LandingType.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LandingToJson(Landing instance) => <String, dynamic>{
      'attempt': instance.attempt,
      'success': instance.success,
      'description': instance.description,
      'location': instance.location,
      'type': instance.type,
    };
