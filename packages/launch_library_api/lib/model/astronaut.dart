//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class Astronaut {
  /// Returns a new [Astronaut] instance.
  Astronaut({
    required this.id,
    required this.url,
    required this.name,
    required this.status,
    required this.agency,
    this.profileImage,
    this.profileImageThumbnail,
  });

  int id;

  String url;

  String name;

  AstronautStatus status;

  AgencySerializerMini agency;

  String? profileImage;

  String? profileImageThumbnail;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Astronaut &&
     other.id == id &&
     other.url == url &&
     other.name == name &&
     other.status == status &&
     other.agency == agency &&
     other.profileImage == profileImage &&
     other.profileImageThumbnail == profileImageThumbnail;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (url.hashCode) +
    (name.hashCode) +
    (status.hashCode) +
    (agency.hashCode) +
    (profileImage == null ? 0 : profileImage!.hashCode) +
    (profileImageThumbnail == null ? 0 : profileImageThumbnail!.hashCode);

  @override
  String toString() => 'Astronaut[id=$id, url=$url, name=$name, status=$status, agency=$agency, profileImage=$profileImage, profileImageThumbnail=$profileImageThumbnail]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'url'] = this.url;
      json[r'name'] = this.name;
      json[r'status'] = this.status;
      json[r'agency'] = this.agency;
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
    return json;
  }

  /// Returns a new [Astronaut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Astronaut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Astronaut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Astronaut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Astronaut(
        id: mapValueOfType<int>(json, r'id')!,
        url: mapValueOfType<String>(json, r'url')!,
        name: mapValueOfType<String>(json, r'name')!,
        status: AstronautStatus.fromJson(json[r'status'])!,
        agency: AgencySerializerMini.fromJson(json[r'agency'])!,
        profileImage: mapValueOfType<String>(json, r'profile_image'),
        profileImageThumbnail: mapValueOfType<String>(json, r'profile_image_thumbnail'),
      );
    }
    return null;
  }

  static List<Astronaut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Astronaut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Astronaut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Astronaut> mapFromJson(dynamic json) {
    final map = <String, Astronaut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Astronaut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Astronaut-objects as value to a dart map
  static Map<String, List<Astronaut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Astronaut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Astronaut.listFromJson(entry.value, growable: growable,);
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
    'agency',
  };
}

