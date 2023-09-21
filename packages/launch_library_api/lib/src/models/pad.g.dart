// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'pad.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pad _$PadFromJson(Map<String, dynamic> json) => Pad(
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      url: json['url'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      agencyId: json['agency_id'] as int?,
      name: json['name'] as String?,
      infoUrl: json['info_url'] as String?,
      wikiUrl: json['wiki_url'] as String?,
      mapUrl: json['map_url'] as String?,
      mapImage: json['map_image'] as String?,
      totalLaunchCount: json['total_launch_count'] as int?,
      orbitalLaunchAttemptCount: json['orbital_launch_attempt_count'] as int?,
    );

Map<String, dynamic> _$PadToJson(Pad instance) => <String, dynamic>{
      'url': instance.url,
      'agency_id': instance.agencyId,
      'name': instance.name,
      'info_url': instance.infoUrl,
      'wiki_url': instance.wikiUrl,
      'map_url': instance.mapUrl,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'location': instance.location,
      'map_image': instance.mapImage,
      'total_launch_count': instance.totalLaunchCount,
      'orbital_launch_attempt_count': instance.orbitalLaunchAttemptCount,
    };
