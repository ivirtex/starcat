// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'mission_patch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MissionPatch _$MissionPatchFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'MissionPatch',
      json,
      ($checkedConvert) {
        final val = MissionPatch(
          id: $checkedConvert('id', (v) => v as int),
          agency: $checkedConvert('agency',
              (v) => LaunchServiceProvider.fromJson(v as Map<String, dynamic>)),
          name: $checkedConvert('name', (v) => v as String?),
          priority: $checkedConvert('priority', (v) => v as int?),
          imageUrl: $checkedConvert('image_url', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'imageUrl': 'image_url'},
    );
