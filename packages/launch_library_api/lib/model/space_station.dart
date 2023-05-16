//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class SpaceStation {
  /// Returns a new [SpaceStation] instance.
  SpaceStation({
    required this.id,
    required this.url,
    required this.name,
    required this.status,
    required this.type,
    required this.founded,
    this.deorbited,
    required this.description,
    required this.orbit,
    this.owners = const [],
    this.activeExpedition = const [],
    this.imageUrl,
  });

  int id;

  String url;

  String name;

  SpaceStationStatus status;

  SpaceStationType type;

  DateTime founded;

  DateTime? deorbited;

  String description;

  String orbit;

  List<AgencyList> owners;

  List<ExpeditionSerializerForSpacestation> activeExpedition;

  String? imageUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SpaceStation &&
     other.id == id &&
     other.url == url &&
     other.name == name &&
     other.status == status &&
     other.type == type &&
     other.founded == founded &&
     other.deorbited == deorbited &&
     other.description == description &&
     other.orbit == orbit &&
     other.owners == owners &&
     other.activeExpedition == activeExpedition &&
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
    (description.hashCode) +
    (orbit.hashCode) +
    (owners.hashCode) +
    (activeExpedition.hashCode) +
    (imageUrl == null ? 0 : imageUrl!.hashCode);

  @override
  String toString() => 'SpaceStation[id=$id, url=$url, name=$name, status=$status, type=$type, founded=$founded, deorbited=$deorbited, description=$description, orbit=$orbit, owners=$owners, activeExpedition=$activeExpedition, imageUrl=$imageUrl]';

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
      json[r'description'] = this.description;
      json[r'orbit'] = this.orbit;
      json[r'owners'] = this.owners;
      json[r'active_expedition'] = this.activeExpedition;
    if (this.imageUrl != null) {
      json[r'image_url'] = this.imageUrl;
    } else {
      json[r'image_url'] = null;
    }
    return json;
  }

  /// Returns a new [SpaceStation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SpaceStation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SpaceStation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SpaceStation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SpaceStation(
        id: mapValueOfType<int>(json, r'id')!,
        url: mapValueOfType<String>(json, r'url')!,
        name: mapValueOfType<String>(json, r'name')!,
        status: SpaceStationStatus.fromJson(json[r'status'])!,
        type: SpaceStationType.fromJson(json[r'type'])!,
        founded: mapDateTime(json, r'founded', '')!,
        deorbited: mapDateTime(json, r'deorbited', ''),
        description: mapValueOfType<String>(json, r'description')!,
        orbit: mapValueOfType<String>(json, r'orbit')!,
        owners: AgencyList.listFromJson(json[r'owners']),
        activeExpedition: ExpeditionSerializerForSpacestation.listFromJson(json[r'active_expedition']),
        imageUrl: mapValueOfType<String>(json, r'image_url'),
      );
    }
    return null;
  }

  static List<SpaceStation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SpaceStation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SpaceStation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SpaceStation> mapFromJson(dynamic json) {
    final map = <String, SpaceStation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SpaceStation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SpaceStation-objects as value to a dart map
  static Map<String, List<SpaceStation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SpaceStation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SpaceStation.listFromJson(entry.value, growable: growable,);
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
    'active_expedition',
  };
}

