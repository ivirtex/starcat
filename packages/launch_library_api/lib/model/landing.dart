//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class Landing {
  /// Returns a new [Landing] instance.
  Landing({
    required this.id,
    this.attempt,
    this.success,
    this.description,
    this.location,
    this.type,
  });

  int id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? attempt;

  bool? success;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LandingLocation? location;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LandingType? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Landing &&
     other.id == id &&
     other.attempt == attempt &&
     other.success == success &&
     other.description == description &&
     other.location == location &&
     other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (attempt == null ? 0 : attempt!.hashCode) +
    (success == null ? 0 : success!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (location == null ? 0 : location!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'Landing[id=$id, attempt=$attempt, success=$success, description=$description, location=$location, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.attempt != null) {
      json[r'attempt'] = this.attempt;
    } else {
      json[r'attempt'] = null;
    }
    if (this.success != null) {
      json[r'success'] = this.success;
    } else {
      json[r'success'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.location != null) {
      json[r'location'] = this.location;
    } else {
      json[r'location'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [Landing] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Landing? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Landing[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Landing[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Landing(
        id: mapValueOfType<int>(json, r'id')!,
        attempt: mapValueOfType<bool>(json, r'attempt'),
        success: mapValueOfType<bool>(json, r'success'),
        description: mapValueOfType<String>(json, r'description'),
        location: LandingLocation.fromJson(json[r'location']),
        type: LandingType.fromJson(json[r'type']),
      );
    }
    return null;
  }

  static List<Landing> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Landing>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Landing.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Landing> mapFromJson(dynamic json) {
    final map = <String, Landing>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Landing.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Landing-objects as value to a dart map
  static Map<String, List<Landing>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Landing>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Landing.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}

