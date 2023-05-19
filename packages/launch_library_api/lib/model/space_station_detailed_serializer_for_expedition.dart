//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class SpaceStationDetailedSerializerForExpedition {
  /// Returns a new [SpaceStationDetailedSerializerForExpedition] instance.
  SpaceStationDetailedSerializerForExpedition({
    required this.id,
    required this.url,
    required this.name,
    required this.status,
    required this.founded,
    required this.description,
    required this.orbit,
    this.imageUrl,
    this.owners = const [],
  });

  int id;

  String url;

  String name;

  SpaceStationStatus status;

  DateTime founded;

  String description;

  String orbit;

  String? imageUrl;

  List<AgencyList> owners;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SpaceStationDetailedSerializerForExpedition &&
     other.id == id &&
     other.url == url &&
     other.name == name &&
     other.status == status &&
     other.founded == founded &&
     other.description == description &&
     other.orbit == orbit &&
     other.imageUrl == imageUrl &&
     other.owners == owners;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (url.hashCode) +
    (name.hashCode) +
    (status.hashCode) +
    (founded.hashCode) +
    (description.hashCode) +
    (orbit.hashCode) +
    (imageUrl == null ? 0 : imageUrl!.hashCode) +
    (owners.hashCode);

  @override
  String toString() => 'SpaceStationDetailedSerializerForExpedition[id=$id, url=$url, name=$name, status=$status, founded=$founded, description=$description, orbit=$orbit, imageUrl=$imageUrl, owners=$owners]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'url'] = this.url;
      json[r'name'] = this.name;
      json[r'status'] = this.status;
      json[r'founded'] = _dateFormatter.format(this.founded.toUtc());
      json[r'description'] = this.description;
      json[r'orbit'] = this.orbit;
    if (this.imageUrl != null) {
      json[r'image_url'] = this.imageUrl;
    } else {
      json[r'image_url'] = null;
    }
      json[r'owners'] = this.owners;
    return json;
  }

  /// Returns a new [SpaceStationDetailedSerializerForExpedition] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SpaceStationDetailedSerializerForExpedition? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SpaceStationDetailedSerializerForExpedition[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SpaceStationDetailedSerializerForExpedition[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SpaceStationDetailedSerializerForExpedition(
        id: mapValueOfType<int>(json, r'id')!,
        url: mapValueOfType<String>(json, r'url')!,
        name: mapValueOfType<String>(json, r'name')!,
        status: SpaceStationStatus.fromJson(json[r'status'])!,
        founded: mapDateTime(json, r'founded', '')!,
        description: mapValueOfType<String>(json, r'description')!,
        orbit: mapValueOfType<String>(json, r'orbit')!,
        imageUrl: mapValueOfType<String>(json, r'image_url'),
        owners: AgencyList.listFromJson(json[r'owners']),
      );
    }
    return null;
  }

  static List<SpaceStationDetailedSerializerForExpedition> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SpaceStationDetailedSerializerForExpedition>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SpaceStationDetailedSerializerForExpedition.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SpaceStationDetailedSerializerForExpedition> mapFromJson(dynamic json) {
    final map = <String, SpaceStationDetailedSerializerForExpedition>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SpaceStationDetailedSerializerForExpedition.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SpaceStationDetailedSerializerForExpedition-objects as value to a dart map
  static Map<String, List<SpaceStationDetailedSerializerForExpedition>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SpaceStationDetailedSerializerForExpedition>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SpaceStationDetailedSerializerForExpedition.listFromJson(entry.value, growable: growable,);
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
    'founded',
    'description',
    'orbit',
    'owners',
  };
}

