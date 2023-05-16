//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class AgencyList {
  /// Returns a new [AgencyList] instance.
  AgencyList({
    required this.id,
    required this.url,
    required this.name,
    this.abbrev,
  });

  int id;

  String url;

  String name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? abbrev;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AgencyList &&
     other.id == id &&
     other.url == url &&
     other.name == name &&
     other.abbrev == abbrev;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (url.hashCode) +
    (name.hashCode) +
    (abbrev == null ? 0 : abbrev!.hashCode);

  @override
  String toString() => 'AgencyList[id=$id, url=$url, name=$name, abbrev=$abbrev]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'url'] = this.url;
      json[r'name'] = this.name;
    if (this.abbrev != null) {
      json[r'abbrev'] = this.abbrev;
    } else {
      json[r'abbrev'] = null;
    }
    return json;
  }

  /// Returns a new [AgencyList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AgencyList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AgencyList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AgencyList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AgencyList(
        id: mapValueOfType<int>(json, r'id')!,
        url: mapValueOfType<String>(json, r'url')!,
        name: mapValueOfType<String>(json, r'name')!,
        abbrev: mapValueOfType<String>(json, r'abbrev'),
      );
    }
    return null;
  }

  static List<AgencyList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgencyList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgencyList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AgencyList> mapFromJson(dynamic json) {
    final map = <String, AgencyList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AgencyList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AgencyList-objects as value to a dart map
  static Map<String, List<AgencyList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AgencyList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AgencyList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'url',
    'name',
  };
}

