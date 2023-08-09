//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class StarshipDashboard {
  /// Returns a new [StarshipDashboard] instance.
  StarshipDashboard({
    this.updates = const [],
    this.upcoming,
    this.previous,
    this.roadClosures = const [],
    this.notices = const [],
    this.liveStreams = const [],
    this.vehicles = const [],
    this.orbiters = const [],
  });

  List<Update> updates;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  StarshipDashboardUpcoming? upcoming;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  StarshipDashboardUpcoming? previous;

  List<RoadClosureStatus> roadClosures;

  List<NoticeType> notices;

  List<LiveStream> liveStreams;

  List<LauncherDetail> vehicles;

  List<Orbiter> orbiters;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StarshipDashboard &&
          other.updates == updates &&
          other.upcoming == upcoming &&
          other.previous == previous &&
          other.roadClosures == roadClosures &&
          other.notices == notices &&
          other.liveStreams == liveStreams &&
          other.vehicles == vehicles &&
          other.orbiters == orbiters;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (updates.hashCode) +
      (upcoming == null ? 0 : upcoming!.hashCode) +
      (previous == null ? 0 : previous!.hashCode) +
      (roadClosures.hashCode) +
      (notices.hashCode) +
      (liveStreams.hashCode) +
      (vehicles.hashCode) +
      (orbiters.hashCode);

  @override
  String toString() =>
      'StarshipDashboard[updates=$updates, upcoming=$upcoming, previous=$previous, roadClosures=$roadClosures, notices=$notices, liveStreams=$liveStreams, vehicles=$vehicles, orbiters=$orbiters]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'updates'] = this.updates;
    if (this.upcoming != null) {
      json[r'upcoming'] = this.upcoming;
    } else {
      json[r'upcoming'] = null;
    }
    if (this.previous != null) {
      json[r'previous'] = this.previous;
    } else {
      json[r'previous'] = null;
    }
    json[r'road_closures'] = this.roadClosures;
    json[r'notices'] = this.notices;
    json[r'live_streams'] = this.liveStreams;
    json[r'vehicles'] = this.vehicles;
    json[r'orbiters'] = this.orbiters;
    return json;
  }

  /// Returns a new [StarshipDashboard] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StarshipDashboard? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "StarshipDashboard[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "StarshipDashboard[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StarshipDashboard(
        updates: Update.listFromJson(json[r'updates']),
        upcoming: StarshipDashboardUpcoming.fromJson(json[r'upcoming']),
        previous: StarshipDashboardUpcoming.fromJson(json[r'previous']),
        roadClosures: RoadClosureStatus.listFromJson(json[r'road_closures']),
        notices: NoticeType.listFromJson(json[r'notices']),
        liveStreams: LiveStream.listFromJson(json[r'live_streams']),
        vehicles: LauncherDetail.listFromJson(json[r'vehicles']),
        orbiters: Orbiter.listFromJson(json[r'orbiters']),
      );
    }
    return null;
  }

  static List<StarshipDashboard> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <StarshipDashboard>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StarshipDashboard.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StarshipDashboard> mapFromJson(dynamic json) {
    final map = <String, StarshipDashboard>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StarshipDashboard.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StarshipDashboard-objects as value to a dart map
  static Map<String, List<StarshipDashboard>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<StarshipDashboard>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StarshipDashboard.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{};
}
