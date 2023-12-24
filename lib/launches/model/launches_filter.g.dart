// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launches_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LaunchesFilter _$LaunchesFilterFromJson(Map<String, dynamic> json) =>
    LaunchesFilter(
      searchQuery: json['searchQuery'] as String? ?? '',
      selectedLaunchProviders:
          (json['selectedLaunchProviders'] as List<dynamic>?)
                  ?.map((e) => $enumDecode(_$LaunchProvidersEnumMap, e))
                  .toSet() ??
              const {},
    );

Map<String, dynamic> _$LaunchesFilterToJson(LaunchesFilter instance) =>
    <String, dynamic>{
      'searchQuery': instance.searchQuery,
      'selectedLaunchProviders': instance.selectedLaunchProviders
          .map((e) => _$LaunchProvidersEnumMap[e]!)
          .toList(),
    };

const _$LaunchProvidersEnumMap = {
  LaunchProviders.spaceX: 'spaceX',
  LaunchProviders.ula: 'ula',
  LaunchProviders.esa: 'esa',
  LaunchProviders.arianespace: 'arianespace',
  LaunchProviders.blueOrigin: 'blueOrigin',
  LaunchProviders.rocketLab: 'rocketLab',
  LaunchProviders.roscomos: 'roscomos',
  LaunchProviders.casc: 'casc',
};
