//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class Mission {
  /// Returns a new [Mission] instance.
  Mission({
    required this.id,
    required this.name,
    this.description,
    this.launchDesignator,
    required this.type,
    required this.orbit,
  });

  int id;

  String name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  String? launchDesignator;

  String type;

  Orbit orbit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Mission &&
     other.id == id &&
     other.name == name &&
     other.description == description &&
     other.launchDesignator == launchDesignator &&
     other.type == type &&
     other.orbit == orbit;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (launchDesignator == null ? 0 : launchDesignator!.hashCode) +
    (type.hashCode) +
    (orbit.hashCode);

  @override
  String toString() => 'Mission[id=$id, name=$name, description=$description, launchDesignator=$launchDesignator, type=$type, orbit=$orbit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.launchDesignator != null) {
      json[r'launch_designator'] = this.launchDesignator;
    } else {
      json[r'launch_designator'] = null;
    }
      json[r'type'] = this.type;
      json[r'orbit'] = this.orbit;
    return json;
  }

  /// Returns a new [Mission] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Mission? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Mission[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Mission[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Mission(
        id: mapValueOfType<int>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        description: mapValueOfType<String>(json, r'description'),
        launchDesignator: mapValueOfType<String>(json, r'launch_designator'),
        type: mapValueOfType<String>(json, r'type')!,
        orbit: Orbit.fromJson(json[r'orbit'])!,
      );
    }
    return null;
  }

  static List<Mission> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Mission>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Mission.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Mission> mapFromJson(dynamic json) {
    final map = <String, Mission>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Mission.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Mission-objects as value to a dart map
  static Map<String, List<Mission>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Mission>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Mission.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'type',
    'orbit',
  };
}

