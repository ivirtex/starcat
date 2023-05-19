//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class Program {
  /// Returns a new [Program] instance.
  Program({
    required this.id,
    required this.url,
    required this.name,
    this.description,
    this.agencies = const [],
    this.imageUrl,
    this.startDate,
    this.endDate,
    this.infoUrl,
    this.wikiUrl,
    this.missionPatches = const [],
  });

  int id;

  String url;

  String name;

  String? description;

  List<AgencySerializerMini> agencies;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? imageUrl;

  DateTime? startDate;

  DateTime? endDate;

  String? infoUrl;

  String? wikiUrl;

  List<MissionPatch> missionPatches;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Program &&
     other.id == id &&
     other.url == url &&
     other.name == name &&
     other.description == description &&
     other.agencies == agencies &&
     other.imageUrl == imageUrl &&
     other.startDate == startDate &&
     other.endDate == endDate &&
     other.infoUrl == infoUrl &&
     other.wikiUrl == wikiUrl &&
     other.missionPatches == missionPatches;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (url.hashCode) +
    (name.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (agencies.hashCode) +
    (imageUrl == null ? 0 : imageUrl!.hashCode) +
    (startDate == null ? 0 : startDate!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (infoUrl == null ? 0 : infoUrl!.hashCode) +
    (wikiUrl == null ? 0 : wikiUrl!.hashCode) +
    (missionPatches.hashCode);

  @override
  String toString() => 'Program[id=$id, url=$url, name=$name, description=$description, agencies=$agencies, imageUrl=$imageUrl, startDate=$startDate, endDate=$endDate, infoUrl=$infoUrl, wikiUrl=$wikiUrl, missionPatches=$missionPatches]';

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
      json[r'agencies'] = this.agencies;
    if (this.imageUrl != null) {
      json[r'image_url'] = this.imageUrl;
    } else {
      json[r'image_url'] = null;
    }
    if (this.startDate != null) {
      json[r'start_date'] = this.startDate!.toUtc().toIso8601String();
    } else {
      json[r'start_date'] = null;
    }
    if (this.endDate != null) {
      json[r'end_date'] = this.endDate!.toUtc().toIso8601String();
    } else {
      json[r'end_date'] = null;
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
      json[r'mission_patches'] = this.missionPatches;
    return json;
  }

  /// Returns a new [Program] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Program? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Program[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Program[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Program(
        id: mapValueOfType<int>(json, r'id')!,
        url: mapValueOfType<String>(json, r'url')!,
        name: mapValueOfType<String>(json, r'name')!,
        description: mapValueOfType<String>(json, r'description'),
        agencies: AgencySerializerMini.listFromJson(json[r'agencies']),
        imageUrl: mapValueOfType<String>(json, r'image_url'),
        startDate: mapDateTime(json, r'start_date', ''),
        endDate: mapDateTime(json, r'end_date', ''),
        infoUrl: mapValueOfType<String>(json, r'info_url'),
        wikiUrl: mapValueOfType<String>(json, r'wiki_url'),
        missionPatches: MissionPatch.listFromJson(json[r'mission_patches']),
      );
    }
    return null;
  }

  static List<Program> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Program>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Program.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Program> mapFromJson(dynamic json) {
    final map = <String, Program>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Program.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Program-objects as value to a dart map
  static Map<String, List<Program>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Program>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Program.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'url',
    'name',
    'agencies',
    'mission_patches',
  };
}

