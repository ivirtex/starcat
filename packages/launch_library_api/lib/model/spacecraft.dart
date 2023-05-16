//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class Spacecraft {
  /// Returns a new [Spacecraft] instance.
  Spacecraft({
    required this.id,
    required this.url,
    required this.name,
    this.serialNumber,
    required this.status,
    required this.description,
    required this.spacecraftConfig,
  });

  int id;

  String url;

  String name;

  String? serialNumber;

  SpacecraftStatus status;

  String description;

  SpacecraftConfig spacecraftConfig;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Spacecraft &&
     other.id == id &&
     other.url == url &&
     other.name == name &&
     other.serialNumber == serialNumber &&
     other.status == status &&
     other.description == description &&
     other.spacecraftConfig == spacecraftConfig;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (url.hashCode) +
    (name.hashCode) +
    (serialNumber == null ? 0 : serialNumber!.hashCode) +
    (status.hashCode) +
    (description.hashCode) +
    (spacecraftConfig.hashCode);

  @override
  String toString() => 'Spacecraft[id=$id, url=$url, name=$name, serialNumber=$serialNumber, status=$status, description=$description, spacecraftConfig=$spacecraftConfig]';

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
    return json;
  }

  /// Returns a new [Spacecraft] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Spacecraft? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Spacecraft[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Spacecraft[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Spacecraft(
        id: mapValueOfType<int>(json, r'id')!,
        url: mapValueOfType<String>(json, r'url')!,
        name: mapValueOfType<String>(json, r'name')!,
        serialNumber: mapValueOfType<String>(json, r'serial_number'),
        status: SpacecraftStatus.fromJson(json[r'status'])!,
        description: mapValueOfType<String>(json, r'description')!,
        spacecraftConfig: SpacecraftConfig.fromJson(json[r'spacecraft_config'])!,
      );
    }
    return null;
  }

  static List<Spacecraft> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Spacecraft>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Spacecraft.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Spacecraft> mapFromJson(dynamic json) {
    final map = <String, Spacecraft>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Spacecraft.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Spacecraft-objects as value to a dart map
  static Map<String, List<Spacecraft>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Spacecraft>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Spacecraft.listFromJson(entry.value, growable: growable,);
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

