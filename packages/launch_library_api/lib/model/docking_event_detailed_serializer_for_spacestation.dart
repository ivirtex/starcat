//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class DockingEventDetailedSerializerForSpacestation {
  /// Returns a new [DockingEventDetailedSerializerForSpacestation] instance.
  DockingEventDetailedSerializerForSpacestation({
    required this.id,
    required this.url,
    required this.docking,
    this.departure,
    required this.flightVehicle,
  });

  int id;

  String url;

  DateTime docking;

  DateTime? departure;

  SpacecraftFlightForDockingEvent flightVehicle;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DockingEventDetailedSerializerForSpacestation &&
     other.id == id &&
     other.url == url &&
     other.docking == docking &&
     other.departure == departure &&
     other.flightVehicle == flightVehicle;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (url.hashCode) +
    (docking.hashCode) +
    (departure == null ? 0 : departure!.hashCode) +
    (flightVehicle.hashCode);

  @override
  String toString() => 'DockingEventDetailedSerializerForSpacestation[id=$id, url=$url, docking=$docking, departure=$departure, flightVehicle=$flightVehicle]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'url'] = this.url;
      json[r'docking'] = this.docking.toUtc().toIso8601String();
    if (this.departure != null) {
      json[r'departure'] = this.departure!.toUtc().toIso8601String();
    } else {
      json[r'departure'] = null;
    }
      json[r'flight_vehicle'] = this.flightVehicle;
    return json;
  }

  /// Returns a new [DockingEventDetailedSerializerForSpacestation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DockingEventDetailedSerializerForSpacestation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DockingEventDetailedSerializerForSpacestation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DockingEventDetailedSerializerForSpacestation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DockingEventDetailedSerializerForSpacestation(
        id: mapValueOfType<int>(json, r'id')!,
        url: mapValueOfType<String>(json, r'url')!,
        docking: mapDateTime(json, r'docking', '')!,
        departure: mapDateTime(json, r'departure', ''),
        flightVehicle: SpacecraftFlightForDockingEvent.fromJson(json[r'flight_vehicle'])!,
      );
    }
    return null;
  }

  static List<DockingEventDetailedSerializerForSpacestation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DockingEventDetailedSerializerForSpacestation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DockingEventDetailedSerializerForSpacestation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DockingEventDetailedSerializerForSpacestation> mapFromJson(dynamic json) {
    final map = <String, DockingEventDetailedSerializerForSpacestation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DockingEventDetailedSerializerForSpacestation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DockingEventDetailedSerializerForSpacestation-objects as value to a dart map
  static Map<String, List<DockingEventDetailedSerializerForSpacestation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DockingEventDetailedSerializerForSpacestation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DockingEventDetailedSerializerForSpacestation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'url',
    'docking',
    'flight_vehicle',
  };
}

