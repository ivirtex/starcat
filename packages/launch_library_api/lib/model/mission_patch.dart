//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class MissionPatch {
  /// Returns a new [MissionPatch] instance.
  MissionPatch({
    required this.id,
    required this.name,
    this.priority,
    required this.imageUrl,
    required this.agency,
  });

  int id;

  String name;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? priority;

  String imageUrl;

  AgencySerializerMini agency;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MissionPatch &&
     other.id == id &&
     other.name == name &&
     other.priority == priority &&
     other.imageUrl == imageUrl &&
     other.agency == agency;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (priority == null ? 0 : priority!.hashCode) +
    (imageUrl.hashCode) +
    (agency.hashCode);

  @override
  String toString() => 'MissionPatch[id=$id, name=$name, priority=$priority, imageUrl=$imageUrl, agency=$agency]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
    if (this.priority != null) {
      json[r'priority'] = this.priority;
    } else {
      json[r'priority'] = null;
    }
      json[r'image_url'] = this.imageUrl;
      json[r'agency'] = this.agency;
    return json;
  }

  /// Returns a new [MissionPatch] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MissionPatch? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MissionPatch[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MissionPatch[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MissionPatch(
        id: mapValueOfType<int>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        priority: mapValueOfType<int>(json, r'priority'),
        imageUrl: mapValueOfType<String>(json, r'image_url')!,
        agency: AgencySerializerMini.fromJson(json[r'agency'])!,
      );
    }
    return null;
  }

  static List<MissionPatch> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MissionPatch>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MissionPatch.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MissionPatch> mapFromJson(dynamic json) {
    final map = <String, MissionPatch>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MissionPatch.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MissionPatch-objects as value to a dart map
  static Map<String, List<MissionPatch>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MissionPatch>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MissionPatch.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'image_url',
    'agency',
  };
}

