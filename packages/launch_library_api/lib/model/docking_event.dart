//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class DockingEvent {
  /// Returns a new [DockingEvent] instance.
  DockingEvent({
    required this.id,
    required this.url,
    required this.launchId,
    required this.docking,
    this.departure,
    required this.flightVehicle,
    required this.dockingLocation,
  });

  int id;

  String url;

  String launchId;

  DateTime docking;

  DateTime? departure;

  SpacecraftFlightSerializerForDockingEvent flightVehicle;

  DockingLocation dockingLocation;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DockingEvent &&
     other.id == id &&
     other.url == url &&
     other.launchId == launchId &&
     other.docking == docking &&
     other.departure == departure &&
     other.flightVehicle == flightVehicle &&
     other.dockingLocation == dockingLocation;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (url.hashCode) +
    (launchId.hashCode) +
    (docking.hashCode) +
    (departure == null ? 0 : departure!.hashCode) +
    (flightVehicle.hashCode) +
    (dockingLocation.hashCode);

  @override
  String toString() => 'DockingEvent[id=$id, url=$url, launchId=$launchId, docking=$docking, departure=$departure, flightVehicle=$flightVehicle, dockingLocation=$dockingLocation]';

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
    return json;
  }

  /// Returns a new [DockingEvent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DockingEvent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DockingEvent[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DockingEvent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DockingEvent(
        id: mapValueOfType<int>(json, r'id')!,
        url: mapValueOfType<String>(json, r'url')!,
        launchId: mapValueOfType<String>(json, r'launch_id')!,
        docking: mapDateTime(json, r'docking', '')!,
        departure: mapDateTime(json, r'departure', ''),
        flightVehicle: SpacecraftFlightSerializerForDockingEvent.fromJson(json[r'flight_vehicle'])!,
        dockingLocation: DockingLocation.fromJson(json[r'docking_location'])!,
      );
    }
    return null;
  }

  static List<DockingEvent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DockingEvent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DockingEvent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DockingEvent> mapFromJson(dynamic json) {
    final map = <String, DockingEvent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DockingEvent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DockingEvent-objects as value to a dart map
  static Map<String, List<DockingEvent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DockingEvent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DockingEvent.listFromJson(entry.value, growable: growable,);
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
  };
}

