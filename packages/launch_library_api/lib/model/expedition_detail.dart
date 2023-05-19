//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class ExpeditionDetail {
  /// Returns a new [ExpeditionDetail] instance.
  ExpeditionDetail({
    required this.id,
    required this.url,
    required this.name,
    required this.start,
    this.end,
    required this.spacestation,
    this.crew = const [],
    this.missionPatches = const [],
    this.spacewalks = const [],
  });

  int id;

  String url;

  String name;

  DateTime start;

  DateTime? end;

  SpaceStationDetailedSerializerForExpedition spacestation;

  List<AstronautFlightForExpedition> crew;

  List<MissionPatch> missionPatches;

  List<SpacewalkNormal> spacewalks;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExpeditionDetail &&
     other.id == id &&
     other.url == url &&
     other.name == name &&
     other.start == start &&
     other.end == end &&
     other.spacestation == spacestation &&
     other.crew == crew &&
     other.missionPatches == missionPatches &&
     other.spacewalks == spacewalks;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (url.hashCode) +
    (name.hashCode) +
    (start.hashCode) +
    (end == null ? 0 : end!.hashCode) +
    (spacestation.hashCode) +
    (crew.hashCode) +
    (missionPatches.hashCode) +
    (spacewalks.hashCode);

  @override
  String toString() => 'ExpeditionDetail[id=$id, url=$url, name=$name, start=$start, end=$end, spacestation=$spacestation, crew=$crew, missionPatches=$missionPatches, spacewalks=$spacewalks]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'url'] = this.url;
      json[r'name'] = this.name;
      json[r'start'] = this.start.toUtc().toIso8601String();
    if (this.end != null) {
      json[r'end'] = this.end!.toUtc().toIso8601String();
    } else {
      json[r'end'] = null;
    }
      json[r'spacestation'] = this.spacestation;
      json[r'crew'] = this.crew;
      json[r'mission_patches'] = this.missionPatches;
      json[r'spacewalks'] = this.spacewalks;
    return json;
  }

  /// Returns a new [ExpeditionDetail] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExpeditionDetail? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExpeditionDetail[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExpeditionDetail[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExpeditionDetail(
        id: mapValueOfType<int>(json, r'id')!,
        url: mapValueOfType<String>(json, r'url')!,
        name: mapValueOfType<String>(json, r'name')!,
        start: mapDateTime(json, r'start', '')!,
        end: mapDateTime(json, r'end', ''),
        spacestation: SpaceStationDetailedSerializerForExpedition.fromJson(json[r'spacestation'])!,
        crew: AstronautFlightForExpedition.listFromJson(json[r'crew']),
        missionPatches: MissionPatch.listFromJson(json[r'mission_patches']),
        spacewalks: SpacewalkNormal.listFromJson(json[r'spacewalks']),
      );
    }
    return null;
  }

  static List<ExpeditionDetail> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExpeditionDetail>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExpeditionDetail.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExpeditionDetail> mapFromJson(dynamic json) {
    final map = <String, ExpeditionDetail>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExpeditionDetail.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExpeditionDetail-objects as value to a dart map
  static Map<String, List<ExpeditionDetail>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExpeditionDetail>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExpeditionDetail.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'url',
    'name',
    'start',
    'spacestation',
    'crew',
    'mission_patches',
    'spacewalks',
  };
}

