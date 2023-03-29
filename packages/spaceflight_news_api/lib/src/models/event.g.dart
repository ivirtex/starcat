// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Event _$EventFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Event',
      json,
      ($checkedConvert) {
        final val = Event(
          eventId: $checkedConvert('event_id', (v) => v as int),
          provider: $checkedConvert('provider', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'eventId': 'event_id'},
    );
