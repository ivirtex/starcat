//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class SpacecraftFlightDetailedSerializerForLaunch {
  /// Returns a new [SpacecraftFlightDetailedSerializerForLaunch] instance.
  SpacecraftFlightDetailedSerializerForLaunch({
    required this.id,
    required this.url,
    this.missionEnd,
    this.destination,
    this.launchCrew = const [],
    this.onboardCrew = const [],
    this.landingCrew = const [],
    required this.spacecraft,
    required this.landing,
    this.dockingEvents = const [],
  });

  int id;

  String url;

  DateTime? missionEnd;

  String? destination;

  List<AstronautFlight> launchCrew;

  List<AstronautFlight> onboardCrew;

  List<AstronautFlight> landingCrew;

  SpacecraftDetailedNoFlights spacecraft;

  Landing landing;

  List<DockingEventSerializerForSpacecraftFlight> dockingEvents;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SpacecraftFlightDetailedSerializerForLaunch &&
     other.id == id &&
     other.url == url &&
     other.missionEnd == missionEnd &&
     other.destination == destination &&
     other.launchCrew == launchCrew &&
     other.onboardCrew == onboardCrew &&
     other.landingCrew == landingCrew &&
     other.spacecraft == spacecraft &&
     other.landing == landing &&
     other.dockingEvents == dockingEvents;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (url.hashCode) +
    (missionEnd == null ? 0 : missionEnd!.hashCode) +
    (destination == null ? 0 : destination!.hashCode) +
    (launchCrew.hashCode) +
    (onboardCrew.hashCode) +
    (landingCrew.hashCode) +
    (spacecraft.hashCode) +
    (landing.hashCode) +
    (dockingEvents.hashCode);

  @override
  String toString() => 'SpacecraftFlightDetailedSerializerForLaunch[id=$id, url=$url, missionEnd=$missionEnd, destination=$destination, launchCrew=$launchCrew, onboardCrew=$onboardCrew, landingCrew=$landingCrew, spacecraft=$spacecraft, landing=$landing, dockingEvents=$dockingEvents]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'url'] = this.url;
    if (this.missionEnd != null) {
      json[r'mission_end'] = this.missionEnd!.toUtc().toIso8601String();
    } else {
      json[r'mission_end'] = null;
    }
    if (this.destination != null) {
      json[r'destination'] = this.destination;
    } else {
      json[r'destination'] = null;
    }
      json[r'launch_crew'] = this.launchCrew;
      json[r'onboard_crew'] = this.onboardCrew;
      json[r'landing_crew'] = this.landingCrew;
      json[r'spacecraft'] = this.spacecraft;
      json[r'landing'] = this.landing;
      json[r'docking_events'] = this.dockingEvents;
    return json;
  }

  /// Returns a new [SpacecraftFlightDetailedSerializerForLaunch] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SpacecraftFlightDetailedSerializerForLaunch? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SpacecraftFlightDetailedSerializerForLaunch[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SpacecraftFlightDetailedSerializerForLaunch[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SpacecraftFlightDetailedSerializerForLaunch(
        id: mapValueOfType<int>(json, r'id')!,
        url: mapValueOfType<String>(json, r'url')!,
        missionEnd: mapDateTime(json, r'mission_end', ''),
        destination: mapValueOfType<String>(json, r'destination'),
        launchCrew: AstronautFlight.listFromJson(json[r'launch_crew']),
        onboardCrew: AstronautFlight.listFromJson(json[r'onboard_crew']),
        landingCrew: AstronautFlight.listFromJson(json[r'landing_crew']),
        spacecraft: SpacecraftDetailedNoFlights.fromJson(json[r'spacecraft'])!,
        landing: Landing.fromJson(json[r'landing'])!,
        dockingEvents: DockingEventSerializerForSpacecraftFlight.listFromJson(json[r'docking_events']),
      );
    }
    return null;
  }

  static List<SpacecraftFlightDetailedSerializerForLaunch> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SpacecraftFlightDetailedSerializerForLaunch>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SpacecraftFlightDetailedSerializerForLaunch.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SpacecraftFlightDetailedSerializerForLaunch> mapFromJson(dynamic json) {
    final map = <String, SpacecraftFlightDetailedSerializerForLaunch>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SpacecraftFlightDetailedSerializerForLaunch.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SpacecraftFlightDetailedSerializerForLaunch-objects as value to a dart map
  static Map<String, List<SpacecraftFlightDetailedSerializerForLaunch>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SpacecraftFlightDetailedSerializerForLaunch>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SpacecraftFlightDetailedSerializerForLaunch.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'url',
    'launch_crew',
    'onboard_crew',
    'landing_crew',
    'spacecraft',
    'landing',
    'docking_events',
  };
}

