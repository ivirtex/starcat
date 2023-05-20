//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class LaunchSerializerCommon {
  /// Returns a new [LaunchSerializerCommon] instance.
  LaunchSerializerCommon({
    required this.id,
    required this.url,
    required this.slug,
    this.name,
    required this.status,
    this.lastUpdated,
    this.net,
    this.windowEnd,
    this.windowStart,
    this.netPrecision,
    this.probability,
    this.holdreason,
    this.failreason,
    this.hashtag,
    required this.launchServiceProvider,
    required this.rocket,
    this.mission,
    required this.pad,
    this.webcastLive,
    required this.image,
    this.infographic,
    this.program = const [],
    this.orbitalLaunchAttemptCount,
    this.locationLaunchAttemptCount,
    this.padLaunchAttemptCount,
    this.agencyLaunchAttemptCount,
    this.orbitalLaunchAttemptCountYear,
    this.locationLaunchAttemptCountYear,
    this.padLaunchAttemptCountYear,
    this.agencyLaunchAttemptCountYear,
  });

  String id;

  String url;

  String slug;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  LaunchStatus status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? lastUpdated;

  DateTime? net;

  DateTime? windowEnd;

  DateTime? windowStart;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NetPrecision? netPrecision;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? probability;

  String? holdreason;

  String? failreason;

  String? hashtag;

  AgencySerializerMini launchServiceProvider;

  RocketSerializerCommon rocket;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Mission? mission;

  Pad pad;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? webcastLive;

  String image;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? infographic;

  List<Program> program;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? orbitalLaunchAttemptCount;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? locationLaunchAttemptCount;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? padLaunchAttemptCount;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? agencyLaunchAttemptCount;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? orbitalLaunchAttemptCountYear;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? locationLaunchAttemptCountYear;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? padLaunchAttemptCountYear;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? agencyLaunchAttemptCountYear;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LaunchSerializerCommon &&
     other.id == id &&
     other.url == url &&
     other.slug == slug &&
     other.name == name &&
     other.status == status &&
     other.lastUpdated == lastUpdated &&
     other.net == net &&
     other.windowEnd == windowEnd &&
     other.windowStart == windowStart &&
     other.netPrecision == netPrecision &&
     other.probability == probability &&
     other.holdreason == holdreason &&
     other.failreason == failreason &&
     other.hashtag == hashtag &&
     other.launchServiceProvider == launchServiceProvider &&
     other.rocket == rocket &&
     other.mission == mission &&
     other.pad == pad &&
     other.webcastLive == webcastLive &&
     other.image == image &&
     other.infographic == infographic &&
     other.program == program &&
     other.orbitalLaunchAttemptCount == orbitalLaunchAttemptCount &&
     other.locationLaunchAttemptCount == locationLaunchAttemptCount &&
     other.padLaunchAttemptCount == padLaunchAttemptCount &&
     other.agencyLaunchAttemptCount == agencyLaunchAttemptCount &&
     other.orbitalLaunchAttemptCountYear == orbitalLaunchAttemptCountYear &&
     other.locationLaunchAttemptCountYear == locationLaunchAttemptCountYear &&
     other.padLaunchAttemptCountYear == padLaunchAttemptCountYear &&
     other.agencyLaunchAttemptCountYear == agencyLaunchAttemptCountYear;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (url.hashCode) +
    (slug.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (status.hashCode) +
    (lastUpdated == null ? 0 : lastUpdated!.hashCode) +
    (net == null ? 0 : net!.hashCode) +
    (windowEnd == null ? 0 : windowEnd!.hashCode) +
    (windowStart == null ? 0 : windowStart!.hashCode) +
    (netPrecision == null ? 0 : netPrecision!.hashCode) +
    (probability == null ? 0 : probability!.hashCode) +
    (holdreason == null ? 0 : holdreason!.hashCode) +
    (failreason == null ? 0 : failreason!.hashCode) +
    (hashtag == null ? 0 : hashtag!.hashCode) +
    (launchServiceProvider.hashCode) +
    (rocket.hashCode) +
    (mission == null ? 0 : mission!.hashCode) +
    (pad.hashCode) +
    (webcastLive == null ? 0 : webcastLive!.hashCode) +
    (image.hashCode) +
    (infographic == null ? 0 : infographic!.hashCode) +
    (program.hashCode) +
    (orbitalLaunchAttemptCount == null ? 0 : orbitalLaunchAttemptCount!.hashCode) +
    (locationLaunchAttemptCount == null ? 0 : locationLaunchAttemptCount!.hashCode) +
    (padLaunchAttemptCount == null ? 0 : padLaunchAttemptCount!.hashCode) +
    (agencyLaunchAttemptCount == null ? 0 : agencyLaunchAttemptCount!.hashCode) +
    (orbitalLaunchAttemptCountYear == null ? 0 : orbitalLaunchAttemptCountYear!.hashCode) +
    (locationLaunchAttemptCountYear == null ? 0 : locationLaunchAttemptCountYear!.hashCode) +
    (padLaunchAttemptCountYear == null ? 0 : padLaunchAttemptCountYear!.hashCode) +
    (agencyLaunchAttemptCountYear == null ? 0 : agencyLaunchAttemptCountYear!.hashCode);

  @override
  String toString() => 'LaunchSerializerCommon[id=$id, url=$url, slug=$slug, name=$name, status=$status, lastUpdated=$lastUpdated, net=$net, windowEnd=$windowEnd, windowStart=$windowStart, netPrecision=$netPrecision, probability=$probability, holdreason=$holdreason, failreason=$failreason, hashtag=$hashtag, launchServiceProvider=$launchServiceProvider, rocket=$rocket, mission=$mission, pad=$pad, webcastLive=$webcastLive, image=$image, infographic=$infographic, program=$program, orbitalLaunchAttemptCount=$orbitalLaunchAttemptCount, locationLaunchAttemptCount=$locationLaunchAttemptCount, padLaunchAttemptCount=$padLaunchAttemptCount, agencyLaunchAttemptCount=$agencyLaunchAttemptCount, orbitalLaunchAttemptCountYear=$orbitalLaunchAttemptCountYear, locationLaunchAttemptCountYear=$locationLaunchAttemptCountYear, padLaunchAttemptCountYear=$padLaunchAttemptCountYear, agencyLaunchAttemptCountYear=$agencyLaunchAttemptCountYear]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'url'] = this.url;
      json[r'slug'] = this.slug;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'status'] = this.status;
    if (this.lastUpdated != null) {
      json[r'last_updated'] = this.lastUpdated!.toUtc().toIso8601String();
    } else {
      json[r'last_updated'] = null;
    }
    if (this.net != null) {
      json[r'net'] = this.net!.toUtc().toIso8601String();
    } else {
      json[r'net'] = null;
    }
    if (this.windowEnd != null) {
      json[r'window_end'] = this.windowEnd!.toUtc().toIso8601String();
    } else {
      json[r'window_end'] = null;
    }
    if (this.windowStart != null) {
      json[r'window_start'] = this.windowStart!.toUtc().toIso8601String();
    } else {
      json[r'window_start'] = null;
    }
    if (this.netPrecision != null) {
      json[r'net_precision'] = this.netPrecision;
    } else {
      json[r'net_precision'] = null;
    }
    if (this.probability != null) {
      json[r'probability'] = this.probability;
    } else {
      json[r'probability'] = null;
    }
    if (this.holdreason != null) {
      json[r'holdreason'] = this.holdreason;
    } else {
      json[r'holdreason'] = null;
    }
    if (this.failreason != null) {
      json[r'failreason'] = this.failreason;
    } else {
      json[r'failreason'] = null;
    }
    if (this.hashtag != null) {
      json[r'hashtag'] = this.hashtag;
    } else {
      json[r'hashtag'] = null;
    }
      json[r'launch_service_provider'] = this.launchServiceProvider;
      json[r'rocket'] = this.rocket;
    if (this.mission != null) {
      json[r'mission'] = this.mission;
    } else {
      json[r'mission'] = null;
    }
      json[r'pad'] = this.pad;
    if (this.webcastLive != null) {
      json[r'webcast_live'] = this.webcastLive;
    } else {
      json[r'webcast_live'] = null;
    }
      json[r'image'] = this.image;
    if (this.infographic != null) {
      json[r'infographic'] = this.infographic;
    } else {
      json[r'infographic'] = null;
    }
      json[r'program'] = this.program;
    if (this.orbitalLaunchAttemptCount != null) {
      json[r'orbital_launch_attempt_count'] = this.orbitalLaunchAttemptCount;
    } else {
      json[r'orbital_launch_attempt_count'] = null;
    }
    if (this.locationLaunchAttemptCount != null) {
      json[r'location_launch_attempt_count'] = this.locationLaunchAttemptCount;
    } else {
      json[r'location_launch_attempt_count'] = null;
    }
    if (this.padLaunchAttemptCount != null) {
      json[r'pad_launch_attempt_count'] = this.padLaunchAttemptCount;
    } else {
      json[r'pad_launch_attempt_count'] = null;
    }
    if (this.agencyLaunchAttemptCount != null) {
      json[r'agency_launch_attempt_count'] = this.agencyLaunchAttemptCount;
    } else {
      json[r'agency_launch_attempt_count'] = null;
    }
    if (this.orbitalLaunchAttemptCountYear != null) {
      json[r'orbital_launch_attempt_count_year'] = this.orbitalLaunchAttemptCountYear;
    } else {
      json[r'orbital_launch_attempt_count_year'] = null;
    }
    if (this.locationLaunchAttemptCountYear != null) {
      json[r'location_launch_attempt_count_year'] = this.locationLaunchAttemptCountYear;
    } else {
      json[r'location_launch_attempt_count_year'] = null;
    }
    if (this.padLaunchAttemptCountYear != null) {
      json[r'pad_launch_attempt_count_year'] = this.padLaunchAttemptCountYear;
    } else {
      json[r'pad_launch_attempt_count_year'] = null;
    }
    if (this.agencyLaunchAttemptCountYear != null) {
      json[r'agency_launch_attempt_count_year'] = this.agencyLaunchAttemptCountYear;
    } else {
      json[r'agency_launch_attempt_count_year'] = null;
    }
    return json;
  }

  /// Returns a new [LaunchSerializerCommon] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LaunchSerializerCommon? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LaunchSerializerCommon[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LaunchSerializerCommon[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LaunchSerializerCommon(
        id: mapValueOfType<String>(json, r'id')!,
        url: mapValueOfType<String>(json, r'url')!,
        slug: mapValueOfType<String>(json, r'slug')!,
        name: mapValueOfType<String>(json, r'name'),
        status: LaunchStatus.fromJson(json[r'status'])!,
        lastUpdated: mapDateTime(json, r'last_updated', ''),
        net: mapDateTime(json, r'net', ''),
        windowEnd: mapDateTime(json, r'window_end', ''),
        windowStart: mapDateTime(json, r'window_start', ''),
        netPrecision: NetPrecision.fromJson(json[r'net_precision']),
        probability: mapValueOfType<int>(json, r'probability'),
        holdreason: mapValueOfType<String>(json, r'holdreason'),
        failreason: mapValueOfType<String>(json, r'failreason'),
        hashtag: mapValueOfType<String>(json, r'hashtag'),
        launchServiceProvider: AgencySerializerMini.fromJson(json[r'launch_service_provider'])!,
        rocket: RocketSerializerCommon.fromJson(json[r'rocket'])!,
        mission: Mission.fromJson(json[r'mission']),
        pad: Pad.fromJson(json[r'pad'])!,
        webcastLive: mapValueOfType<bool>(json, r'webcast_live'),
        image: mapValueOfType<String>(json, r'image')!,
        infographic: mapValueOfType<String>(json, r'infographic'),
        program: Program.listFromJson(json[r'program']),
        orbitalLaunchAttemptCount: mapValueOfType<int>(json, r'orbital_launch_attempt_count'),
        locationLaunchAttemptCount: mapValueOfType<int>(json, r'location_launch_attempt_count'),
        padLaunchAttemptCount: mapValueOfType<int>(json, r'pad_launch_attempt_count'),
        agencyLaunchAttemptCount: mapValueOfType<int>(json, r'agency_launch_attempt_count'),
        orbitalLaunchAttemptCountYear: mapValueOfType<int>(json, r'orbital_launch_attempt_count_year'),
        locationLaunchAttemptCountYear: mapValueOfType<int>(json, r'location_launch_attempt_count_year'),
        padLaunchAttemptCountYear: mapValueOfType<int>(json, r'pad_launch_attempt_count_year'),
        agencyLaunchAttemptCountYear: mapValueOfType<int>(json, r'agency_launch_attempt_count_year'),
      );
    }
    return null;
  }

  static List<LaunchSerializerCommon> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LaunchSerializerCommon>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LaunchSerializerCommon.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LaunchSerializerCommon> mapFromJson(dynamic json) {
    final map = <String, LaunchSerializerCommon>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LaunchSerializerCommon.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LaunchSerializerCommon-objects as value to a dart map
  static Map<String, List<LaunchSerializerCommon>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LaunchSerializerCommon>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LaunchSerializerCommon.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'url',
    'slug',
    'status',
    'launch_service_provider',
    'rocket',
    'pad',
    'image',
    'program',
  };
}
