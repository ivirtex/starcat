//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class SpaceStationDetailed {
  /// Returns a new [SpaceStationDetailed] instance.
  SpaceStationDetailed({
    required this.id,
    required this.url,
    required this.name,
    required this.status,
    required this.type,
    required this.founded,
    this.deorbited,
    this.height,
    this.width,
    this.mass,
    this.volume,
    required this.description,
    required this.orbit,
    this.onboardCrew,
    this.dockedVehicles,
    this.owners = const [],
    this.activeExpeditions = const [],
    this.dockingLocation = const [],
    this.imageUrl,
  });

  int id;

  String url;

  String name;

  SpaceStationStatus status;

  SpaceStationType type;

  DateTime founded;

  DateTime? deorbited;

  double? height;

  double? width;

  double? mass;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? volume;

  String description;

  String orbit;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? onboardCrew;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? dockedVehicles;

  List<Agency> owners;

  List<ExpeditionDetailedSerializerForSpacestation> activeExpeditions;

  List<DockingLocationSerializerForSpacestation> dockingLocation;

  String? imageUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SpaceStationDetailed &&
     other.id == id &&
     other.url == url &&
     other.name == name &&
     other.status == status &&
     other.type == type &&
     other.founded == founded &&
     other.deorbited == deorbited &&
     other.height == height &&
     other.width == width &&
     other.mass == mass &&
     other.volume == volume &&
     other.description == description &&
     other.orbit == orbit &&
     other.onboardCrew == onboardCrew &&
     other.dockedVehicles == dockedVehicles &&
     other.owners == owners &&
     other.activeExpeditions == activeExpeditions &&
     other.dockingLocation == dockingLocation &&
     other.imageUrl == imageUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (url.hashCode) +
    (name.hashCode) +
    (status.hashCode) +
    (type.hashCode) +
    (founded.hashCode) +
    (deorbited == null ? 0 : deorbited!.hashCode) +
    (height == null ? 0 : height!.hashCode) +
    (width == null ? 0 : width!.hashCode) +
    (mass == null ? 0 : mass!.hashCode) +
    (volume == null ? 0 : volume!.hashCode) +
    (description.hashCode) +
    (orbit.hashCode) +
    (onboardCrew == null ? 0 : onboardCrew!.hashCode) +
    (dockedVehicles == null ? 0 : dockedVehicles!.hashCode) +
    (owners.hashCode) +
    (activeExpeditions.hashCode) +
    (dockingLocation.hashCode) +
    (imageUrl == null ? 0 : imageUrl!.hashCode);

  @override
  String toString() => 'SpaceStationDetailed[id=$id, url=$url, name=$name, status=$status, type=$type, founded=$founded, deorbited=$deorbited, height=$height, width=$width, mass=$mass, volume=$volume, description=$description, orbit=$orbit, onboardCrew=$onboardCrew, dockedVehicles=$dockedVehicles, owners=$owners, activeExpeditions=$activeExpeditions, dockingLocation=$dockingLocation, imageUrl=$imageUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'url'] = this.url;
      json[r'name'] = this.name;
      json[r'status'] = this.status;
      json[r'type'] = this.type;
      json[r'founded'] = _dateFormatter.format(this.founded.toUtc());
    if (this.deorbited != null) {
      json[r'deorbited'] = _dateFormatter.format(this.deorbited!.toUtc());
    } else {
      json[r'deorbited'] = null;
    }
    if (this.height != null) {
      json[r'height'] = this.height;
    } else {
      json[r'height'] = null;
    }
    if (this.width != null) {
      json[r'width'] = this.width;
    } else {
      json[r'width'] = null;
    }
    if (this.mass != null) {
      json[r'mass'] = this.mass;
    } else {
      json[r'mass'] = null;
    }
    if (this.volume != null) {
      json[r'volume'] = this.volume;
    } else {
      json[r'volume'] = null;
    }
      json[r'description'] = this.description;
      json[r'orbit'] = this.orbit;
    if (this.onboardCrew != null) {
      json[r'onboard_crew'] = this.onboardCrew;
    } else {
      json[r'onboard_crew'] = null;
    }
    if (this.dockedVehicles != null) {
      json[r'docked_vehicles'] = this.dockedVehicles;
    } else {
      json[r'docked_vehicles'] = null;
    }
      json[r'owners'] = this.owners;
      json[r'active_expeditions'] = this.activeExpeditions;
      json[r'docking_location'] = this.dockingLocation;
    if (this.imageUrl != null) {
      json[r'image_url'] = this.imageUrl;
    } else {
      json[r'image_url'] = null;
    }
    return json;
  }

  /// Returns a new [SpaceStationDetailed] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SpaceStationDetailed? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SpaceStationDetailed[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SpaceStationDetailed[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SpaceStationDetailed(
        id: mapValueOfType<int>(json, r'id')!,
        url: mapValueOfType<String>(json, r'url')!,
        name: mapValueOfType<String>(json, r'name')!,
        status: SpaceStationStatus.fromJson(json[r'status'])!,
        type: SpaceStationType.fromJson(json[r'type'])!,
        founded: mapDateTime(json, r'founded', '')!,
        deorbited: mapDateTime(json, r'deorbited', ''),
        height: mapValueOfType<double>(json, r'height'),
        width: mapValueOfType<double>(json, r'width'),
        mass: mapValueOfType<double>(json, r'mass'),
        volume: mapValueOfType<int>(json, r'volume'),
        description: mapValueOfType<String>(json, r'description')!,
        orbit: mapValueOfType<String>(json, r'orbit')!,
        onboardCrew: mapValueOfType<int>(json, r'onboard_crew'),
        dockedVehicles: mapValueOfType<int>(json, r'docked_vehicles'),
        owners: Agency.listFromJson(json[r'owners']),
        activeExpeditions: ExpeditionDetailedSerializerForSpacestation.listFromJson(json[r'active_expeditions']),
        dockingLocation: DockingLocationSerializerForSpacestation.listFromJson(json[r'docking_location']),
        imageUrl: mapValueOfType<String>(json, r'image_url'),
      );
    }
    return null;
  }

  static List<SpaceStationDetailed> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SpaceStationDetailed>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SpaceStationDetailed.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SpaceStationDetailed> mapFromJson(dynamic json) {
    final map = <String, SpaceStationDetailed>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SpaceStationDetailed.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SpaceStationDetailed-objects as value to a dart map
  static Map<String, List<SpaceStationDetailed>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SpaceStationDetailed>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SpaceStationDetailed.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'url',
    'name',
    'status',
    'type',
    'founded',
    'description',
    'orbit',
    'owners',
    'active_expeditions',
    'docking_location',
  };
}

