// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'launches.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Launches _$LaunchesFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Launches',
      json,
      ($checkedConvert) {
        final val = Launches(
          count: $checkedConvert('count', (v) => v as int),
          results: $checkedConvert(
              'results',
              (v) => (v as List<dynamic>)
                  .map((e) => Launch.fromJson(e as Map<String, dynamic>))
                  .toList()),
          next: $checkedConvert('next', (v) => v as String?),
          previous: $checkedConvert('previous', (v) => v as String?),
        );
        return val;
      },
    );
