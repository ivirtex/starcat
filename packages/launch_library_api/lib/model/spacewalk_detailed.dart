//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class SpacewalkDetailed {
  /// Returns a new [SpacewalkDetailed] instance.
  SpacewalkDetailed({
    required this.id,
    required this.url,
    required this.name,
    this.start,
    this.end,
    required this.duration,
    this.location,
    this.crew = const [],
    required this.spacestation,
    required this.expedition,
    required this.spacecraftFlight,
    required this.event,
    this.program = const [],
  });

  int id;

  String url;

  String name;

  DateTime? start;

  DateTime? end;

  String duration;

  String? location;

  List<AstronautFlight> crew;

  SpaceStationSerializerForCommon spacestation;

  ExpeditionDetailedSerializerForSpacewalk expedition;

  SpacecraftFlightDetailed spacecraftFlight;

  EventDetailedSerializerForSpacewalk event;

  List<Program> program;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SpacewalkDetailed &&
     other.id == id &&
     other.url == url &&
     other.name == name &&
     other.start == start &&
     other.end == end &&
     other.duration == duration &&
     other.location == location &&
     other.crew == crew &&
     other.spacestation == spacestation &&
     other.expedition == expedition &&
     other.spacecraftFlight == spacecraftFlight &&
     other.event == event &&
     other.program == program;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (url.hashCode) +
    (name.hashCode) +
    (start == null ? 0 : start!.hashCode) +
    (end == null ? 0 : end!.hashCode) +
    (duration.hashCode) +
    (location == null ? 0 : location!.hashCode) +
    (crew.hashCode) +
    (spacestation.hashCode) +
    (expedition.hashCode) +
    (spacecraftFlight.hashCode) +
    (event.hashCode) +
    (program.hashCode);

  @override
  String toString() => 'SpacewalkDetailed[id=$id, url=$url, name=$name, start=$start, end=$end, duration=$duration, location=$location, crew=$crew, spacestation=$spacestation, expedition=$expedition, spacecraftFlight=$spacecraftFlight, event=$event, program=$program]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'url'] = this.url;
      json[r'name'] = this.name;
    if (this.start != null) {
      json[r'start'] = this.start!.toUtc().toIso8601String();
    } else {
      json[r'start'] = null;
    }
    if (this.end != null) {
      json[r'end'] = this.end!.toUtc().toIso8601String();
    } else {
      json[r'end'] = null;
    }
      json[r'duration'] = this.duration;
    if (this.location != null) {
      json[r'location'] = this.location;
    } else {
      json[r'location'] = null;
    }
      json[r'crew'] = this.crew;
      json[r'spacestation'] = this.spacestation;
      json[r'expedition'] = this.expedition;
      json[r'spacecraft_flight'] = this.spacecraftFlight;
      json[r'event'] = this.event;
      json[r'program'] = this.program;
    return json;
  }

  /// Returns a new [SpacewalkDetailed] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SpacewalkDetailed? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SpacewalkDetailed[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SpacewalkDetailed[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SpacewalkDetailed(
        id: mapValueOfType<int>(json, r'id')!,
        url: mapValueOfType<String>(json, r'url')!,
        name: mapValueOfType<String>(json, r'name')!,
        start: mapDateTime(json, r'start', ''),
        end: mapDateTime(json, r'end', ''),
        duration: mapValueOfType<String>(json, r'duration')!,
        location: mapValueOfType<String>(json, r'location'),
        crew: AstronautFlight.listFromJson(json[r'crew']),
        spacestation: SpaceStationSerializerForCommon.fromJson(json[r'spacestation'])!,
        expedition: ExpeditionDetailedSerializerForSpacewalk.fromJson(json[r'expedition'])!,
        spacecraftFlight: SpacecraftFlightDetailed.fromJson(json[r'spacecraft_flight'])!,
        event: EventDetailedSerializerForSpacewalk.fromJson(json[r'event'])!,
        program: Program.listFromJson(json[r'program']),
      );
    }
    return null;
  }

  static List<SpacewalkDetailed> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SpacewalkDetailed>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SpacewalkDetailed.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SpacewalkDetailed> mapFromJson(dynamic json) {
    final map = <String, SpacewalkDetailed>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SpacewalkDetailed.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SpacewalkDetailed-objects as value to a dart map
  static Map<String, List<SpacewalkDetailed>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SpacewalkDetailed>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SpacewalkDetailed.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'url',
    'name',
    'duration',
    'crew',
    'spacestation',
    'expedition',
    'spacecraft_flight',
    'event',
    'program',
  };
}

