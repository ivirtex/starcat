//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class LaunchDetailed {
  /// Returns a new [LaunchDetailed] instance.
  LaunchDetailed({
    required this.id,
    required this.url,
    required this.slug,
    this.flightclubUrl,
    this.rSpacexApiId,
    required this.name,
    required this.status,
    required this.lastUpdated,
    this.updates = const [],
    required this.net,
    this.netPrecision,
    required this.windowEnd,
    required this.windowStart,
    this.probability,
    required this.holdreason,
    required this.failreason,
    this.hashtag,
    required this.launchServiceProvider,
    required this.rocket,
    required this.mission,
    required this.pad,
    this.infoURLs = const [],
    this.vidURLs = const [],
    required this.webcastLive,
    required this.image,
    this.infographic,
    this.program = const [],
    this.orbitalLaunchAttemptCount,
    required this.locationLaunchAttemptCount,
    required this.padLaunchAttemptCount,
    required this.agencyLaunchAttemptCount,
    this.orbitalLaunchAttemptCountYear,
    required this.locationLaunchAttemptCountYear,
    required this.padLaunchAttemptCountYear,
    required this.agencyLaunchAttemptCountYear,
    this.missionPatches = const [],
  });

  String id;

  String url;

  String slug;

  String? flightclubUrl;

  String? rSpacexApiId;

  String name;

  LaunchStatus status;

  DateTime lastUpdated;

  List<Update> updates;

  DateTime? net;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NetPrecision? netPrecision;

  DateTime? windowEnd;

  DateTime? windowStart;

  int? probability;

  String? holdreason;

  String? failreason;

  String? hashtag;

  AgencySerializerDetailedCommon launchServiceProvider;

  RocketDetailed rocket;

  Mission mission;

  Pad pad;

  List<InfoURL> infoURLs;

  List<VidURL> vidURLs;

  bool webcastLive;

  String image;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? infographic;

  List<Program> program;

  int? orbitalLaunchAttemptCount;

  int? locationLaunchAttemptCount;

  int? padLaunchAttemptCount;

  int? agencyLaunchAttemptCount;

  int? orbitalLaunchAttemptCountYear;

  int? locationLaunchAttemptCountYear;

  int? padLaunchAttemptCountYear;

  int? agencyLaunchAttemptCountYear;

  List<MissionPatch> missionPatches;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LaunchDetailed &&
     other.id == id &&
     other.url == url &&
     other.slug == slug &&
     other.flightclubUrl == flightclubUrl &&
     other.rSpacexApiId == rSpacexApiId &&
     other.name == name &&
     other.status == status &&
     other.lastUpdated == lastUpdated &&
     other.updates == updates &&
     other.net == net &&
     other.netPrecision == netPrecision &&
     other.windowEnd == windowEnd &&
     other.windowStart == windowStart &&
     other.probability == probability &&
     other.holdreason == holdreason &&
     other.failreason == failreason &&
     other.hashtag == hashtag &&
     other.launchServiceProvider == launchServiceProvider &&
     other.rocket == rocket &&
     other.mission == mission &&
     other.pad == pad &&
     other.infoURLs == infoURLs &&
     other.vidURLs == vidURLs &&
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
     other.agencyLaunchAttemptCountYear == agencyLaunchAttemptCountYear &&
     other.missionPatches == missionPatches;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (url.hashCode) +
    (slug.hashCode) +
    (flightclubUrl == null ? 0 : flightclubUrl!.hashCode) +
    (rSpacexApiId == null ? 0 : rSpacexApiId!.hashCode) +
    (name.hashCode) +
    (status.hashCode) +
    (lastUpdated.hashCode) +
    (updates.hashCode) +
    (net == null ? 0 : net!.hashCode) +
    (netPrecision == null ? 0 : netPrecision!.hashCode) +
    (windowEnd == null ? 0 : windowEnd!.hashCode) +
    (windowStart == null ? 0 : windowStart!.hashCode) +
    (probability == null ? 0 : probability!.hashCode) +
    (holdreason == null ? 0 : holdreason!.hashCode) +
    (failreason == null ? 0 : failreason!.hashCode) +
    (hashtag == null ? 0 : hashtag!.hashCode) +
    (launchServiceProvider.hashCode) +
    (rocket.hashCode) +
    (mission.hashCode) +
    (pad.hashCode) +
    (infoURLs.hashCode) +
    (vidURLs.hashCode) +
    (webcastLive.hashCode) +
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
    (agencyLaunchAttemptCountYear == null ? 0 : agencyLaunchAttemptCountYear!.hashCode) +
    (missionPatches.hashCode);

  @override
  String toString() => 'LaunchDetailed[id=$id, url=$url, slug=$slug, flightclubUrl=$flightclubUrl, rSpacexApiId=$rSpacexApiId, name=$name, status=$status, lastUpdated=$lastUpdated, updates=$updates, net=$net, netPrecision=$netPrecision, windowEnd=$windowEnd, windowStart=$windowStart, probability=$probability, holdreason=$holdreason, failreason=$failreason, hashtag=$hashtag, launchServiceProvider=$launchServiceProvider, rocket=$rocket, mission=$mission, pad=$pad, infoURLs=$infoURLs, vidURLs=$vidURLs, webcastLive=$webcastLive, image=$image, infographic=$infographic, program=$program, orbitalLaunchAttemptCount=$orbitalLaunchAttemptCount, locationLaunchAttemptCount=$locationLaunchAttemptCount, padLaunchAttemptCount=$padLaunchAttemptCount, agencyLaunchAttemptCount=$agencyLaunchAttemptCount, orbitalLaunchAttemptCountYear=$orbitalLaunchAttemptCountYear, locationLaunchAttemptCountYear=$locationLaunchAttemptCountYear, padLaunchAttemptCountYear=$padLaunchAttemptCountYear, agencyLaunchAttemptCountYear=$agencyLaunchAttemptCountYear, missionPatches=$missionPatches]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'url'] = this.url;
      json[r'slug'] = this.slug;
    if (this.flightclubUrl != null) {
      json[r'flightclub_url'] = this.flightclubUrl;
    } else {
      json[r'flightclub_url'] = null;
    }
    if (this.rSpacexApiId != null) {
      json[r'r_spacex_api_id'] = this.rSpacexApiId;
    } else {
      json[r'r_spacex_api_id'] = null;
    }
      json[r'name'] = this.name;
      json[r'status'] = this.status;
      json[r'last_updated'] = this.lastUpdated.toUtc().toIso8601String();
      json[r'updates'] = this.updates;
    if (this.net != null) {
      json[r'net'] = this.net!.toUtc().toIso8601String();
    } else {
      json[r'net'] = null;
    }
    if (this.netPrecision != null) {
      json[r'net_precision'] = this.netPrecision;
    } else {
      json[r'net_precision'] = null;
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
      json[r'mission'] = this.mission;
      json[r'pad'] = this.pad;
      json[r'infoURLs'] = this.infoURLs;
      json[r'vidURLs'] = this.vidURLs;
      json[r'webcast_live'] = this.webcastLive;
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
      json[r'mission_patches'] = this.missionPatches;
    return json;
  }

  /// Returns a new [LaunchDetailed] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LaunchDetailed? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LaunchDetailed[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LaunchDetailed[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LaunchDetailed(
        id: mapValueOfType<String>(json, r'id')!,
        url: mapValueOfType<String>(json, r'url')!,
        slug: mapValueOfType<String>(json, r'slug')!,
        flightclubUrl: mapValueOfType<String>(json, r'flightclub_url'),
        rSpacexApiId: mapValueOfType<String>(json, r'r_spacex_api_id'),
        name: mapValueOfType<String>(json, r'name')!,
        status: LaunchStatus.fromJson(json[r'status'])!,
        lastUpdated: mapDateTime(json, r'last_updated', '')!,
        updates: Update.listFromJson(json[r'updates']),
        net: mapDateTime(json, r'net', ''),
        netPrecision: NetPrecision.fromJson(json[r'net_precision']),
        windowEnd: mapDateTime(json, r'window_end', ''),
        windowStart: mapDateTime(json, r'window_start', ''),
        probability: mapValueOfType<int>(json, r'probability'),
        holdreason: mapValueOfType<String>(json, r'holdreason'),
        failreason: mapValueOfType<String>(json, r'failreason'),
        hashtag: mapValueOfType<String>(json, r'hashtag'),
        launchServiceProvider: AgencySerializerDetailedCommon.fromJson(json[r'launch_service_provider'])!,
        rocket: RocketDetailed.fromJson(json[r'rocket'])!,
        mission: Mission.fromJson(json[r'mission'])!,
        pad: Pad.fromJson(json[r'pad'])!,
        infoURLs: InfoURL.listFromJson(json[r'infoURLs']),
        vidURLs: VidURL.listFromJson(json[r'vidURLs']),
        webcastLive: mapValueOfType<bool>(json, r'webcast_live')!,
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
        missionPatches: MissionPatch.listFromJson(json[r'mission_patches']),
      );
    }
    return null;
  }

  static List<LaunchDetailed> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LaunchDetailed>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LaunchDetailed.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LaunchDetailed> mapFromJson(dynamic json) {
    final map = <String, LaunchDetailed>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LaunchDetailed.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LaunchDetailed-objects as value to a dart map
  static Map<String, List<LaunchDetailed>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LaunchDetailed>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LaunchDetailed.listFromJson(entry.value, growable: growable,);
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
    'status',
    'last_updated',
    'updates',
    'net',
    'window_end',
    'window_start',
    'holdreason',
    'failreason',
    'launch_service_provider',
    'rocket',
    'mission',
    'pad',
    'infoURLs',
    'vidURLs',
    'webcast_live',
    'image',
    'program',
    'location_launch_attempt_count',
    'pad_launch_attempt_count',
    'agency_launch_attempt_count',
    'location_launch_attempt_count_year',
    'pad_launch_attempt_count_year',
    'agency_launch_attempt_count_year',
    'mission_patches',
  };
}

