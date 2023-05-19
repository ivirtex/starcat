//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class LandingType {
  /// Returns a new [LandingType] instance.
  LandingType({
    required this.id,
    this.name,
    this.abbrev,
    this.description,
  });

  int id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? abbrev;

  String? description;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LandingType &&
     other.id == id &&
     other.name == name &&
     other.abbrev == abbrev &&
     other.description == description;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (abbrev == null ? 0 : abbrev!.hashCode) +
    (description == null ? 0 : description!.hashCode);

  @override
  String toString() => 'LandingType[id=$id, name=$name, abbrev=$abbrev, description=$description]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.abbrev != null) {
      json[r'abbrev'] = this.abbrev;
    } else {
      json[r'abbrev'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    return json;
  }

  /// Returns a new [LandingType] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LandingType? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LandingType[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LandingType[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LandingType(
        id: mapValueOfType<int>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name'),
        abbrev: mapValueOfType<String>(json, r'abbrev'),
        description: mapValueOfType<String>(json, r'description'),
      );
    }
    return null;
  }

  static List<LandingType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LandingType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LandingType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LandingType> mapFromJson(dynamic json) {
    final map = <String, LandingType>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LandingType.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LandingType-objects as value to a dart map
  static Map<String, List<LandingType>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LandingType>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LandingType.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}

