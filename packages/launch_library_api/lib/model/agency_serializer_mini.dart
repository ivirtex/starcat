//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class AgencySerializerMini {
  /// Returns a new [AgencySerializerMini] instance.
  AgencySerializerMini({
    required this.id,
    required this.url,
    required this.name,
    this.type,
  });

  int id;

  String url;

  String name;

  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AgencySerializerMini &&
     other.id == id &&
     other.url == url &&
     other.name == name &&
     other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (url.hashCode) +
    (name.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'AgencySerializerMini[id=$id, url=$url, name=$name, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'url'] = this.url;
      json[r'name'] = this.name;
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [AgencySerializerMini] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AgencySerializerMini? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AgencySerializerMini[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AgencySerializerMini[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AgencySerializerMini(
        id: mapValueOfType<int>(json, r'id')!,
        url: mapValueOfType<String>(json, r'url')!,
        name: mapValueOfType<String>(json, r'name')!,
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<AgencySerializerMini> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgencySerializerMini>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgencySerializerMini.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AgencySerializerMini> mapFromJson(dynamic json) {
    final map = <String, AgencySerializerMini>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AgencySerializerMini.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AgencySerializerMini-objects as value to a dart map
  static Map<String, List<AgencySerializerMini>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AgencySerializerMini>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AgencySerializerMini.listFromJson(entry.value, growable: growable,);
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

