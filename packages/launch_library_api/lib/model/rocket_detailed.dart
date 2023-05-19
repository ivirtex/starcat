//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class RocketDetailed {
  /// Returns a new [RocketDetailed] instance.
  RocketDetailed({
    required this.id,
    required this.configuration,
    this.launcherStage = const [],
    this.spacecraftStage,
  });

  int id;

  LauncherConfigDetail configuration;

  List<FirstStage> launcherStage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SpacecraftFlightDetailedSerializerForLaunch? spacecraftStage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RocketDetailed &&
     other.id == id &&
     other.configuration == configuration &&
     other.launcherStage == launcherStage &&
     other.spacecraftStage == spacecraftStage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (configuration.hashCode) +
    (launcherStage.hashCode) +
    (spacecraftStage == null ? 0 : spacecraftStage!.hashCode);

  @override
  String toString() => 'RocketDetailed[id=$id, configuration=$configuration, launcherStage=$launcherStage, spacecraftStage=$spacecraftStage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'configuration'] = this.configuration;
      json[r'launcher_stage'] = this.launcherStage;
    if (this.spacecraftStage != null) {
      json[r'spacecraft_stage'] = this.spacecraftStage;
    } else {
      json[r'spacecraft_stage'] = null;
    }
    return json;
  }

  /// Returns a new [RocketDetailed] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RocketDetailed? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RocketDetailed[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RocketDetailed[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RocketDetailed(
        id: mapValueOfType<int>(json, r'id')!,
        configuration: LauncherConfigDetail.fromJson(json[r'configuration'])!,
        launcherStage: FirstStage.listFromJson(json[r'launcher_stage']),
        spacecraftStage: SpacecraftFlightDetailedSerializerForLaunch.fromJson(json[r'spacecraft_stage']),
      );
    }
    return null;
  }

  static List<RocketDetailed> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RocketDetailed>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RocketDetailed.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RocketDetailed> mapFromJson(dynamic json) {
    final map = <String, RocketDetailed>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RocketDetailed.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RocketDetailed-objects as value to a dart map
  static Map<String, List<RocketDetailed>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RocketDetailed>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RocketDetailed.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'configuration',
    'launcher_stage',
  };
}

