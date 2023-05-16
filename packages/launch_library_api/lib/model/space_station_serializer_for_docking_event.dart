//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class SpaceStationSerializerForDockingEvent {
  /// Returns a new [SpaceStationSerializerForDockingEvent] instance.
  SpaceStationSerializerForDockingEvent({
    required this.id,
    required this.url,
    required this.name,
    this.imageUrl,
  });

  int id;

  String url;

  String name;

  String? imageUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SpaceStationSerializerForDockingEvent &&
     other.id == id &&
     other.url == url &&
     other.name == name &&
     other.imageUrl == imageUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (url.hashCode) +
    (name.hashCode) +
    (imageUrl == null ? 0 : imageUrl!.hashCode);

  @override
  String toString() => 'SpaceStationSerializerForDockingEvent[id=$id, url=$url, name=$name, imageUrl=$imageUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'url'] = this.url;
      json[r'name'] = this.name;
    if (this.imageUrl != null) {
      json[r'image_url'] = this.imageUrl;
    } else {
      json[r'image_url'] = null;
    }
    return json;
  }

  /// Returns a new [SpaceStationSerializerForDockingEvent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SpaceStationSerializerForDockingEvent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SpaceStationSerializerForDockingEvent[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SpaceStationSerializerForDockingEvent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SpaceStationSerializerForDockingEvent(
        id: mapValueOfType<int>(json, r'id')!,
        url: mapValueOfType<String>(json, r'url')!,
        name: mapValueOfType<String>(json, r'name')!,
        imageUrl: mapValueOfType<String>(json, r'image_url'),
      );
    }
    return null;
  }

  static List<SpaceStationSerializerForDockingEvent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SpaceStationSerializerForDockingEvent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SpaceStationSerializerForDockingEvent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SpaceStationSerializerForDockingEvent> mapFromJson(dynamic json) {
    final map = <String, SpaceStationSerializerForDockingEvent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SpaceStationSerializerForDockingEvent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SpaceStationSerializerForDockingEvent-objects as value to a dart map
  static Map<String, List<SpaceStationSerializerForDockingEvent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SpaceStationSerializerForDockingEvent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SpaceStationSerializerForDockingEvent.listFromJson(entry.value, growable: growable,);
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

