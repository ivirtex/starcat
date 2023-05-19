//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class SpacecraftFlightSerializerForDockingEventDetailed {
  /// Returns a new [SpacecraftFlightSerializerForDockingEventDetailed] instance.
  SpacecraftFlightSerializerForDockingEventDetailed({
    required this.id,
    required this.url,
    this.destination,
    this.missionEnd,
    required this.spacecraft,
  });

  int id;

  String url;

  String? destination;

  DateTime? missionEnd;

  SpacecraftDetailedNoFlights spacecraft;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SpacecraftFlightSerializerForDockingEventDetailed &&
     other.id == id &&
     other.url == url &&
     other.destination == destination &&
     other.missionEnd == missionEnd &&
     other.spacecraft == spacecraft;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (url.hashCode) +
    (destination == null ? 0 : destination!.hashCode) +
    (missionEnd == null ? 0 : missionEnd!.hashCode) +
    (spacecraft.hashCode);

  @override
  String toString() => 'SpacecraftFlightSerializerForDockingEventDetailed[id=$id, url=$url, destination=$destination, missionEnd=$missionEnd, spacecraft=$spacecraft]';

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
    return json;
  }

  /// Returns a new [SpacecraftFlightSerializerForDockingEventDetailed] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SpacecraftFlightSerializerForDockingEventDetailed? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SpacecraftFlightSerializerForDockingEventDetailed[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SpacecraftFlightSerializerForDockingEventDetailed[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SpacecraftFlightSerializerForDockingEventDetailed(
        id: mapValueOfType<int>(json, r'id')!,
        url: mapValueOfType<String>(json, r'url')!,
        destination: mapValueOfType<String>(json, r'destination'),
        missionEnd: mapDateTime(json, r'mission_end', ''),
        spacecraft: SpacecraftDetailedNoFlights.fromJson(json[r'spacecraft'])!,
      );
    }
    return null;
  }

  static List<SpacecraftFlightSerializerForDockingEventDetailed> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SpacecraftFlightSerializerForDockingEventDetailed>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SpacecraftFlightSerializerForDockingEventDetailed.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SpacecraftFlightSerializerForDockingEventDetailed> mapFromJson(dynamic json) {
    final map = <String, SpacecraftFlightSerializerForDockingEventDetailed>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SpacecraftFlightSerializerForDockingEventDetailed.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SpacecraftFlightSerializerForDockingEventDetailed-objects as value to a dart map
  static Map<String, List<SpacecraftFlightSerializerForDockingEventDetailed>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SpacecraftFlightSerializerForDockingEventDetailed>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SpacecraftFlightSerializerForDockingEventDetailed.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'url',
    'spacecraft',
  };
}

