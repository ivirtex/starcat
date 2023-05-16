//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class AstronautDetailedSerializerNoFlights {
  /// Returns a new [AstronautDetailedSerializerNoFlights] instance.
  AstronautDetailedSerializerNoFlights({
    required this.id,
    required this.url,
    required this.name,
    required this.type,
    this.inSpace,
    required this.timeInSpace,
    required this.status,
    required this.agency,
    this.dateOfBirth,
    this.dateOfDeath,
    required this.nationality,
    this.twitter,
    this.instagram,
    required this.bio,
    this.profileImage,
    this.wiki,
    this.lastFlight,
    this.firstFlight,
  });

  int id;

  String url;

  String name;

  AstronautType type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? inSpace;

  String timeInSpace;

  AstronautStatus status;

  AgencySerializerMini agency;

  DateTime? dateOfBirth;

  DateTime? dateOfDeath;

  String nationality;

  String? twitter;

  String? instagram;

  String bio;

  String? profileImage;

  String? wiki;

  DateTime? lastFlight;

  DateTime? firstFlight;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AstronautDetailedSerializerNoFlights &&
     other.id == id &&
     other.url == url &&
     other.name == name &&
     other.type == type &&
     other.inSpace == inSpace &&
     other.timeInSpace == timeInSpace &&
     other.status == status &&
     other.agency == agency &&
     other.dateOfBirth == dateOfBirth &&
     other.dateOfDeath == dateOfDeath &&
     other.nationality == nationality &&
     other.twitter == twitter &&
     other.instagram == instagram &&
     other.bio == bio &&
     other.profileImage == profileImage &&
     other.wiki == wiki &&
     other.lastFlight == lastFlight &&
     other.firstFlight == firstFlight;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (url.hashCode) +
    (name.hashCode) +
    (type.hashCode) +
    (inSpace == null ? 0 : inSpace!.hashCode) +
    (timeInSpace.hashCode) +
    (status.hashCode) +
    (agency.hashCode) +
    (dateOfBirth == null ? 0 : dateOfBirth!.hashCode) +
    (dateOfDeath == null ? 0 : dateOfDeath!.hashCode) +
    (nationality.hashCode) +
    (twitter == null ? 0 : twitter!.hashCode) +
    (instagram == null ? 0 : instagram!.hashCode) +
    (bio.hashCode) +
    (profileImage == null ? 0 : profileImage!.hashCode) +
    (wiki == null ? 0 : wiki!.hashCode) +
    (lastFlight == null ? 0 : lastFlight!.hashCode) +
    (firstFlight == null ? 0 : firstFlight!.hashCode);

  @override
  String toString() => 'AstronautDetailedSerializerNoFlights[id=$id, url=$url, name=$name, type=$type, inSpace=$inSpace, timeInSpace=$timeInSpace, status=$status, agency=$agency, dateOfBirth=$dateOfBirth, dateOfDeath=$dateOfDeath, nationality=$nationality, twitter=$twitter, instagram=$instagram, bio=$bio, profileImage=$profileImage, wiki=$wiki, lastFlight=$lastFlight, firstFlight=$firstFlight]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'url'] = this.url;
      json[r'name'] = this.name;
      json[r'type'] = this.type;
    if (this.inSpace != null) {
      json[r'in_space'] = this.inSpace;
    } else {
      json[r'in_space'] = null;
    }
      json[r'time_in_space'] = this.timeInSpace;
      json[r'status'] = this.status;
      json[r'agency'] = this.agency;
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
    if (this.wiki != null) {
      json[r'wiki'] = this.wiki;
    } else {
      json[r'wiki'] = null;
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
    return json;
  }

  /// Returns a new [AstronautDetailedSerializerNoFlights] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AstronautDetailedSerializerNoFlights? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AstronautDetailedSerializerNoFlights[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AstronautDetailedSerializerNoFlights[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AstronautDetailedSerializerNoFlights(
        id: mapValueOfType<int>(json, r'id')!,
        url: mapValueOfType<String>(json, r'url')!,
        name: mapValueOfType<String>(json, r'name')!,
        type: AstronautType.fromJson(json[r'type'])!,
        inSpace: mapValueOfType<bool>(json, r'in_space'),
        timeInSpace: mapValueOfType<String>(json, r'time_in_space')!,
        status: AstronautStatus.fromJson(json[r'status'])!,
        agency: AgencySerializerMini.fromJson(json[r'agency'])!,
        dateOfBirth: mapDateTime(json, r'date_of_birth', ''),
        dateOfDeath: mapDateTime(json, r'date_of_death', ''),
        nationality: mapValueOfType<String>(json, r'nationality')!,
        twitter: mapValueOfType<String>(json, r'twitter'),
        instagram: mapValueOfType<String>(json, r'instagram'),
        bio: mapValueOfType<String>(json, r'bio')!,
        profileImage: mapValueOfType<String>(json, r'profile_image'),
        wiki: mapValueOfType<String>(json, r'wiki'),
        lastFlight: mapDateTime(json, r'last_flight', ''),
        firstFlight: mapDateTime(json, r'first_flight', ''),
      );
    }
    return null;
  }

  static List<AstronautDetailedSerializerNoFlights> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AstronautDetailedSerializerNoFlights>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AstronautDetailedSerializerNoFlights.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AstronautDetailedSerializerNoFlights> mapFromJson(dynamic json) {
    final map = <String, AstronautDetailedSerializerNoFlights>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AstronautDetailedSerializerNoFlights.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AstronautDetailedSerializerNoFlights-objects as value to a dart map
  static Map<String, List<AstronautDetailedSerializerNoFlights>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AstronautDetailedSerializerNoFlights>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AstronautDetailedSerializerNoFlights.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'url',
    'name',
    'type',
    'time_in_space',
    'status',
    'agency',
    'nationality',
    'bio',
  };
}

