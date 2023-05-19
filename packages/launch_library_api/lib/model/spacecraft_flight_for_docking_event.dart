//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class SpacecraftFlightForDockingEvent {
  /// Returns a new [SpacecraftFlightForDockingEvent] instance.
  SpacecraftFlightForDockingEvent({
    required this.id,
    required this.url,
    required this.spacecraft,
    required this.launch,
  });

  int id;

  String url;

  SpacecraftDetailedNoFlights spacecraft;

  LaunchSerializerCommon launch;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SpacecraftFlightForDockingEvent &&
     other.id == id &&
     other.url == url &&
     other.spacecraft == spacecraft &&
     other.launch == launch;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (url.hashCode) +
    (spacecraft.hashCode) +
    (launch.hashCode);

  @override
  String toString() => 'SpacecraftFlightForDockingEvent[id=$id, url=$url, spacecraft=$spacecraft, launch=$launch]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'url'] = this.url;
      json[r'spacecraft'] = this.spacecraft;
      json[r'launch'] = this.launch;
    return json;
  }

  /// Returns a new [SpacecraftFlightForDockingEvent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SpacecraftFlightForDockingEvent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SpacecraftFlightForDockingEvent[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SpacecraftFlightForDockingEvent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SpacecraftFlightForDockingEvent(
        id: mapValueOfType<int>(json, r'id')!,
        url: mapValueOfType<String>(json, r'url')!,
        spacecraft: SpacecraftDetailedNoFlights.fromJson(json[r'spacecraft'])!,
        launch: LaunchSerializerCommon.fromJson(json[r'launch'])!,
      );
    }
    return null;
  }

  static List<SpacecraftFlightForDockingEvent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SpacecraftFlightForDockingEvent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SpacecraftFlightForDockingEvent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SpacecraftFlightForDockingEvent> mapFromJson(dynamic json) {
    final map = <String, SpacecraftFlightForDockingEvent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SpacecraftFlightForDockingEvent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SpacecraftFlightForDockingEvent-objects as value to a dart map
  static Map<String, List<SpacecraftFlightForDockingEvent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SpacecraftFlightForDockingEvent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SpacecraftFlightForDockingEvent.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'url',
    'spacecraft',
    'launch',
  };
}

