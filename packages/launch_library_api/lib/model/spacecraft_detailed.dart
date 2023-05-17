//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class SpacecraftDetailed {
  /// Returns a new [SpacecraftDetailed] instance.
  SpacecraftDetailed({
    required this.id,
    required this.url,
    required this.name,
    this.serialNumber,
    required this.status,
    required this.description,
    required this.spacecraftConfig,
    this.flights = const [],
  });

  int id;

  String url;

  String name;

  String? serialNumber;

  SpacecraftStatus status;

  String description;

  SpacecraftConfigurationDetail spacecraftConfig;

  List<SpacecraftFlight> flights;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SpacecraftDetailed &&
     other.id == id &&
     other.url == url &&
     other.name == name &&
     other.serialNumber == serialNumber &&
     other.status == status &&
     other.description == description &&
     other.spacecraftConfig == spacecraftConfig &&
     other.flights == flights;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (url.hashCode) +
    (name.hashCode) +
    (serialNumber == null ? 0 : serialNumber!.hashCode) +
    (status.hashCode) +
    (description.hashCode) +
    (spacecraftConfig.hashCode) +
    (flights.hashCode);

  @override
  String toString() => 'SpacecraftDetailed[id=$id, url=$url, name=$name, serialNumber=$serialNumber, status=$status, description=$description, spacecraftConfig=$spacecraftConfig, flights=$flights]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'url'] = this.url;
      json[r'name'] = this.name;
    if (this.serialNumber != null) {
      json[r'serial_number'] = this.serialNumber;
    } else {
      json[r'serial_number'] = null;
    }
      json[r'status'] = this.status;
      json[r'description'] = this.description;
      json[r'spacecraft_config'] = this.spacecraftConfig;
      json[r'flights'] = this.flights;
    return json;
  }

  /// Returns a new [SpacecraftDetailed] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SpacecraftDetailed? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SpacecraftDetailed[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SpacecraftDetailed[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SpacecraftDetailed(
        id: mapValueOfType<int>(json, r'id')!,
        url: mapValueOfType<String>(json, r'url')!,
        name: mapValueOfType<String>(json, r'name')!,
        serialNumber: mapValueOfType<String>(json, r'serial_number'),
        status: SpacecraftStatus.fromJson(json[r'status'])!,
        description: mapValueOfType<String>(json, r'description')!,
        spacecraftConfig: SpacecraftConfigurationDetail.fromJson(json[r'spacecraft_config'])!,
        flights: SpacecraftFlight.listFromJson(json[r'flights']),
      );
    }
    return null;
  }

  static List<SpacecraftDetailed> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SpacecraftDetailed>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SpacecraftDetailed.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SpacecraftDetailed> mapFromJson(dynamic json) {
    final map = <String, SpacecraftDetailed>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SpacecraftDetailed.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SpacecraftDetailed-objects as value to a dart map
  static Map<String, List<SpacecraftDetailed>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SpacecraftDetailed>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SpacecraftDetailed.listFromJson(entry.value, growable: growable,);
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
    'description',
    'spacecraft_config',
  };
}

