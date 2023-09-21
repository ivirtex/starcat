// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'landing_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LandingLocation _$LandingLocationFromJson(Map<String, dynamic> json) =>
    LandingLocation(
      name: json['name'] as String?,
      abbrev: json['abbrev'] as String?,
      description: json['description'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      successfulLandings: json['successful_landings'] as int?,
    );

Map<String, dynamic> _$LandingLocationToJson(LandingLocation instance) =>
    <String, dynamic>{
      'name': instance.name,
      'abbrev': instance.abbrev,
      'description': instance.description,
      'location': instance.location,
      'successful_landings': instance.successfulLandings,
    };
