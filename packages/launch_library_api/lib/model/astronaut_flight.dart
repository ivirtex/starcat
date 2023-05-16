//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class AstronautFlight {
  /// Returns a new [AstronautFlight] instance.
  AstronautFlight({
    required this.id,
    required this.role,
    required this.astronaut,
  });

  int id;

  AstronautRole role;

  AstronautDetailedSerializerNoFlights astronaut;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AstronautFlight &&
     other.id == id &&
     other.role == role &&
     other.astronaut == astronaut;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (role.hashCode) +
    (astronaut.hashCode);

  @override
  String toString() => 'AstronautFlight[id=$id, role=$role, astronaut=$astronaut]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'role'] = this.role;
      json[r'astronaut'] = this.astronaut;
    return json;
  }

  /// Returns a new [AstronautFlight] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AstronautFlight? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AstronautFlight[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AstronautFlight[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AstronautFlight(
        id: mapValueOfType<int>(json, r'id')!,
        role: AstronautRole.fromJson(json[r'role'])!,
        astronaut: AstronautDetailedSerializerNoFlights.fromJson(json[r'astronaut'])!,
      );
    }
    return null;
  }

  static List<AstronautFlight> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AstronautFlight>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AstronautFlight.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AstronautFlight> mapFromJson(dynamic json) {
    final map = <String, AstronautFlight>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AstronautFlight.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AstronautFlight-objects as value to a dart map
  static Map<String, List<AstronautFlight>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AstronautFlight>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AstronautFlight.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'role',
    'astronaut',
  };
}

