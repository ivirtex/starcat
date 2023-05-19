//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class ExpeditionDetailedSerializerForSpacestation {
  /// Returns a new [ExpeditionDetailedSerializerForSpacestation] instance.
  ExpeditionDetailedSerializerForSpacestation({
    required this.id,
    required this.url,
    required this.name,
    required this.start,
    this.end,
    this.crew = const [],
  });

  int id;

  String url;

  String name;

  DateTime start;

  DateTime? end;

  List<AstronautFlightForExpedition> crew;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExpeditionDetailedSerializerForSpacestation &&
     other.id == id &&
     other.url == url &&
     other.name == name &&
     other.start == start &&
     other.end == end &&
     other.crew == crew;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (url.hashCode) +
    (name.hashCode) +
    (start.hashCode) +
    (end == null ? 0 : end!.hashCode) +
    (crew.hashCode);

  @override
  String toString() => 'ExpeditionDetailedSerializerForSpacestation[id=$id, url=$url, name=$name, start=$start, end=$end, crew=$crew]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'url'] = this.url;
      json[r'name'] = this.name;
      json[r'start'] = this.start.toUtc().toIso8601String();
    if (this.end != null) {
      json[r'end'] = this.end!.toUtc().toIso8601String();
    } else {
      json[r'end'] = null;
    }
      json[r'crew'] = this.crew;
    return json;
  }

  /// Returns a new [ExpeditionDetailedSerializerForSpacestation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExpeditionDetailedSerializerForSpacestation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExpeditionDetailedSerializerForSpacestation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExpeditionDetailedSerializerForSpacestation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExpeditionDetailedSerializerForSpacestation(
        id: mapValueOfType<int>(json, r'id')!,
        url: mapValueOfType<String>(json, r'url')!,
        name: mapValueOfType<String>(json, r'name')!,
        start: mapDateTime(json, r'start', '')!,
        end: mapDateTime(json, r'end', ''),
        crew: AstronautFlightForExpedition.listFromJson(json[r'crew']),
      );
    }
    return null;
  }

  static List<ExpeditionDetailedSerializerForSpacestation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExpeditionDetailedSerializerForSpacestation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExpeditionDetailedSerializerForSpacestation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExpeditionDetailedSerializerForSpacestation> mapFromJson(dynamic json) {
    final map = <String, ExpeditionDetailedSerializerForSpacestation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExpeditionDetailedSerializerForSpacestation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExpeditionDetailedSerializerForSpacestation-objects as value to a dart map
  static Map<String, List<ExpeditionDetailedSerializerForSpacestation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExpeditionDetailedSerializerForSpacestation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExpeditionDetailedSerializerForSpacestation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'url',
    'name',
    'start',
    'crew',
  };
}

