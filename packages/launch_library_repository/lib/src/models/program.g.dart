// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'program.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Program _$ProgramFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Program',
      json,
      ($checkedConvert) {
        final val = Program(
          agencies: $checkedConvert(
              'agencies',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      LaunchServiceProvider.fromJson(e as Map<String, dynamic>))
                  .toList()),
          missionPatches: $checkedConvert(
              'mission_patches',
              (v) => (v as List<dynamic>)
                  .map((e) => MissionPatch.fromJson(e as Map<String, dynamic>))
                  .toList()),
          url: $checkedConvert('url', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
          imageUrl: $checkedConvert('image_url', (v) => v as String?),
          startDate: $checkedConvert('start_date',
              (v) => v == null ? null : DateTime.parse(v as String)),
          endDate: $checkedConvert('end_date',
              (v) => v == null ? null : DateTime.parse(v as String)),
          infoUrl: $checkedConvert('info_url', (v) => v as String?),
          wikiUrl: $checkedConvert('wiki_url', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'missionPatches': 'mission_patches',
        'imageUrl': 'image_url',
        'startDate': 'start_date',
        'endDate': 'end_date',
        'infoUrl': 'info_url',
        'wikiUrl': 'wiki_url'
      },
    );

Map<String, dynamic> _$ProgramToJson(Program instance) => <String, dynamic>{
      'url': instance.url,
      'name': instance.name,
      'description': instance.description,
      'agencies': instance.agencies,
      'image_url': instance.imageUrl,
      'start_date': instance.startDate?.toIso8601String(),
      'end_date': instance.endDate?.toIso8601String(),
      'info_url': instance.infoUrl,
      'wiki_url': instance.wikiUrl,
      'mission_patches': instance.missionPatches,
    };
