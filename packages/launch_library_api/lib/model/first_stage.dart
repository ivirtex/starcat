//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class FirstStage {
  /// Returns a new [FirstStage] instance.
  FirstStage({
    required this.id,
    required this.type,
    this.reused,
    this.launcherFlightNumber,
    required this.launcher,
    this.landing,
    this.previousFlightDate,
    this.turnAroundTimeDays,
    this.previousFlight,
  });

  int id;

  String type;

  bool? reused;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? launcherFlightNumber;

  LauncherDetailed launcher;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Landing? landing;

  DateTime? previousFlightDate;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? turnAroundTimeDays;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LaunchSerializerMini? previousFlight;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FirstStage &&
     other.id == id &&
     other.type == type &&
     other.reused == reused &&
     other.launcherFlightNumber == launcherFlightNumber &&
     other.launcher == launcher &&
     other.landing == landing &&
     other.previousFlightDate == previousFlightDate &&
     other.turnAroundTimeDays == turnAroundTimeDays &&
     other.previousFlight == previousFlight;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (type.hashCode) +
    (reused == null ? 0 : reused!.hashCode) +
    (launcherFlightNumber == null ? 0 : launcherFlightNumber!.hashCode) +
    (launcher.hashCode) +
    (landing == null ? 0 : landing!.hashCode) +
    (previousFlightDate == null ? 0 : previousFlightDate!.hashCode) +
    (turnAroundTimeDays == null ? 0 : turnAroundTimeDays!.hashCode) +
    (previousFlight == null ? 0 : previousFlight!.hashCode);

  @override
  String toString() => 'FirstStage[id=$id, type=$type, reused=$reused, launcherFlightNumber=$launcherFlightNumber, launcher=$launcher, landing=$landing, previousFlightDate=$previousFlightDate, turnAroundTimeDays=$turnAroundTimeDays, previousFlight=$previousFlight]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'type'] = this.type;
    if (this.reused != null) {
      json[r'reused'] = this.reused;
    } else {
      json[r'reused'] = null;
    }
    if (this.launcherFlightNumber != null) {
      json[r'launcher_flight_number'] = this.launcherFlightNumber;
    } else {
      json[r'launcher_flight_number'] = null;
    }
      json[r'launcher'] = this.launcher;
    if (this.landing != null) {
      json[r'landing'] = this.landing;
    } else {
      json[r'landing'] = null;
    }
    if (this.previousFlightDate != null) {
      json[r'previous_flight_date'] = this.previousFlightDate!.toUtc().toIso8601String();
    } else {
      json[r'previous_flight_date'] = null;
    }
    if (this.turnAroundTimeDays != null) {
      json[r'turn_around_time_days'] = this.turnAroundTimeDays;
    } else {
      json[r'turn_around_time_days'] = null;
    }
    if (this.previousFlight != null) {
      json[r'previous_flight'] = this.previousFlight;
    } else {
      json[r'previous_flight'] = null;
    }
    return json;
  }

  /// Returns a new [FirstStage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FirstStage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FirstStage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FirstStage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FirstStage(
        id: mapValueOfType<int>(json, r'id')!,
        type: mapValueOfType<String>(json, r'type')!,
        reused: mapValueOfType<bool>(json, r'reused'),
        launcherFlightNumber: mapValueOfType<int>(json, r'launcher_flight_number'),
        launcher: LauncherDetailed.fromJson(json[r'launcher'])!,
        landing: Landing.fromJson(json[r'landing']),
        previousFlightDate: mapDateTime(json, r'previous_flight_date', ''),
        turnAroundTimeDays: mapValueOfType<int>(json, r'turn_around_time_days'),
        previousFlight: LaunchSerializerMini.fromJson(json[r'previous_flight']),
      );
    }
    return null;
  }

  static List<FirstStage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FirstStage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FirstStage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FirstStage> mapFromJson(dynamic json) {
    final map = <String, FirstStage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FirstStage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FirstStage-objects as value to a dart map
  static Map<String, List<FirstStage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FirstStage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FirstStage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'type',
    'launcher',
  };
}

