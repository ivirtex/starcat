//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class Events {
  /// Returns a new [Events] instance.
  Events({
    required this.id,
    required this.url,
    required this.slug,
    required this.name,
    this.updates = const [],
    required this.type,
    this.description,
    this.webcastLive,
    this.location,
    this.newsUrl,
    this.videoUrl,
    this.featureImage,
    this.date,
    required this.datePrecision,
    this.launches = const [],
    this.expeditions = const [],
    this.spacestations = const [],
    this.program = const [],
  });

  int id;

  String url;

  String slug;

  String name;

  List<Update> updates;

  EventType type;

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
  bool? webcastLive;

  String? location;

  String? newsUrl;

  String? videoUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? featureImage;

  DateTime? date;

  NetPrecision datePrecision;

  List<LaunchSerializerCommon> launches;

  List<Expedition> expeditions;

  List<SpaceStationSerializerForCommon> spacestations;

  List<Program> program;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Events &&
     other.id == id &&
     other.url == url &&
     other.slug == slug &&
     other.name == name &&
     other.updates == updates &&
     other.type == type &&
     other.description == description &&
     other.webcastLive == webcastLive &&
     other.location == location &&
     other.newsUrl == newsUrl &&
     other.videoUrl == videoUrl &&
     other.featureImage == featureImage &&
     other.date == date &&
     other.datePrecision == datePrecision &&
     other.launches == launches &&
     other.expeditions == expeditions &&
     other.spacestations == spacestations &&
     other.program == program;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (url.hashCode) +
    (slug.hashCode) +
    (name.hashCode) +
    (updates.hashCode) +
    (type.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (webcastLive == null ? 0 : webcastLive!.hashCode) +
    (location == null ? 0 : location!.hashCode) +
    (newsUrl == null ? 0 : newsUrl!.hashCode) +
    (videoUrl == null ? 0 : videoUrl!.hashCode) +
    (featureImage == null ? 0 : featureImage!.hashCode) +
    (date == null ? 0 : date!.hashCode) +
    (datePrecision.hashCode) +
    (launches.hashCode) +
    (expeditions.hashCode) +
    (spacestations.hashCode) +
    (program.hashCode);

  @override
  String toString() => 'Events[id=$id, url=$url, slug=$slug, name=$name, updates=$updates, type=$type, description=$description, webcastLive=$webcastLive, location=$location, newsUrl=$newsUrl, videoUrl=$videoUrl, featureImage=$featureImage, date=$date, datePrecision=$datePrecision, launches=$launches, expeditions=$expeditions, spacestations=$spacestations, program=$program]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'url'] = this.url;
      json[r'slug'] = this.slug;
      json[r'name'] = this.name;
      json[r'updates'] = this.updates;
      json[r'type'] = this.type;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.webcastLive != null) {
      json[r'webcast_live'] = this.webcastLive;
    } else {
      json[r'webcast_live'] = null;
    }
    if (this.location != null) {
      json[r'location'] = this.location;
    } else {
      json[r'location'] = null;
    }
    if (this.newsUrl != null) {
      json[r'news_url'] = this.newsUrl;
    } else {
      json[r'news_url'] = null;
    }
    if (this.videoUrl != null) {
      json[r'video_url'] = this.videoUrl;
    } else {
      json[r'video_url'] = null;
    }
    if (this.featureImage != null) {
      json[r'feature_image'] = this.featureImage;
    } else {
      json[r'feature_image'] = null;
    }
    if (this.date != null) {
      json[r'date'] = this.date!.toUtc().toIso8601String();
    } else {
      json[r'date'] = null;
    }
      json[r'date_precision'] = this.datePrecision;
      json[r'launches'] = this.launches;
      json[r'expeditions'] = this.expeditions;
      json[r'spacestations'] = this.spacestations;
      json[r'program'] = this.program;
    return json;
  }

  /// Returns a new [Events] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Events? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Events[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Events[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Events(
        id: mapValueOfType<int>(json, r'id')!,
        url: mapValueOfType<String>(json, r'url')!,
        slug: mapValueOfType<String>(json, r'slug')!,
        name: mapValueOfType<String>(json, r'name')!,
        updates: Update.listFromJson(json[r'updates']),
        type: EventType.fromJson(json[r'type'])!,
        description: mapValueOfType<String>(json, r'description'),
        webcastLive: mapValueOfType<bool>(json, r'webcast_live'),
        location: mapValueOfType<String>(json, r'location'),
        newsUrl: mapValueOfType<String>(json, r'news_url'),
        videoUrl: mapValueOfType<String>(json, r'video_url'),
        featureImage: mapValueOfType<String>(json, r'feature_image'),
        date: mapDateTime(json, r'date', ''),
        datePrecision: NetPrecision.fromJson(json[r'date_precision'])!,
        launches: LaunchSerializerCommon.listFromJson(json[r'launches']),
        expeditions: Expedition.listFromJson(json[r'expeditions']),
        spacestations: SpaceStationSerializerForCommon.listFromJson(json[r'spacestations']),
        program: Program.listFromJson(json[r'program']),
      );
    }
    return null;
  }

  static List<Events> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Events>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Events.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Events> mapFromJson(dynamic json) {
    final map = <String, Events>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Events.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Events-objects as value to a dart map
  static Map<String, List<Events>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Events>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Events.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'url',
    'slug',
    'name',
    'updates',
    'type',
    'date_precision',
    'launches',
    'expeditions',
    'spacestations',
    'program',
  };
}

