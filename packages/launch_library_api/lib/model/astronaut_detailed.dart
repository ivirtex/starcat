//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class AstronautDetailed {
  /// Returns a new [AstronautDetailed] instance.
  AstronautDetailed({
    required this.id,
    required this.url,
    required this.name,
    required this.status,
    required this.type,
    this.inSpace,
    required this.timeInSpace,
    required this.evaTime,
    required this.agency,
    this.age,
    this.dateOfBirth,
    this.dateOfDeath,
    required this.nationality,
    this.twitter,
    this.instagram,
    required this.bio,
    this.profileImage,
    this.profileImageThumbnail,
    this.wiki,
    this.flights = const [],
    this.landings = const [],
    this.flightsCount,
    this.landingsCount,
    this.spacewalksCount,
    this.lastFlight,
    this.firstFlight,
    this.spacewalks = const [],
  });

  int id;

  String url;

  String name;

  AstronautStatus status;

  AstronautType type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? inSpace;

  String timeInSpace;

  String evaTime;

  AgencySerializerMini agency;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? age;

  DateTime? dateOfBirth;

  DateTime? dateOfDeath;

  String nationality;

  String? twitter;

  String? instagram;

  String bio;

  String? profileImage;

  String? profileImageThumbnail;

  String? wiki;

  List<LaunchSerializerCommon> flights;

  List<SpacecraftFlight> landings;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? flightsCount;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? landingsCount;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? spacewalksCount;

  DateTime? lastFlight;

  DateTime? firstFlight;

  List<SpacewalkNormal> spacewalks;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AstronautDetailed &&
     other.id == id &&
     other.url == url &&
     other.name == name &&
     other.status == status &&
     other.type == type &&
     other.inSpace == inSpace &&
     other.timeInSpace == timeInSpace &&
     other.evaTime == evaTime &&
     other.agency == agency &&
     other.age == age &&
     other.dateOfBirth == dateOfBirth &&
     other.dateOfDeath == dateOfDeath &&
     other.nationality == nationality &&
     other.twitter == twitter &&
     other.instagram == instagram &&
     other.bio == bio &&
     other.profileImage == profileImage &&
     other.profileImageThumbnail == profileImageThumbnail &&
     other.wiki == wiki &&
     other.flights == flights &&
     other.landings == landings &&
     other.flightsCount == flightsCount &&
     other.landingsCount == landingsCount &&
     other.spacewalksCount == spacewalksCount &&
     other.lastFlight == lastFlight &&
     other.firstFlight == firstFlight &&
     other.spacewalks == spacewalks;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (url.hashCode) +
    (name.hashCode) +
    (status.hashCode) +
    (type.hashCode) +
    (inSpace == null ? 0 : inSpace!.hashCode) +
    (timeInSpace.hashCode) +
    (evaTime.hashCode) +
    (agency.hashCode) +
    (age == null ? 0 : age!.hashCode) +
    (dateOfBirth == null ? 0 : dateOfBirth!.hashCode) +
    (dateOfDeath == null ? 0 : dateOfDeath!.hashCode) +
    (nationality.hashCode) +
    (twitter == null ? 0 : twitter!.hashCode) +
    (instagram == null ? 0 : instagram!.hashCode) +
    (bio.hashCode) +
    (profileImage == null ? 0 : profileImage!.hashCode) +
    (profileImageThumbnail == null ? 0 : profileImageThumbnail!.hashCode) +
    (wiki == null ? 0 : wiki!.hashCode) +
    (flights.hashCode) +
    (landings.hashCode) +
    (flightsCount == null ? 0 : flightsCount!.hashCode) +
    (landingsCount == null ? 0 : landingsCount!.hashCode) +
    (spacewalksCount == null ? 0 : spacewalksCount!.hashCode) +
    (lastFlight == null ? 0 : lastFlight!.hashCode) +
    (firstFlight == null ? 0 : firstFlight!.hashCode) +
    (spacewalks.hashCode);

  @override
  String toString() => 'AstronautDetailed[id=$id, url=$url, name=$name, status=$status, type=$type, inSpace=$inSpace, timeInSpace=$timeInSpace, evaTime=$evaTime, agency=$agency, age=$age, dateOfBirth=$dateOfBirth, dateOfDeath=$dateOfDeath, nationality=$nationality, twitter=$twitter, instagram=$instagram, bio=$bio, profileImage=$profileImage, profileImageThumbnail=$profileImageThumbnail, wiki=$wiki, flights=$flights, landings=$landings, flightsCount=$flightsCount, landingsCount=$landingsCount, spacewalksCount=$spacewalksCount, lastFlight=$lastFlight, firstFlight=$firstFlight, spacewalks=$spacewalks]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'url'] = this.url;
      json[r'name'] = this.name;
      json[r'status'] = this.status;
      json[r'type'] = this.type;
    if (this.inSpace != null) {
      json[r'in_space'] = this.inSpace;
    } else {
      json[r'in_space'] = null;
    }
      json[r'time_in_space'] = this.timeInSpace;
      json[r'eva_time'] = this.evaTime;
      json[r'agency'] = this.agency;
    if (this.age != null) {
      json[r'age'] = this.age;
    } else {
      json[r'age'] = null;
    }
    if (this.dateOfBirth != null) {
      json[r'date_of_birth'] = _dateFormatter.format(this.dateOfBirth!.toUtc());
    } else {
      json[r'date_of_birth'] = null;
    }
    if (this.dateOfDeath != null) {
      json[r'date_of_death'] = _dateFormatter.format(this.dateOfDeath!.toUtc());
    } else {
      json[r'date_of_death'] = null;
    }
      json[r'nationality'] = this.nationality;
    if (this.twitter != null) {
      json[r'twitter'] = this.twitter;
    } else {
      json[r'twitter'] = null;
    }
    if (this.instagram != null) {
      json[r'instagram'] = this.instagram;
    } else {
      json[r'instagram'] = null;
    }
      json[r'bio'] = this.bio;
    if (this.profileImage != null) {
      json[r'profile_image'] = this.profileImage;
    } else {
      json[r'profile_image'] = null;
    }
    if (this.profileImageThumbnail != null) {
      json[r'profile_image_thumbnail'] = this.profileImageThumbnail;
    } else {
      json[r'profile_image_thumbnail'] = null;
    }
    if (this.wiki != null) {
      json[r'wiki'] = this.wiki;
    } else {
      json[r'wiki'] = null;
    }
      json[r'flights'] = this.flights;
      json[r'landings'] = this.landings;
    if (this.flightsCount != null) {
      json[r'flights_count'] = this.flightsCount;
    } else {
      json[r'flights_count'] = null;
    }
    if (this.landingsCount != null) {
      json[r'landings_count'] = this.landingsCount;
    } else {
      json[r'landings_count'] = null;
    }
    if (this.spacewalksCount != null) {
      json[r'spacewalks_count'] = this.spacewalksCount;
    } else {
      json[r'spacewalks_count'] = null;
    }
    if (this.lastFlight != null) {
      json[r'last_flight'] = this.lastFlight!.toUtc().toIso8601String();
    } else {
      json[r'last_flight'] = null;
    }
    if (this.firstFlight != null) {
      json[r'first_flight'] = this.firstFlight!.toUtc().toIso8601String();
    } else {
      json[r'first_flight'] = null;
    }
      json[r'spacewalks'] = this.spacewalks;
    return json;
  }

  /// Returns a new [AstronautDetailed] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AstronautDetailed? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AstronautDetailed[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AstronautDetailed[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AstronautDetailed(
        id: mapValueOfType<int>(json, r'id')!,
        url: mapValueOfType<String>(json, r'url')!,
        name: mapValueOfType<String>(json, r'name')!,
        status: AstronautStatus.fromJson(json[r'status'])!,
        type: AstronautType.fromJson(json[r'type'])!,
        inSpace: mapValueOfType<bool>(json, r'in_space'),
        timeInSpace: mapValueOfType<String>(json, r'time_in_space')!,
        evaTime: mapValueOfType<String>(json, r'eva_time')!,
        agency: AgencySerializerMini.fromJson(json[r'agency'])!,
        age: mapValueOfType<int>(json, r'age'),
        dateOfBirth: mapDateTime(json, r'date_of_birth', ''),
        dateOfDeath: mapDateTime(json, r'date_of_death', ''),
        nationality: mapValueOfType<String>(json, r'nationality')!,
        twitter: mapValueOfType<String>(json, r'twitter'),
        instagram: mapValueOfType<String>(json, r'instagram'),
        bio: mapValueOfType<String>(json, r'bio')!,
        profileImage: mapValueOfType<String>(json, r'profile_image'),
        profileImageThumbnail: mapValueOfType<String>(json, r'profile_image_thumbnail'),
        wiki: mapValueOfType<String>(json, r'wiki'),
        flights: LaunchSerializerCommon.listFromJson(json[r'flights']),
        landings: SpacecraftFlight.listFromJson(json[r'landings']),
        flightsCount: mapValueOfType<int>(json, r'flights_count'),
        landingsCount: mapValueOfType<int>(json, r'landings_count'),
        spacewalksCount: mapValueOfType<int>(json, r'spacewalks_count'),
        lastFlight: mapDateTime(json, r'last_flight', ''),
        firstFlight: mapDateTime(json, r'first_flight', ''),
        spacewalks: SpacewalkNormal.listFromJson(json[r'spacewalks']),
      );
    }
    return null;
  }

  static List<AstronautDetailed> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AstronautDetailed>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AstronautDetailed.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AstronautDetailed> mapFromJson(dynamic json) {
    final map = <String, AstronautDetailed>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AstronautDetailed.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AstronautDetailed-objects as value to a dart map
  static Map<String, List<AstronautDetailed>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AstronautDetailed>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AstronautDetailed.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'url',
    'name',
    'status',
    'type',
    'time_in_space',
    'eva_time',
    'agency',
    'nationality',
    'bio',
    'landings',
    'spacewalks',
  };
}

