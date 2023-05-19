//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class SpacecraftFlight {
  /// Returns a new [SpacecraftFlight] instance.
  SpacecraftFlight({
    required this.id,
    required this.url,
    this.destination,
    this.missionEnd,
    required this.spacecraft,
    required this.launch,
    required this.landing,
  });

  int id;

  String url;

  String? destination;

  DateTime? missionEnd;

  Spacecraft spacecraft;

  LaunchSerializerCommon launch;

  Landing landing;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SpacecraftFlight &&
     other.id == id &&
     other.url == url &&
     other.destination == destination &&
     other.missionEnd == missionEnd &&
     other.spacecraft == spacecraft &&
     other.launch == launch &&
     other.landing == landing;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (url.hashCode) +
    (destination == null ? 0 : destination!.hashCode) +
    (missionEnd == null ? 0 : missionEnd!.hashCode) +
    (spacecraft.hashCode) +
    (launch.hashCode) +
    (landing.hashCode);

  @override
  String toString() => 'SpacecraftFlight[id=$id, url=$url, destination=$destination, missionEnd=$missionEnd, spacecraft=$spacecraft, launch=$launch, landing=$landing]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'url'] = this.url;
    if (this.destination != null) {
      json[r'destination'] = this.destination;
    } else {
      json[r'destination'] = null;
    }
    if (this.missionEnd != null) {
      json[r'mission_end'] = this.missionEnd!.toUtc().toIso8601String();
    } else {
      json[r'mission_end'] = null;
    }
      json[r'spacecraft'] = this.spacecraft;
      json[r'launch'] = this.launch;
      json[r'landing'] = this.landing;
    return json;
  }

  /// Returns a new [SpacecraftFlight] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SpacecraftFlight? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SpacecraftFlight[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SpacecraftFlight[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SpacecraftFlight(
        id: mapValueOfType<int>(json, r'id')!,
        url: mapValueOfType<String>(json, r'url')!,
        destination: mapValueOfType<String>(json, r'destination'),
        missionEnd: mapDateTime(json, r'mission_end', ''),
        spacecraft: Spacecraft.fromJson(json[r'spacecraft'])!,
        launch: LaunchSerializerCommon.fromJson(json[r'launch'])!,
        landing: Landing.fromJson(json[r'landing'])!,
      );
    }
    return null;
  }

  static List<SpacecraftFlight> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SpacecraftFlight>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SpacecraftFlight.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SpacecraftFlight> mapFromJson(dynamic json) {
    final map = <String, SpacecraftFlight>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SpacecraftFlight.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SpacecraftFlight-objects as value to a dart map
  static Map<String, List<SpacecraftFlight>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SpacecraftFlight>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SpacecraftFlight.listFromJson(entry.value, growable: growable,);
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
    'landing',
  };
}

