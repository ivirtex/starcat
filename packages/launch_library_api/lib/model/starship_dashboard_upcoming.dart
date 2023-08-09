//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class StarshipDashboardUpcoming {
  /// Returns a new [StarshipDashboardUpcoming] instance.
  StarshipDashboardUpcoming({
    this.launches = const [],
    this.events = const [],
  });

  List<LaunchSerializerCommon> launches;

  List<Events> events;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StarshipDashboardUpcoming &&
     other.launches == launches &&
     other.events == events;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (launches.hashCode) +
    (events.hashCode);

  @override
  String toString() => 'StarshipDashboardUpcoming[launches=$launches, events=$events]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'launches'] = this.launches;
      json[r'events'] = this.events;
    return json;
  }

  /// Returns a new [StarshipDashboardUpcoming] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StarshipDashboardUpcoming? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StarshipDashboardUpcoming[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StarshipDashboardUpcoming[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StarshipDashboardUpcoming(
        launches: LaunchSerializerCommon.listFromJson(json[r'launches']),
        events: Events.listFromJson(json[r'events']),
      );
    }
    return null;
  }

  static List<StarshipDashboardUpcoming> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StarshipDashboardUpcoming>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StarshipDashboardUpcoming.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StarshipDashboardUpcoming> mapFromJson(dynamic json) {
    final map = <String, StarshipDashboardUpcoming>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StarshipDashboardUpcoming.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StarshipDashboardUpcoming-objects as value to a dart map
  static Map<String, List<StarshipDashboardUpcoming>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StarshipDashboardUpcoming>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StarshipDashboardUpcoming.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

