//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class LauncherConfigDetailSerializerForAgency {
  /// Returns a new [LauncherConfigDetailSerializerForAgency] instance.
  LauncherConfigDetailSerializerForAgency({
    required this.id,
    required this.url,
    required this.name,
    this.description,
    this.family,
    this.fullName,
    this.variant,
    this.alias,
    this.minStage,
    this.maxStage,
    this.length,
    this.diameter,
    this.maidenFlight,
    this.launchMass,
    this.leoCapacity,
    this.gtoCapacity,
    this.toThrust,
    this.apogee,
    this.vehicleRange,
    this.imageUrl,
    this.infoUrl,
    this.wikiUrl,
    this.consecutiveSuccessfulLaunches,
    this.successfulLaunches,
    this.failedLaunches,
    this.pendingLaunches,
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
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? family;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fullName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? variant;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? alias;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? minStage;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? maxStage;

  double? length;

  double? diameter;

  DateTime? maidenFlight;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? launchMass;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? leoCapacity;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? gtoCapacity;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? toThrust;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? apogee;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? vehicleRange;

  String? imageUrl;

  String? infoUrl;

  String? wikiUrl;

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

  @override
  bool operator ==(Object other) => identical(this, other) || other is LauncherConfigDetailSerializerForAgency &&
     other.id == id &&
     other.url == url &&
     other.name == name &&
     other.description == description &&
     other.family == family &&
     other.fullName == fullName &&
     other.variant == variant &&
     other.alias == alias &&
     other.minStage == minStage &&
     other.maxStage == maxStage &&
     other.length == length &&
     other.diameter == diameter &&
     other.maidenFlight == maidenFlight &&
     other.launchMass == launchMass &&
     other.leoCapacity == leoCapacity &&
     other.gtoCapacity == gtoCapacity &&
     other.toThrust == toThrust &&
     other.apogee == apogee &&
     other.vehicleRange == vehicleRange &&
     other.imageUrl == imageUrl &&
     other.infoUrl == infoUrl &&
     other.wikiUrl == wikiUrl &&
     other.consecutiveSuccessfulLaunches == consecutiveSuccessfulLaunches &&
     other.successfulLaunches == successfulLaunches &&
     other.failedLaunches == failedLaunches &&
     other.pendingLaunches == pendingLaunches;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (url.hashCode) +
    (name.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (family == null ? 0 : family!.hashCode) +
    (fullName == null ? 0 : fullName!.hashCode) +
    (variant == null ? 0 : variant!.hashCode) +
    (alias == null ? 0 : alias!.hashCode) +
    (minStage == null ? 0 : minStage!.hashCode) +
    (maxStage == null ? 0 : maxStage!.hashCode) +
    (length == null ? 0 : length!.hashCode) +
    (diameter == null ? 0 : diameter!.hashCode) +
    (maidenFlight == null ? 0 : maidenFlight!.hashCode) +
    (launchMass == null ? 0 : launchMass!.hashCode) +
    (leoCapacity == null ? 0 : leoCapacity!.hashCode) +
    (gtoCapacity == null ? 0 : gtoCapacity!.hashCode) +
    (toThrust == null ? 0 : toThrust!.hashCode) +
    (apogee == null ? 0 : apogee!.hashCode) +
    (vehicleRange == null ? 0 : vehicleRange!.hashCode) +
    (imageUrl == null ? 0 : imageUrl!.hashCode) +
    (infoUrl == null ? 0 : infoUrl!.hashCode) +
    (wikiUrl == null ? 0 : wikiUrl!.hashCode) +
    (consecutiveSuccessfulLaunches == null ? 0 : consecutiveSuccessfulLaunches!.hashCode) +
    (successfulLaunches == null ? 0 : successfulLaunches!.hashCode) +
    (failedLaunches == null ? 0 : failedLaunches!.hashCode) +
    (pendingLaunches == null ? 0 : pendingLaunches!.hashCode);

  @override
  String toString() => 'LauncherConfigDetailSerializerForAgency[id=$id, url=$url, name=$name, description=$description, family=$family, fullName=$fullName, variant=$variant, alias=$alias, minStage=$minStage, maxStage=$maxStage, length=$length, diameter=$diameter, maidenFlight=$maidenFlight, launchMass=$launchMass, leoCapacity=$leoCapacity, gtoCapacity=$gtoCapacity, toThrust=$toThrust, apogee=$apogee, vehicleRange=$vehicleRange, imageUrl=$imageUrl, infoUrl=$infoUrl, wikiUrl=$wikiUrl, consecutiveSuccessfulLaunches=$consecutiveSuccessfulLaunches, successfulLaunches=$successfulLaunches, failedLaunches=$failedLaunches, pendingLaunches=$pendingLaunches]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'url'] = this.url;
      json[r'name'] = this.name;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.family != null) {
      json[r'family'] = this.family;
    } else {
      json[r'family'] = null;
    }
    if (this.fullName != null) {
      json[r'full_name'] = this.fullName;
    } else {
      json[r'full_name'] = null;
    }
    if (this.variant != null) {
      json[r'variant'] = this.variant;
    } else {
      json[r'variant'] = null;
    }
    if (this.alias != null) {
      json[r'alias'] = this.alias;
    } else {
      json[r'alias'] = null;
    }
    if (this.minStage != null) {
      json[r'min_stage'] = this.minStage;
    } else {
      json[r'min_stage'] = null;
    }
    if (this.maxStage != null) {
      json[r'max_stage'] = this.maxStage;
    } else {
      json[r'max_stage'] = null;
    }
    if (this.length != null) {
      json[r'length'] = this.length;
    } else {
      json[r'length'] = null;
    }
    if (this.diameter != null) {
      json[r'diameter'] = this.diameter;
    } else {
      json[r'diameter'] = null;
    }
    if (this.maidenFlight != null) {
      json[r'maiden_flight'] = _dateFormatter.format(this.maidenFlight!.toUtc());
    } else {
      json[r'maiden_flight'] = null;
    }
    if (this.launchMass != null) {
      json[r'launch_mass'] = this.launchMass;
    } else {
      json[r'launch_mass'] = null;
    }
    if (this.leoCapacity != null) {
      json[r'leo_capacity'] = this.leoCapacity;
    } else {
      json[r'leo_capacity'] = null;
    }
    if (this.gtoCapacity != null) {
      json[r'gto_capacity'] = this.gtoCapacity;
    } else {
      json[r'gto_capacity'] = null;
    }
    if (this.toThrust != null) {
      json[r'to_thrust'] = this.toThrust;
    } else {
      json[r'to_thrust'] = null;
    }
    if (this.apogee != null) {
      json[r'apogee'] = this.apogee;
    } else {
      json[r'apogee'] = null;
    }
    if (this.vehicleRange != null) {
      json[r'vehicle_range'] = this.vehicleRange;
    } else {
      json[r'vehicle_range'] = null;
    }
    if (this.imageUrl != null) {
      json[r'image_url'] = this.imageUrl;
    } else {
      json[r'image_url'] = null;
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
    return json;
  }

  /// Returns a new [LauncherConfigDetailSerializerForAgency] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LauncherConfigDetailSerializerForAgency? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LauncherConfigDetailSerializerForAgency[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LauncherConfigDetailSerializerForAgency[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LauncherConfigDetailSerializerForAgency(
        id: mapValueOfType<int>(json, r'id')!,
        url: mapValueOfType<String>(json, r'url')!,
        name: mapValueOfType<String>(json, r'name')!,
        description: mapValueOfType<String>(json, r'description'),
        family: mapValueOfType<String>(json, r'family'),
        fullName: mapValueOfType<String>(json, r'full_name'),
        variant: mapValueOfType<String>(json, r'variant'),
        alias: mapValueOfType<String>(json, r'alias'),
        minStage: mapValueOfType<int>(json, r'min_stage'),
        maxStage: mapValueOfType<int>(json, r'max_stage'),
        length: mapValueOfType<double>(json, r'length'),
        diameter: mapValueOfType<double>(json, r'diameter'),
        maidenFlight: mapDateTime(json, r'maiden_flight', ''),
        launchMass: mapValueOfType<int>(json, r'launch_mass'),
        leoCapacity: mapValueOfType<int>(json, r'leo_capacity'),
        gtoCapacity: mapValueOfType<int>(json, r'gto_capacity'),
        toThrust: mapValueOfType<int>(json, r'to_thrust'),
        apogee: mapValueOfType<int>(json, r'apogee'),
        vehicleRange: mapValueOfType<int>(json, r'vehicle_range'),
        imageUrl: mapValueOfType<String>(json, r'image_url'),
        infoUrl: mapValueOfType<String>(json, r'info_url'),
        wikiUrl: mapValueOfType<String>(json, r'wiki_url'),
        consecutiveSuccessfulLaunches: mapValueOfType<int>(json, r'consecutive_successful_launches'),
        successfulLaunches: mapValueOfType<int>(json, r'successful_launches'),
        failedLaunches: mapValueOfType<int>(json, r'failed_launches'),
        pendingLaunches: mapValueOfType<int>(json, r'pending_launches'),
      );
    }
    return null;
  }

  static List<LauncherConfigDetailSerializerForAgency> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LauncherConfigDetailSerializerForAgency>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LauncherConfigDetailSerializerForAgency.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LauncherConfigDetailSerializerForAgency> mapFromJson(dynamic json) {
    final map = <String, LauncherConfigDetailSerializerForAgency>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LauncherConfigDetailSerializerForAgency.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LauncherConfigDetailSerializerForAgency-objects as value to a dart map
  static Map<String, List<LauncherConfigDetailSerializerForAgency>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LauncherConfigDetailSerializerForAgency>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LauncherConfigDetailSerializerForAgency.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'url',
    'name',
  };
}

