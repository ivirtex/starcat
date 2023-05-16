//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class SpacecraftConfiguration {
  /// Returns a new [SpacecraftConfiguration] instance.
  SpacecraftConfiguration({
    required this.id,
    required this.url,
    required this.name,
    required this.agency,
    this.inUse,
    this.capability,
    this.maidenFlight,
    this.humanRated,
    this.crewCapacity,
    this.imageUrl,
    this.nationUrl,
    this.wikiLink,
    this.infoLink,
  });

  int id;

  String url;

  String name;

  Agency agency;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? inUse;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? capability;

  DateTime? maidenFlight;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? humanRated;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? crewCapacity;

  String? imageUrl;

  String? nationUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? wikiLink;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? infoLink;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SpacecraftConfiguration &&
     other.id == id &&
     other.url == url &&
     other.name == name &&
     other.agency == agency &&
     other.inUse == inUse &&
     other.capability == capability &&
     other.maidenFlight == maidenFlight &&
     other.humanRated == humanRated &&
     other.crewCapacity == crewCapacity &&
     other.imageUrl == imageUrl &&
     other.nationUrl == nationUrl &&
     other.wikiLink == wikiLink &&
     other.infoLink == infoLink;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (url.hashCode) +
    (name.hashCode) +
    (agency.hashCode) +
    (inUse == null ? 0 : inUse!.hashCode) +
    (capability == null ? 0 : capability!.hashCode) +
    (maidenFlight == null ? 0 : maidenFlight!.hashCode) +
    (humanRated == null ? 0 : humanRated!.hashCode) +
    (crewCapacity == null ? 0 : crewCapacity!.hashCode) +
    (imageUrl == null ? 0 : imageUrl!.hashCode) +
    (nationUrl == null ? 0 : nationUrl!.hashCode) +
    (wikiLink == null ? 0 : wikiLink!.hashCode) +
    (infoLink == null ? 0 : infoLink!.hashCode);

  @override
  String toString() => 'SpacecraftConfiguration[id=$id, url=$url, name=$name, agency=$agency, inUse=$inUse, capability=$capability, maidenFlight=$maidenFlight, humanRated=$humanRated, crewCapacity=$crewCapacity, imageUrl=$imageUrl, nationUrl=$nationUrl, wikiLink=$wikiLink, infoLink=$infoLink]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'url'] = this.url;
      json[r'name'] = this.name;
      json[r'agency'] = this.agency;
    if (this.inUse != null) {
      json[r'in_use'] = this.inUse;
    } else {
      json[r'in_use'] = null;
    }
    if (this.capability != null) {
      json[r'capability'] = this.capability;
    } else {
      json[r'capability'] = null;
    }
    if (this.maidenFlight != null) {
      json[r'maiden_flight'] = _dateFormatter.format(this.maidenFlight!.toUtc());
    } else {
      json[r'maiden_flight'] = null;
    }
    if (this.humanRated != null) {
      json[r'human_rated'] = this.humanRated;
    } else {
      json[r'human_rated'] = null;
    }
    if (this.crewCapacity != null) {
      json[r'crew_capacity'] = this.crewCapacity;
    } else {
      json[r'crew_capacity'] = null;
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
    if (this.wikiLink != null) {
      json[r'wiki_link'] = this.wikiLink;
    } else {
      json[r'wiki_link'] = null;
    }
    if (this.infoLink != null) {
      json[r'info_link'] = this.infoLink;
    } else {
      json[r'info_link'] = null;
    }
    return json;
  }

  /// Returns a new [SpacecraftConfiguration] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SpacecraftConfiguration? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SpacecraftConfiguration[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SpacecraftConfiguration[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SpacecraftConfiguration(
        id: mapValueOfType<int>(json, r'id')!,
        url: mapValueOfType<String>(json, r'url')!,
        name: mapValueOfType<String>(json, r'name')!,
        agency: Agency.fromJson(json[r'agency'])!,
        inUse: mapValueOfType<bool>(json, r'in_use'),
        capability: mapValueOfType<String>(json, r'capability'),
        maidenFlight: mapDateTime(json, r'maiden_flight', ''),
        humanRated: mapValueOfType<bool>(json, r'human_rated'),
        crewCapacity: mapValueOfType<int>(json, r'crew_capacity'),
        imageUrl: mapValueOfType<String>(json, r'image_url'),
        nationUrl: mapValueOfType<String>(json, r'nation_url'),
        wikiLink: mapValueOfType<String>(json, r'wiki_link'),
        infoLink: mapValueOfType<String>(json, r'info_link'),
      );
    }
    return null;
  }

  static List<SpacecraftConfiguration> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SpacecraftConfiguration>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SpacecraftConfiguration.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SpacecraftConfiguration> mapFromJson(dynamic json) {
    final map = <String, SpacecraftConfiguration>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SpacecraftConfiguration.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SpacecraftConfiguration-objects as value to a dart map
  static Map<String, List<SpacecraftConfiguration>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SpacecraftConfiguration>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SpacecraftConfiguration.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'url',
    'name',
    'agency',
  };
}

