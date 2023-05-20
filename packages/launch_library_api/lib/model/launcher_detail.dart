//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class LauncherDetail {
  /// Returns a new [LauncherDetail] instance.
  LauncherDetail({
    required this.id,
    required this.url,
    this.flightProven,
    this.serialNumber,
    this.isPlaceholder,
    this.status,
    this.details,
    required this.launcherConfig,
    this.imageUrl,
    this.successfulLandings,
    this.attemptedLandings,
    this.flights,
    this.lastLaunchDate,
    this.firstLaunchDate,
  });

  int id;

  String url;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? flightProven;

  String? serialNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isPlaceholder;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? details;

  LauncherConfigDetail launcherConfig;

  String? imageUrl;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? successfulLandings;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? attemptedLandings;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? flights;

  DateTime? lastLaunchDate;

  DateTime? firstLaunchDate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LauncherDetail &&
     other.id == id &&
     other.url == url &&
     other.flightProven == flightProven &&
     other.serialNumber == serialNumber &&
     other.isPlaceholder == isPlaceholder &&
     other.status == status &&
     other.details == details &&
     other.launcherConfig == launcherConfig &&
     other.imageUrl == imageUrl &&
     other.successfulLandings == successfulLandings &&
     other.attemptedLandings == attemptedLandings &&
     other.flights == flights &&
     other.lastLaunchDate == lastLaunchDate &&
     other.firstLaunchDate == firstLaunchDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (url.hashCode) +
    (flightProven == null ? 0 : flightProven!.hashCode) +
    (serialNumber == null ? 0 : serialNumber!.hashCode) +
    (isPlaceholder == null ? 0 : isPlaceholder!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (details == null ? 0 : details!.hashCode) +
    (launcherConfig.hashCode) +
    (imageUrl == null ? 0 : imageUrl!.hashCode) +
    (successfulLandings == null ? 0 : successfulLandings!.hashCode) +
    (attemptedLandings == null ? 0 : attemptedLandings!.hashCode) +
    (flights == null ? 0 : flights!.hashCode) +
    (lastLaunchDate == null ? 0 : lastLaunchDate!.hashCode) +
    (firstLaunchDate == null ? 0 : firstLaunchDate!.hashCode);

  @override
  String toString() => 'LauncherDetail[id=$id, url=$url, flightProven=$flightProven, serialNumber=$serialNumber, isPlaceholder=$isPlaceholder, status=$status, details=$details, launcherConfig=$launcherConfig, imageUrl=$imageUrl, successfulLandings=$successfulLandings, attemptedLandings=$attemptedLandings, flights=$flights, lastLaunchDate=$lastLaunchDate, firstLaunchDate=$firstLaunchDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'url'] = this.url;
    if (this.flightProven != null) {
      json[r'flight_proven'] = this.flightProven;
    } else {
      json[r'flight_proven'] = null;
    }
    if (this.serialNumber != null) {
      json[r'serial_number'] = this.serialNumber;
    } else {
      json[r'serial_number'] = null;
    }
    if (this.isPlaceholder != null) {
      json[r'is_placeholder'] = this.isPlaceholder;
    } else {
      json[r'is_placeholder'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.details != null) {
      json[r'details'] = this.details;
    } else {
      json[r'details'] = null;
    }
      json[r'launcher_config'] = this.launcherConfig;
    if (this.imageUrl != null) {
      json[r'image_url'] = this.imageUrl;
    } else {
      json[r'image_url'] = null;
    }
    if (this.successfulLandings != null) {
      json[r'successful_landings'] = this.successfulLandings;
    } else {
      json[r'successful_landings'] = null;
    }
    if (this.attemptedLandings != null) {
      json[r'attempted_landings'] = this.attemptedLandings;
    } else {
      json[r'attempted_landings'] = null;
    }
    if (this.flights != null) {
      json[r'flights'] = this.flights;
    } else {
      json[r'flights'] = null;
    }
    if (this.lastLaunchDate != null) {
      json[r'last_launch_date'] = this.lastLaunchDate!.toUtc().toIso8601String();
    } else {
      json[r'last_launch_date'] = null;
    }
    if (this.firstLaunchDate != null) {
      json[r'first_launch_date'] = this.firstLaunchDate!.toUtc().toIso8601String();
    } else {
      json[r'first_launch_date'] = null;
    }
    return json;
  }

  /// Returns a new [LauncherDetail] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LauncherDetail? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LauncherDetail[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LauncherDetail[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LauncherDetail(
        id: mapValueOfType<int>(json, r'id')!,
        url: mapValueOfType<String>(json, r'url')!,
        flightProven: mapValueOfType<bool>(json, r'flight_proven'),
        serialNumber: mapValueOfType<String>(json, r'serial_number'),
        isPlaceholder: mapValueOfType<bool>(json, r'is_placeholder'),
        status: mapValueOfType<String>(json, r'status'),
        details: mapValueOfType<String>(json, r'details'),
        launcherConfig: LauncherConfigDetail.fromJson(json[r'launcher_config'])!,
        imageUrl: mapValueOfType<String>(json, r'image_url'),
        successfulLandings: mapValueOfType<int>(json, r'successful_landings'),
        attemptedLandings: mapValueOfType<int>(json, r'attempted_landings'),
        flights: mapValueOfType<int>(json, r'flights'),
        lastLaunchDate: mapDateTime(json, r'last_launch_date', ''),
        firstLaunchDate: mapDateTime(json, r'first_launch_date', ''),
      );
    }
    return null;
  }

  static List<LauncherDetail> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LauncherDetail>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LauncherDetail.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LauncherDetail> mapFromJson(dynamic json) {
    final map = <String, LauncherDetail>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LauncherDetail.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LauncherDetail-objects as value to a dart map
  static Map<String, List<LauncherDetail>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LauncherDetail>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LauncherDetail.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'url',
    'launcher_config',
  };
}
