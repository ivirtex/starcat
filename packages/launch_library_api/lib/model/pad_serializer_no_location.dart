//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class PadSerializerNoLocation {
  /// Returns a new [PadSerializerNoLocation] instance.
  PadSerializerNoLocation({
    required this.id,
    required this.url,
    this.agencyId,
    this.name,
    this.infoUrl,
    this.wikiUrl,
    this.mapUrl,
    this.latitude,
    this.longitude,
    this.countryCode,
    this.mapImage,
    this.totalLaunchCount,
  });

  int id;

  String url;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? agencyId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  String? infoUrl;

  String? wikiUrl;

  String? mapUrl;

  String? latitude;

  String? longitude;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? countryCode;

  String? mapImage;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? totalLaunchCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PadSerializerNoLocation &&
     other.id == id &&
     other.url == url &&
     other.agencyId == agencyId &&
     other.name == name &&
     other.infoUrl == infoUrl &&
     other.wikiUrl == wikiUrl &&
     other.mapUrl == mapUrl &&
     other.latitude == latitude &&
     other.longitude == longitude &&
     other.countryCode == countryCode &&
     other.mapImage == mapImage &&
     other.totalLaunchCount == totalLaunchCount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (url.hashCode) +
    (agencyId == null ? 0 : agencyId!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (infoUrl == null ? 0 : infoUrl!.hashCode) +
    (wikiUrl == null ? 0 : wikiUrl!.hashCode) +
    (mapUrl == null ? 0 : mapUrl!.hashCode) +
    (latitude == null ? 0 : latitude!.hashCode) +
    (longitude == null ? 0 : longitude!.hashCode) +
    (countryCode == null ? 0 : countryCode!.hashCode) +
    (mapImage == null ? 0 : mapImage!.hashCode) +
    (totalLaunchCount == null ? 0 : totalLaunchCount!.hashCode);

  @override
  String toString() => 'PadSerializerNoLocation[id=$id, url=$url, agencyId=$agencyId, name=$name, infoUrl=$infoUrl, wikiUrl=$wikiUrl, mapUrl=$mapUrl, latitude=$latitude, longitude=$longitude, countryCode=$countryCode, mapImage=$mapImage, totalLaunchCount=$totalLaunchCount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'url'] = this.url;
    if (this.agencyId != null) {
      json[r'agency_id'] = this.agencyId;
    } else {
      json[r'agency_id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.infoUrl != null) {
      json[r'info_url'] = this.infoUrl;
    } else {
      json[r'info_url'] = null;
    }
    if (this.wikiUrl != null) {
      json[r'wiki_url'] = this.wikiUrl;
    } else {
      json[r'wiki_url'] = null;
    }
    if (this.mapUrl != null) {
      json[r'map_url'] = this.mapUrl;
    } else {
      json[r'map_url'] = null;
    }
    if (this.latitude != null) {
      json[r'latitude'] = this.latitude;
    } else {
      json[r'latitude'] = null;
    }
    if (this.longitude != null) {
      json[r'longitude'] = this.longitude;
    } else {
      json[r'longitude'] = null;
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
    if (this.totalLaunchCount != null) {
      json[r'total_launch_count'] = this.totalLaunchCount;
    } else {
      json[r'total_launch_count'] = null;
    }
    return json;
  }

  /// Returns a new [PadSerializerNoLocation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PadSerializerNoLocation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PadSerializerNoLocation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PadSerializerNoLocation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PadSerializerNoLocation(
        id: mapValueOfType<int>(json, r'id')!,
        url: mapValueOfType<String>(json, r'url')!,
        agencyId: mapValueOfType<int>(json, r'agency_id'),
        name: mapValueOfType<String>(json, r'name'),
        infoUrl: mapValueOfType<String>(json, r'info_url'),
        wikiUrl: mapValueOfType<String>(json, r'wiki_url'),
        mapUrl: mapValueOfType<String>(json, r'map_url'),
        latitude: mapValueOfType<String>(json, r'latitude'),
        longitude: mapValueOfType<String>(json, r'longitude'),
        countryCode: mapValueOfType<String>(json, r'country_code'),
        mapImage: mapValueOfType<String>(json, r'map_image'),
        totalLaunchCount: mapValueOfType<int>(json, r'total_launch_count'),
      );
    }
    return null;
  }

  static List<PadSerializerNoLocation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PadSerializerNoLocation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PadSerializerNoLocation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PadSerializerNoLocation> mapFromJson(dynamic json) {
    final map = <String, PadSerializerNoLocation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PadSerializerNoLocation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PadSerializerNoLocation-objects as value to a dart map
  static Map<String, List<PadSerializerNoLocation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PadSerializerNoLocation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PadSerializerNoLocation.listFromJson(entry.value, growable: growable,);
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

