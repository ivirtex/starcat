// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'rocket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Rocket _$RocketFromJson(Map<String, dynamic> json) => Rocket(
      configuration: json['configuration'] == null
          ? null
          : Configuration.fromJson(
              json['configuration'] as Map<String, dynamic>),
      launcherStage: (json['launcher_stage'] as List<dynamic>?)
          ?.map((e) => FirstStage.fromJson(e as Map<String, dynamic>))
          .toList(),
      spacecraftStage: json['spacecraft_stage'] == null
          ? null
          : SpacecraftStage.fromJson(
              json['spacecraft_stage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RocketToJson(Rocket instance) => <String, dynamic>{
      'configuration': instance.configuration,
      'launcher_stage': instance.launcherStage,
      'spacecraft_stage': instance.spacecraftStage,
    };
