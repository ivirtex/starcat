//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class DockingEventDetailed {
  /// Returns a new [DockingEventDetailed] instance.
  DockingEventDetailed({
    required this.id,
    required this.url,
    required this.launchId,
    required this.docking,
    this.departure,
    required this.flightVehicle,
    required this.dockingLocation,
    required this.spaceStation,
  });

  int id;

  String url;

  String launchId;

  DateTime docking;

  DateTime? departure;

  SpacecraftFlightSerializerForDockingEventDetailed flightVehicle;

  DockingLocation dockingLocation;

  SpaceStationSerializerForDockingEvent spaceStation;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DockingEventDetailed &&
     other.id == id &&
     other.url == url &&
     other.launchId == launchId &&
     other.docking == docking &&
     other.departure == departure &&
     other.flightVehicle == flightVehicle &&
     other.dockingLocation == dockingLocation &&
     other.spaceStation == spaceStation;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (url.hashCode) +
    (launchId.hashCode) +
    (docking.hashCode) +
    (departure == null ? 0 : departure!.hashCode) +
    (flightVehicle.hashCode) +
    (dockingLocation.hashCode) +
    (spaceStation.hashCode);

  @override
  String toString() => 'DockingEventDetailed[id=$id, url=$url, launchId=$launchId, docking=$docking, departure=$departure, flightVehicle=$flightVehicle, dockingLocation=$dockingLocation, spaceStation=$spaceStation]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'url'] = this.url;
      json[r'launch_id'] = this.launchId;
      json[r'docking'] = this.docking.toUtc().toIso8601String();
    if (this.departure != null) {
      json[r'departure'] = this.departure!.toUtc().toIso8601String();
    } else {
      json[r'departure'] = null;
    }
      json[r'flight_vehicle'] = this.flightVehicle;
      json[r'docking_location'] = this.dockingLocation;
      json[r'space_station'] = this.spaceStation;
    return json;
  }

  /// Returns a new [DockingEventDetailed] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DockingEventDetailed? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DockingEventDetailed[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DockingEventDetailed[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DockingEventDetailed(
        id: mapValueOfType<int>(json, r'id')!,
        url: mapValueOfType<String>(json, r'url')!,
        launchId: mapValueOfType<String>(json, r'launch_id')!,
        docking: mapDateTime(json, r'docking', '')!,
        departure: mapDateTime(json, r'departure', ''),
        flightVehicle: SpacecraftFlightSerializerForDockingEventDetailed.fromJson(json[r'flight_vehicle'])!,
        dockingLocation: DockingLocation.fromJson(json[r'docking_location'])!,
        spaceStation: SpaceStationSerializerForDockingEvent.fromJson(json[r'space_station'])!,
      );
    }
    return null;
  }

  static List<DockingEventDetailed> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DockingEventDetailed>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DockingEventDetailed.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DockingEventDetailed> mapFromJson(dynamic json) {
    final map = <String, DockingEventDetailed>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DockingEventDetailed.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DockingEventDetailed-objects as value to a dart map
  static Map<String, List<DockingEventDetailed>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DockingEventDetailed>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DockingEventDetailed.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'url',
    'launch_id',
    'docking',
    'flight_vehicle',
    'docking_location',
    'space_station',
  };
}

