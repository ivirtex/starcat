// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'launch_service_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LaunchServiceProvider _$LaunchServiceProviderFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'LaunchServiceProvider',
      json,
      ($checkedConvert) {
        final val = LaunchServiceProvider(
          id: $checkedConvert('id', (v) => v as int),
          url: $checkedConvert('url', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          featured: $checkedConvert('featured', (v) => v as bool?),
          type: $checkedConvert('type', (v) => v as String?),
          countryCode: $checkedConvert('country_code', (v) => v as String?),
          abbrev: $checkedConvert('abbrev', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
          administrator: $checkedConvert('administrator', (v) => v as String?),
          foundingYear: $checkedConvert('founding_year', (v) => v as String?),
          launchers: $checkedConvert('launchers', (v) => v as String?),
          spacecraft: $checkedConvert('spacecraft', (v) => v as String?),
          totalLaunchCount:
              $checkedConvert('total_launch_count', (v) => v as int?),
          consecutiveSuccessfulLaunches: $checkedConvert(
              'consecutive_successful_launches', (v) => v as int?),
          successfulLaunches:
              $checkedConvert('successful_launches', (v) => v as int?),
          failedLaunches: $checkedConvert('failed_launches', (v) => v as int?),
          pendingLaunches:
              $checkedConvert('pending_launches', (v) => v as int?),
          consecutiveSuccessfulLandings: $checkedConvert(
              'consecutive_successful_landings', (v) => v as int?),
          successfulLandings:
              $checkedConvert('successful_landings', (v) => v as int?),
          failedLandings: $checkedConvert('failed_landings', (v) => v as int?),
          attemptedLandings:
              $checkedConvert('attempted_landings', (v) => v as int?),
          infoUrl: $checkedConvert('info_url', (v) => v as String?),
          wikiUrl: $checkedConvert('wiki_url', (v) => v as String?),
          logoUrl: $checkedConvert('logo_url', (v) => v as String?),
          imageUrl: $checkedConvert('image_url', (v) => v as String?),
          nationUrl: $checkedConvert('nation_url', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'countryCode': 'country_code',
        'foundingYear': 'founding_year',
        'totalLaunchCount': 'total_launch_count',
        'consecutiveSuccessfulLaunches': 'consecutive_successful_launches',
        'successfulLaunches': 'successful_launches',
        'failedLaunches': 'failed_launches',
        'pendingLaunches': 'pending_launches',
        'consecutiveSuccessfulLandings': 'consecutive_successful_landings',
        'successfulLandings': 'successful_landings',
        'failedLandings': 'failed_landings',
        'attemptedLandings': 'attempted_landings',
        'infoUrl': 'info_url',
        'wikiUrl': 'wiki_url',
        'logoUrl': 'logo_url',
        'imageUrl': 'image_url',
        'nationUrl': 'nation_url'
      },
    );

Map<String, dynamic> _$LaunchServiceProviderToJson(
        LaunchServiceProvider instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'name': instance.name,
      'featured': instance.featured,
      'type': instance.type,
      'country_code': instance.countryCode,
      'abbrev': instance.abbrev,
      'description': instance.description,
      'administrator': instance.administrator,
      'founding_year': instance.foundingYear,
      'launchers': instance.launchers,
      'spacecraft': instance.spacecraft,
      'total_launch_count': instance.totalLaunchCount,
      'consecutive_successful_launches': instance.consecutiveSuccessfulLaunches,
      'successful_launches': instance.successfulLaunches,
      'failed_launches': instance.failedLaunches,
      'pending_launches': instance.pendingLaunches,
      'consecutive_successful_landings': instance.consecutiveSuccessfulLandings,
      'successful_landings': instance.successfulLandings,
      'failed_landings': instance.failedLandings,
      'attempted_landings': instance.attemptedLandings,
      'info_url': instance.infoUrl,
      'wiki_url': instance.wikiUrl,
      'logo_url': instance.logoUrl,
      'image_url': instance.imageUrl,
      'nation_url': instance.nationUrl,
    };
