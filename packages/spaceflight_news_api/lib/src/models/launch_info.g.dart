// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'launch_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LaunchInfo _$LaunchInfoFromJson(Map<String, dynamic> json) => $checkedCreate(
      'LaunchInfo',
      json,
      ($checkedConvert) {
        final val = LaunchInfo(
          launchId: $checkedConvert('launch_id', (v) => v as String),
          provider: $checkedConvert('provider', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'launchId': 'launch_id'},
    );
