//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class LauncherConfigList {
  /// Returns a new [LauncherConfigList] instance.
  LauncherConfigList({
    required this.id,
    required this.url,
    required this.name,
    this.family,
    this.fullName,
    this.variant,
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
  String? family;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fullName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? variant;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LauncherConfigList &&
     other.id == id &&
     other.url == url &&
     other.name == name &&
     other.family == family &&
     other.fullName == fullName &&
     other.variant == variant;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (url.hashCode) +
    (name.hashCode) +
    (family == null ? 0 : family!.hashCode) +
    (fullName == null ? 0 : fullName!.hashCode) +
    (variant == null ? 0 : variant!.hashCode);

  @override
  String toString() => 'LauncherConfigList[id=$id, url=$url, name=$name, family=$family, fullName=$fullName, variant=$variant]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'url'] = this.url;
      json[r'name'] = this.name;
    if (this.family != null) {
      json[r'family'] = this.family;
    } else {
      json[r'family'] = null;
    }
    if (this.fullName != null) {
      json[r'full_name'] = this.fullName;
    } else {
      json[r'full_name'] = null;
    }
    if (this.variant != null) {
      json[r'variant'] = this.variant;
    } else {
      json[r'variant'] = null;
    }
    return json;
  }

  /// Returns a new [LauncherConfigList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LauncherConfigList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LauncherConfigList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LauncherConfigList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LauncherConfigList(
        id: mapValueOfType<int>(json, r'id')!,
        url: mapValueOfType<String>(json, r'url')!,
        name: mapValueOfType<String>(json, r'name')!,
        family: mapValueOfType<String>(json, r'family'),
        fullName: mapValueOfType<String>(json, r'full_name'),
        variant: mapValueOfType<String>(json, r'variant'),
      );
    }
    return null;
  }

  static List<LauncherConfigList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LauncherConfigList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LauncherConfigList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LauncherConfigList> mapFromJson(dynamic json) {
    final map = <String, LauncherConfigList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LauncherConfigList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LauncherConfigList-objects as value to a dart map
  static Map<String, List<LauncherConfigList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LauncherConfigList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LauncherConfigList.listFromJson(entry.value, growable: growable,);
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

