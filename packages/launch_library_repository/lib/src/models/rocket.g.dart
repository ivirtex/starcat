// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'rocket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Rocket _$RocketFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Rocket',
      json,
      ($checkedConvert) {
        final val = Rocket(
          configuration: $checkedConvert('configuration',
              (v) => Configuration.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$RocketToJson(Rocket instance) => <String, dynamic>{
      'configuration': instance.configuration,
    };
