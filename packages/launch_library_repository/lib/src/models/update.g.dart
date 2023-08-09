// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Update _$UpdateFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Update',
      json,
      ($checkedConvert) {
        final val = Update(
          id: $checkedConvert('id', (v) => v as int),
          profileImage: $checkedConvert('profile_image', (v) => v as String),
          createdBy: $checkedConvert('created_by', (v) => v as String),
          createdOn:
              $checkedConvert('created_on', (v) => DateTime.parse(v as String)),
          comment: $checkedConvert('comment', (v) => v as String?),
          infoUrl: $checkedConvert('info_url', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'profileImage': 'profile_image',
        'createdBy': 'created_by',
        'createdOn': 'created_on',
        'infoUrl': 'info_url'
      },
    );

Map<String, dynamic> _$UpdateToJson(Update instance) => <String, dynamic>{
      'id': instance.id,
      'profile_image': instance.profileImage,
      'comment': instance.comment,
      'info_url': instance.infoUrl,
      'created_by': instance.createdBy,
      'created_on': instance.createdOn.toIso8601String(),
    };
