//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class DockingLocationSerializerForSpacestation {
  /// Returns a new [DockingLocationSerializerForSpacestation] instance.
  DockingLocationSerializerForSpacestation({
    required this.id,
    required this.name,
    required this.docked,
  });

  int id;

  String name;

  DockingEventDetailedSerializerForSpacestation docked;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DockingLocationSerializerForSpacestation &&
     other.id == id &&
     other.name == name &&
     other.docked == docked;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (docked.hashCode);

  @override
  String toString() => 'DockingLocationSerializerForSpacestation[id=$id, name=$name, docked=$docked]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'docked'] = this.docked;
    return json;
  }

  /// Returns a new [DockingLocationSerializerForSpacestation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DockingLocationSerializerForSpacestation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DockingLocationSerializerForSpacestation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DockingLocationSerializerForSpacestation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DockingLocationSerializerForSpacestation(
        id: mapValueOfType<int>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        docked: DockingEventDetailedSerializerForSpacestation.fromJson(json[r'docked'])!,
      );
    }
    return null;
  }

  static List<DockingLocationSerializerForSpacestation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DockingLocationSerializerForSpacestation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DockingLocationSerializerForSpacestation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DockingLocationSerializerForSpacestation> mapFromJson(dynamic json) {
    final map = <String, DockingLocationSerializerForSpacestation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DockingLocationSerializerForSpacestation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DockingLocationSerializerForSpacestation-objects as value to a dart map
  static Map<String, List<DockingLocationSerializerForSpacestation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DockingLocationSerializerForSpacestation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DockingLocationSerializerForSpacestation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'docked',
  };
}

