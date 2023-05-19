//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class AgencySerializerDetailed {
  /// Returns a new [AgencySerializerDetailed] instance.
  AgencySerializerDetailed({
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
    this.parent,
    required this.launchLibraryUrl,
    this.totalLaunchCount,
    this.successfulLaunches,
    this.consecutiveSuccessfulLaunches,
    this.failedLaunches,
    this.pendingLaunches,
    this.successfulLandings,
    this.failedLandings,
    this.attemptedLandings,
    this.consecutiveSuccessfulLandings,
    this.infoUrl,
    this.wikiUrl,
    this.logoUrl,
    this.imageUrl,
    this.nationUrl,
    this.launcherList = const [],
    this.spacecraftList = const [],
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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? parent;

  String launchLibraryUrl;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? totalLaunchCount;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? successfulLaunches;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? consecutiveSuccessfulLaunches;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? failedLaunches;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? pendingLaunches;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? successfulLandings;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? failedLandings;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? attemptedLandings;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? consecutiveSuccessfulLandings;

  String? infoUrl;

  String? wikiUrl;

  String? logoUrl;

  String? imageUrl;

  String? nationUrl;

  List<LauncherConfigDetailSerializerForAgency> launcherList;

  List<SpacecraftConfigurationDetail> spacecraftList;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AgencySerializerDetailed &&
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
     other.parent == parent &&
     other.launchLibraryUrl == launchLibraryUrl &&
     other.totalLaunchCount == totalLaunchCount &&
     other.successfulLaunches == successfulLaunches &&
     other.consecutiveSuccessfulLaunches == consecutiveSuccessfulLaunches &&
     other.failedLaunches == failedLaunches &&
     other.pendingLaunches == pendingLaunches &&
     other.successfulLandings == successfulLandings &&
     other.failedLandings == failedLandings &&
     other.attemptedLandings == attemptedLandings &&
     other.consecutiveSuccessfulLandings == consecutiveSuccessfulLandings &&
     other.infoUrl == infoUrl &&
     other.wikiUrl == wikiUrl &&
     other.logoUrl == logoUrl &&
     other.imageUrl == imageUrl &&
     other.nationUrl == nationUrl &&
     other.launcherList == launcherList &&
     other.spacecraftList == spacecraftList;

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
    (parent == null ? 0 : parent!.hashCode) +
    (launchLibraryUrl.hashCode) +
    (totalLaunchCount == null ? 0 : totalLaunchCount!.hashCode) +
    (successfulLaunches == null ? 0 : successfulLaunches!.hashCode) +
    (consecutiveSuccessfulLaunches == null ? 0 : consecutiveSuccessfulLaunches!.hashCode) +
    (failedLaunches == null ? 0 : failedLaunches!.hashCode) +
    (pendingLaunches == null ? 0 : pendingLaunches!.hashCode) +
    (successfulLandings == null ? 0 : successfulLandings!.hashCode) +
    (failedLandings == null ? 0 : failedLandings!.hashCode) +
    (attemptedLandings == null ? 0 : attemptedLandings!.hashCode) +
    (consecutiveSuccessfulLandings == null ? 0 : consecutiveSuccessfulLandings!.hashCode) +
    (infoUrl == null ? 0 : infoUrl!.hashCode) +
    (wikiUrl == null ? 0 : wikiUrl!.hashCode) +
    (logoUrl == null ? 0 : logoUrl!.hashCode) +
    (imageUrl == null ? 0 : imageUrl!.hashCode) +
    (nationUrl == null ? 0 : nationUrl!.hashCode) +
    (launcherList.hashCode) +
    (spacecraftList.hashCode);

  @override
  String toString() => 'AgencySerializerDetailed[id=$id, url=$url, name=$name, featured=$featured, type=$type, countryCode=$countryCode, abbrev=$abbrev, description=$description, administrator=$administrator, foundingYear=$foundingYear, launchers=$launchers, spacecraft=$spacecraft, parent=$parent, launchLibraryUrl=$launchLibraryUrl, totalLaunchCount=$totalLaunchCount, successfulLaunches=$successfulLaunches, consecutiveSuccessfulLaunches=$consecutiveSuccessfulLaunches, failedLaunches=$failedLaunches, pendingLaunches=$pendingLaunches, successfulLandings=$successfulLandings, failedLandings=$failedLandings, attemptedLandings=$attemptedLandings, consecutiveSuccessfulLandings=$consecutiveSuccessfulLandings, infoUrl=$infoUrl, wikiUrl=$wikiUrl, logoUrl=$logoUrl, imageUrl=$imageUrl, nationUrl=$nationUrl, launcherList=$launcherList, spacecraftList=$spacecraftList]';

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
    if (this.parent != null) {
      json[r'parent'] = this.parent;
    } else {
      json[r'parent'] = null;
    }
      json[r'launch_library_url'] = this.launchLibraryUrl;
    if (this.totalLaunchCount != null) {
      json[r'total_launch_count'] = this.totalLaunchCount;
    } else {
      json[r'total_launch_count'] = null;
    }
    if (this.successfulLaunches != null) {
      json[r'successful_launches'] = this.successfulLaunches;
    } else {
      json[r'successful_launches'] = null;
    }
    if (this.consecutiveSuccessfulLaunches != null) {
      json[r'consecutive_successful_launches'] = this.consecutiveSuccessfulLaunches;
    } else {
      json[r'consecutive_successful_launches'] = null;
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
    if (this.consecutiveSuccessfulLandings != null) {
      json[r'consecutive_successful_landings'] = this.consecutiveSuccessfulLandings;
    } else {
      json[r'consecutive_successful_landings'] = null;
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
      json[r'launcher_list'] = this.launcherList;
      json[r'spacecraft_list'] = this.spacecraftList;
    return json;
  }

  /// Returns a new [AgencySerializerDetailed] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AgencySerializerDetailed? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AgencySerializerDetailed[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AgencySerializerDetailed[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AgencySerializerDetailed(
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
        parent: mapValueOfType<String>(json, r'parent'),
        launchLibraryUrl: mapValueOfType<String>(json, r'launch_library_url')!,
        totalLaunchCount: mapValueOfType<int>(json, r'total_launch_count'),
        successfulLaunches: mapValueOfType<int>(json, r'successful_launches'),
        consecutiveSuccessfulLaunches: mapValueOfType<int>(json, r'consecutive_successful_launches'),
        failedLaunches: mapValueOfType<int>(json, r'failed_launches'),
        pendingLaunches: mapValueOfType<int>(json, r'pending_launches'),
        successfulLandings: mapValueOfType<int>(json, r'successful_landings'),
        failedLandings: mapValueOfType<int>(json, r'failed_landings'),
        attemptedLandings: mapValueOfType<int>(json, r'attempted_landings'),
        consecutiveSuccessfulLandings: mapValueOfType<int>(json, r'consecutive_successful_landings'),
        infoUrl: mapValueOfType<String>(json, r'info_url'),
        wikiUrl: mapValueOfType<String>(json, r'wiki_url'),
        logoUrl: mapValueOfType<String>(json, r'logo_url'),
        imageUrl: mapValueOfType<String>(json, r'image_url'),
        nationUrl: mapValueOfType<String>(json, r'nation_url'),
        launcherList: LauncherConfigDetailSerializerForAgency.listFromJson(json[r'launcher_list']),
        spacecraftList: SpacecraftConfigurationDetail.listFromJson(json[r'spacecraft_list']),
      );
    }
    return null;
  }

  static List<AgencySerializerDetailed> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgencySerializerDetailed>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgencySerializerDetailed.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AgencySerializerDetailed> mapFromJson(dynamic json) {
    final map = <String, AgencySerializerDetailed>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AgencySerializerDetailed.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AgencySerializerDetailed-objects as value to a dart map
  static Map<String, List<AgencySerializerDetailed>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AgencySerializerDetailed>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AgencySerializerDetailed.listFromJson(entry.value, growable: growable,);
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
    'launcher_list',
    'spacecraft_list',
  };
}

