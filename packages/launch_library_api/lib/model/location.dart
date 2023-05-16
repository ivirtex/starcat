//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class Location {
  /// Returns a new [Location] instance.
  Location({
    required this.id,
    required this.url,
    this.name,
    this.countryCode,
    this.mapImage,
    this.timezoneName,
    this.totalLaunchCount,
    this.totalLandingCount,
  });

  int id;

  String url;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? countryCode;

  String? mapImage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? timezoneName;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? totalLaunchCount;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? totalLandingCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Location &&
     other.id == id &&
     other.url == url &&
     other.name == name &&
     other.countryCode == countryCode &&
     other.mapImage == mapImage &&
     other.timezoneName == timezoneName &&
     other.totalLaunchCount == totalLaunchCount &&
     other.totalLandingCount == totalLandingCount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (url.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (countryCode == null ? 0 : countryCode!.hashCode) +
    (mapImage == null ? 0 : mapImage!.hashCode) +
    (timezoneName == null ? 0 : timezoneName!.hashCode) +
    (totalLaunchCount == null ? 0 : totalLaunchCount!.hashCode) +
    (totalLandingCount == null ? 0 : totalLandingCount!.hashCode);

  @override
  String toString() => 'Location[id=$id, url=$url, name=$name, countryCode=$countryCode, mapImage=$mapImage, timezoneName=$timezoneName, totalLaunchCount=$totalLaunchCount, totalLandingCount=$totalLandingCount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'url'] = this.url;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.countryCode != null) {
      json[r'country_code'] = this.countryCode;
    } else {
      json[r'country_code'] = null;
    }
    if (this.mapImage != null) {
      json[r'map_image'] = this.mapImage;
    } else {
      json[r'map_image'] = null;
    }
    if (this.timezoneName != null) {
      json[r'timezone_name'] = this.timezoneName;
    } else {
      json[r'timezone_name'] = null;
    }
    if (this.totalLaunchCount != null) {
      json[r'total_launch_count'] = this.totalLaunchCount;
    } else {
      json[r'total_launch_count'] = null;
    }
    if (this.totalLandingCount != null) {
      json[r'total_landing_count'] = this.totalLandingCount;
    } else {
      json[r'total_landing_count'] = null;
    }
    return json;
  }

  /// Returns a new [Location] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Location? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Location[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Location[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Location(
        id: mapValueOfType<int>(json, r'id')!,
        url: mapValueOfType<String>(json, r'url')!,
        name: mapValueOfType<String>(json, r'name'),
        countryCode: mapValueOfType<String>(json, r'country_code'),
        mapImage: mapValueOfType<String>(json, r'map_image'),
        timezoneName: mapValueOfType<String>(json, r'timezone_name'),
        totalLaunchCount: mapValueOfType<int>(json, r'total_launch_count'),
        totalLandingCount: mapValueOfType<int>(json, r'total_landing_count'),
      );
    }
    return null;
  }

  static List<Location> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Location>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Location.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Location> mapFromJson(dynamic json) {
    final map = <String, Location>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Location.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Location-objects as value to a dart map
  static Map<String, List<Location>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Location>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Location.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'url',
  };
}

