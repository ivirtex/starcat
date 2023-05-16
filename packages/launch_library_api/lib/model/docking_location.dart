//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class DockingLocation {
  /// Returns a new [DockingLocation] instance.
  DockingLocation({
    required this.id,
    required this.name,
    required this.spacestation,
  });

  int id;

  String name;

  SpaceStationSerializerForDocking spacestation;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DockingLocation &&
     other.id == id &&
     other.name == name &&
     other.spacestation == spacestation;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (spacestation.hashCode);

  @override
  String toString() => 'DockingLocation[id=$id, name=$name, spacestation=$spacestation]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'spacestation'] = this.spacestation;
    return json;
  }

  /// Returns a new [DockingLocation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DockingLocation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DockingLocation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DockingLocation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DockingLocation(
        id: mapValueOfType<int>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        spacestation: SpaceStationSerializerForDocking.fromJson(json[r'spacestation'])!,
      );
    }
    return null;
  }

  static List<DockingLocation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DockingLocation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DockingLocation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DockingLocation> mapFromJson(dynamic json) {
    final map = <String, DockingLocation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DockingLocation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DockingLocation-objects as value to a dart map
  static Map<String, List<DockingLocation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DockingLocation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DockingLocation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'spacestation',
  };
}

