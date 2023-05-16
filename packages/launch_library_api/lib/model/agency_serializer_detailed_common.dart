//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class AgencySerializerDetailedCommon {
  /// Returns a new [AgencySerializerDetailedCommon] instance.
  AgencySerializerDetailedCommon({
    required this.id,
    required this.url,
    required this.name,
    this.featured,
    this.type,
    this.countryCode,
    this.abbrev,
    this.description,
    this.administrator,
    this.foundingYear,
    this.launchers,
    this.spacecraft,
    required this.launchLibraryUrl,
    this.totalLaunchCount,
    this.consecutiveSuccessfulLaunches,
    this.successfulLaunches,
    this.failedLaunches,
    this.pendingLaunches,
    this.consecutiveSuccessfulLandings,
    this.successfulLandings,
    this.failedLandings,
    this.attemptedLandings,
    this.infoUrl,
    this.wikiUrl,
    this.logoUrl,
    this.imageUrl,
    this.nationUrl,
  });

  int id;

  String url;

  String name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? featured;

  String? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? countryCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? abbrev;

  String? description;

  String? administrator;

  String? foundingYear;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? launchers;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? spacecraft;

  String launchLibraryUrl;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? totalLaunchCount;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? consecutiveSuccessfulLaunches;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? successfulLaunches;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? failedLaunches;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? pendingLaunches;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? consecutiveSuccessfulLandings;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? successfulLandings;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? failedLandings;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? attemptedLandings;

  String? infoUrl;

  String? wikiUrl;

  String? logoUrl;

  String? imageUrl;

  String? nationUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AgencySerializerDetailedCommon &&
     other.id == id &&
     other.url == url &&
     other.name == name &&
     other.featured == featured &&
     other.type == type &&
     other.countryCode == countryCode &&
     other.abbrev == abbrev &&
     other.description == description &&
     other.administrator == administrator &&
     other.foundingYear == foundingYear &&
     other.launchers == launchers &&
     other.spacecraft == spacecraft &&
     other.launchLibraryUrl == launchLibraryUrl &&
     other.totalLaunchCount == totalLaunchCount &&
     other.consecutiveSuccessfulLaunches == consecutiveSuccessfulLaunches &&
     other.successfulLaunches == successfulLaunches &&
     other.failedLaunches == failedLaunches &&
     other.pendingLaunches == pendingLaunches &&
     other.consecutiveSuccessfulLandings == consecutiveSuccessfulLandings &&
     other.successfulLandings == successfulLandings &&
     other.failedLandings == failedLandings &&
     other.attemptedLandings == attemptedLandings &&
     other.infoUrl == infoUrl &&
     other.wikiUrl == wikiUrl &&
     other.logoUrl == logoUrl &&
     other.imageUrl == imageUrl &&
     other.nationUrl == nationUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (url.hashCode) +
    (name.hashCode) +
    (featured == null ? 0 : featured!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (countryCode == null ? 0 : countryCode!.hashCode) +
    (abbrev == null ? 0 : abbrev!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (administrator == null ? 0 : administrator!.hashCode) +
    (foundingYear == null ? 0 : foundingYear!.hashCode) +
    (launchers == null ? 0 : launchers!.hashCode) +
    (spacecraft == null ? 0 : spacecraft!.hashCode) +
    (launchLibraryUrl.hashCode) +
    (totalLaunchCount == null ? 0 : totalLaunchCount!.hashCode) +
    (consecutiveSuccessfulLaunches == null ? 0 : consecutiveSuccessfulLaunches!.hashCode) +
    (successfulLaunches == null ? 0 : successfulLaunches!.hashCode) +
    (failedLaunches == null ? 0 : failedLaunches!.hashCode) +
    (pendingLaunches == null ? 0 : pendingLaunches!.hashCode) +
    (consecutiveSuccessfulLandings == null ? 0 : consecutiveSuccessfulLandings!.hashCode) +
    (successfulLandings == null ? 0 : successfulLandings!.hashCode) +
    (failedLandings == null ? 0 : failedLandings!.hashCode) +
    (attemptedLandings == null ? 0 : attemptedLandings!.hashCode) +
    (infoUrl == null ? 0 : infoUrl!.hashCode) +
    (wikiUrl == null ? 0 : wikiUrl!.hashCode) +
    (logoUrl == null ? 0 : logoUrl!.hashCode) +
    (imageUrl == null ? 0 : imageUrl!.hashCode) +
    (nationUrl == null ? 0 : nationUrl!.hashCode);

  @override
  String toString() => 'AgencySerializerDetailedCommon[id=$id, url=$url, name=$name, featured=$featured, type=$type, countryCode=$countryCode, abbrev=$abbrev, description=$description, administrator=$administrator, foundingYear=$foundingYear, launchers=$launchers, spacecraft=$spacecraft, launchLibraryUrl=$launchLibraryUrl, totalLaunchCount=$totalLaunchCount, consecutiveSuccessfulLaunches=$consecutiveSuccessfulLaunches, successfulLaunches=$successfulLaunches, failedLaunches=$failedLaunches, pendingLaunches=$pendingLaunches, consecutiveSuccessfulLandings=$consecutiveSuccessfulLandings, successfulLandings=$successfulLandings, failedLandings=$failedLandings, attemptedLandings=$attemptedLandings, infoUrl=$infoUrl, wikiUrl=$wikiUrl, logoUrl=$logoUrl, imageUrl=$imageUrl, nationUrl=$nationUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'url'] = this.url;
      json[r'name'] = this.name;
    if (this.featured != null) {
      json[r'featured'] = this.featured;
    } else {
      json[r'featured'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.countryCode != null) {
      json[r'country_code'] = this.countryCode;
    } else {
      json[r'country_code'] = null;
    }
    if (this.abbrev != null) {
      json[r'abbrev'] = this.abbrev;
    } else {
      json[r'abbrev'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.administrator != null) {
      json[r'administrator'] = this.administrator;
    } else {
      json[r'administrator'] = null;
    }
    if (this.foundingYear != null) {
      json[r'founding_year'] = this.foundingYear;
    } else {
      json[r'founding_year'] = null;
    }
    if (this.launchers != null) {
      json[r'launchers'] = this.launchers;
    } else {
      json[r'launchers'] = null;
    }
    if (this.spacecraft != null) {
      json[r'spacecraft'] = this.spacecraft;
    } else {
      json[r'spacecraft'] = null;
    }
      json[r'launch_library_url'] = this.launchLibraryUrl;
    if (this.totalLaunchCount != null) {
      json[r'total_launch_count'] = this.totalLaunchCount;
    } else {
      json[r'total_launch_count'] = null;
    }
    if (this.consecutiveSuccessfulLaunches != null) {
      json[r'consecutive_successful_launches'] = this.consecutiveSuccessfulLaunches;
    } else {
      json[r'consecutive_successful_launches'] = null;
    }
    if (this.successfulLaunches != null) {
      json[r'successful_launches'] = this.successfulLaunches;
    } else {
      json[r'successful_launches'] = null;
    }
    if (this.failedLaunches != null) {
      json[r'failed_launches'] = this.failedLaunches;
    } else {
      json[r'failed_launches'] = null;
    }
    if (this.pendingLaunches != null) {
      json[r'pending_launches'] = this.pendingLaunches;
    } else {
      json[r'pending_launches'] = null;
    }
    if (this.consecutiveSuccessfulLandings != null) {
      json[r'consecutive_successful_landings'] = this.consecutiveSuccessfulLandings;
    } else {
      json[r'consecutive_successful_landings'] = null;
    }
    if (this.successfulLandings != null) {
      json[r'successful_landings'] = this.successfulLandings;
    } else {
      json[r'successful_landings'] = null;
    }
    if (this.failedLandings != null) {
      json[r'failed_landings'] = this.failedLandings;
    } else {
      json[r'failed_landings'] = null;
    }
    if (this.attemptedLandings != null) {
      json[r'attempted_landings'] = this.attemptedLandings;
    } else {
      json[r'attempted_landings'] = null;
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
    if (this.logoUrl != null) {
      json[r'logo_url'] = this.logoUrl;
    } else {
      json[r'logo_url'] = null;
    }
    if (this.imageUrl != null) {
      json[r'image_url'] = this.imageUrl;
    } else {
      json[r'image_url'] = null;
    }
    if (this.nationUrl != null) {
      json[r'nation_url'] = this.nationUrl;
    } else {
      json[r'nation_url'] = null;
    }
    return json;
  }

  /// Returns a new [AgencySerializerDetailedCommon] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AgencySerializerDetailedCommon? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AgencySerializerDetailedCommon[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AgencySerializerDetailedCommon[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AgencySerializerDetailedCommon(
        id: mapValueOfType<int>(json, r'id')!,
        url: mapValueOfType<String>(json, r'url')!,
        name: mapValueOfType<String>(json, r'name')!,
        featured: mapValueOfType<bool>(json, r'featured'),
        type: mapValueOfType<String>(json, r'type'),
        countryCode: mapValueOfType<String>(json, r'country_code'),
        abbrev: mapValueOfType<String>(json, r'abbrev'),
        description: mapValueOfType<String>(json, r'description'),
        administrator: mapValueOfType<String>(json, r'administrator'),
        foundingYear: mapValueOfType<String>(json, r'founding_year'),
        launchers: mapValueOfType<String>(json, r'launchers'),
        spacecraft: mapValueOfType<String>(json, r'spacecraft'),
        launchLibraryUrl: mapValueOfType<String>(json, r'launch_library_url')!,
        totalLaunchCount: mapValueOfType<int>(json, r'total_launch_count'),
        consecutiveSuccessfulLaunches: mapValueOfType<int>(json, r'consecutive_successful_launches'),
        successfulLaunches: mapValueOfType<int>(json, r'successful_launches'),
        failedLaunches: mapValueOfType<int>(json, r'failed_launches'),
        pendingLaunches: mapValueOfType<int>(json, r'pending_launches'),
        consecutiveSuccessfulLandings: mapValueOfType<int>(json, r'consecutive_successful_landings'),
        successfulLandings: mapValueOfType<int>(json, r'successful_landings'),
        failedLandings: mapValueOfType<int>(json, r'failed_landings'),
        attemptedLandings: mapValueOfType<int>(json, r'attempted_landings'),
        infoUrl: mapValueOfType<String>(json, r'info_url'),
        wikiUrl: mapValueOfType<String>(json, r'wiki_url'),
        logoUrl: mapValueOfType<String>(json, r'logo_url'),
        imageUrl: mapValueOfType<String>(json, r'image_url'),
        nationUrl: mapValueOfType<String>(json, r'nation_url'),
      );
    }
    return null;
  }

  static List<AgencySerializerDetailedCommon> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgencySerializerDetailedCommon>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgencySerializerDetailedCommon.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AgencySerializerDetailedCommon> mapFromJson(dynamic json) {
    final map = <String, AgencySerializerDetailedCommon>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AgencySerializerDetailedCommon.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AgencySerializerDetailedCommon-objects as value to a dart map
  static Map<String, List<AgencySerializerDetailedCommon>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AgencySerializerDetailedCommon>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AgencySerializerDetailedCommon.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'url',
    'name',
    'launch_library_url',
  };
}

