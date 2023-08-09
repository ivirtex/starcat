//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class Orbiter {
  /// Returns a new [Orbiter] instance.
  Orbiter({
    required this.id,
    required this.url,
    required this.name,
    required this.serialNumber,
    required this.isPlaceholder,
    required this.inSpace,
    required this.timeInSpace,
    required this.timeDocked,
    this.flightsCount,
    this.missionEndsCount,
    required this.status,
    required this.description,
    required this.spacecraftConfig,
  });

  int id;

  String url;

  String name;

  String? serialNumber;

  bool isPlaceholder;

  bool inSpace;

  String timeInSpace;

  String timeDocked;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? flightsCount;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? missionEndsCount;

  OrbiterStatus status;

  String description;

  OrbiterSpacecraftConfig spacecraftConfig;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Orbiter &&
     other.id == id &&
     other.url == url &&
     other.name == name &&
     other.serialNumber == serialNumber &&
     other.isPlaceholder == isPlaceholder &&
     other.inSpace == inSpace &&
     other.timeInSpace == timeInSpace &&
     other.timeDocked == timeDocked &&
     other.flightsCount == flightsCount &&
     other.missionEndsCount == missionEndsCount &&
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
    (isPlaceholder.hashCode) +
    (inSpace.hashCode) +
    (timeInSpace.hashCode) +
    (timeDocked.hashCode) +
    (flightsCount == null ? 0 : flightsCount!.hashCode) +
    (missionEndsCount == null ? 0 : missionEndsCount!.hashCode) +
    (status.hashCode) +
    (description.hashCode) +
    (spacecraftConfig.hashCode);

  @override
  String toString() => 'Orbiter[id=$id, url=$url, name=$name, serialNumber=$serialNumber, isPlaceholder=$isPlaceholder, inSpace=$inSpace, timeInSpace=$timeInSpace, timeDocked=$timeDocked, flightsCount=$flightsCount, missionEndsCount=$missionEndsCount, status=$status, description=$description, spacecraftConfig=$spacecraftConfig]';

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
      json[r'is_placeholder'] = this.isPlaceholder;
      json[r'in_space'] = this.inSpace;
      json[r'time_in_space'] = this.timeInSpace;
      json[r'time_docked'] = this.timeDocked;
    if (this.flightsCount != null) {
      json[r'flights_count'] = this.flightsCount;
    } else {
      json[r'flights_count'] = null;
    }
    if (this.missionEndsCount != null) {
      json[r'mission_ends_count'] = this.missionEndsCount;
    } else {
      json[r'mission_ends_count'] = null;
    }
      json[r'status'] = this.status;
      json[r'description'] = this.description;
      json[r'spacecraft_config'] = this.spacecraftConfig;
    return json;
  }

  /// Returns a new [Orbiter] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Orbiter? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Orbiter[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Orbiter[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Orbiter(
        id: mapValueOfType<int>(json, r'id')!,
        url: mapValueOfType<String>(json, r'url')!,
        name: mapValueOfType<String>(json, r'name')!,
        serialNumber: mapValueOfType<String>(json, r'serial_number'),
        isPlaceholder: mapValueOfType<bool>(json, r'is_placeholder')!,
        inSpace: mapValueOfType<bool>(json, r'in_space')!,
        timeInSpace: mapValueOfType<String>(json, r'time_in_space')!,
        timeDocked: mapValueOfType<String>(json, r'time_docked')!,
        flightsCount: mapValueOfType<int>(json, r'flights_count'),
        missionEndsCount: mapValueOfType<int>(json, r'mission_ends_count'),
        status: OrbiterStatus.fromJson(json[r'status'])!,
        description: mapValueOfType<String>(json, r'description')!,
        spacecraftConfig: OrbiterSpacecraftConfig.fromJson(json[r'spacecraft_config'])!,
      );
    }
    return null;
  }

  static List<Orbiter> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Orbiter>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Orbiter.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Orbiter> mapFromJson(dynamic json) {
    final map = <String, Orbiter>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Orbiter.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Orbiter-objects as value to a dart map
  static Map<String, List<Orbiter>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Orbiter>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Orbiter.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'url',
    'name',
    'serial_number',
    'is_placeholder',
    'in_space',
    'time_in_space',
    'time_docked',
    'status',
    'description',
    'spacecraft_config',
  };
}

