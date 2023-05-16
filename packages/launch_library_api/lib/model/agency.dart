//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class Agency {
  /// Returns a new [Agency] instance.
  Agency({
    required this.id,
    required this.url,
    required this.name,
    this.featured,
    this.type,
    this.countryCode,
    this.abbrev,
    this.description,
    this.administrator,
    this.foundingYear,
    this.launchers,
    this.spacecraft,
    required this.parent,
    this.imageUrl,
    this.logoUrl,
  });

  int id;

  String url;

  String name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? featured;

  String? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? countryCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? abbrev;

  String? description;

  String? administrator;

  String? foundingYear;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? launchers;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? spacecraft;

  String parent;

  String? imageUrl;

  String? logoUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Agency &&
     other.id == id &&
     other.url == url &&
     other.name == name &&
     other.featured == featured &&
     other.type == type &&
     other.countryCode == countryCode &&
     other.abbrev == abbrev &&
     other.description == description &&
     other.administrator == administrator &&
     other.foundingYear == foundingYear &&
     other.launchers == launchers &&
     other.spacecraft == spacecraft &&
     other.parent == parent &&
     other.imageUrl == imageUrl &&
     other.logoUrl == logoUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (url.hashCode) +
    (name.hashCode) +
    (featured == null ? 0 : featured!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (countryCode == null ? 0 : countryCode!.hashCode) +
    (abbrev == null ? 0 : abbrev!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (administrator == null ? 0 : administrator!.hashCode) +
    (foundingYear == null ? 0 : foundingYear!.hashCode) +
    (launchers == null ? 0 : launchers!.hashCode) +
    (spacecraft == null ? 0 : spacecraft!.hashCode) +
    (parent.hashCode) +
    (imageUrl == null ? 0 : imageUrl!.hashCode) +
    (logoUrl == null ? 0 : logoUrl!.hashCode);

  @override
  String toString() => 'Agency[id=$id, url=$url, name=$name, featured=$featured, type=$type, countryCode=$countryCode, abbrev=$abbrev, description=$description, administrator=$administrator, foundingYear=$foundingYear, launchers=$launchers, spacecraft=$spacecraft, parent=$parent, imageUrl=$imageUrl, logoUrl=$logoUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'url'] = this.url;
      json[r'name'] = this.name;
    if (this.featured != null) {
      json[r'featured'] = this.featured;
    } else {
      json[r'featured'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.countryCode != null) {
      json[r'country_code'] = this.countryCode;
    } else {
      json[r'country_code'] = null;
    }
    if (this.abbrev != null) {
      json[r'abbrev'] = this.abbrev;
    } else {
      json[r'abbrev'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.administrator != null) {
      json[r'administrator'] = this.administrator;
    } else {
      json[r'administrator'] = null;
    }
    if (this.foundingYear != null) {
      json[r'founding_year'] = this.foundingYear;
    } else {
      json[r'founding_year'] = null;
    }
    if (this.launchers != null) {
      json[r'launchers'] = this.launchers;
    } else {
      json[r'launchers'] = null;
    }
    if (this.spacecraft != null) {
      json[r'spacecraft'] = this.spacecraft;
    } else {
      json[r'spacecraft'] = null;
    }
      json[r'parent'] = this.parent;
    if (this.imageUrl != null) {
      json[r'image_url'] = this.imageUrl;
    } else {
      json[r'image_url'] = null;
    }
    if (this.logoUrl != null) {
      json[r'logo_url'] = this.logoUrl;
    } else {
      json[r'logo_url'] = null;
    }
    return json;
  }

  /// Returns a new [Agency] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Agency? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Agency[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Agency[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Agency(
        id: mapValueOfType<int>(json, r'id')!,
        url: mapValueOfType<String>(json, r'url')!,
        name: mapValueOfType<String>(json, r'name')!,
        featured: mapValueOfType<bool>(json, r'featured'),
        type: mapValueOfType<String>(json, r'type'),
        countryCode: mapValueOfType<String>(json, r'country_code'),
        abbrev: mapValueOfType<String>(json, r'abbrev'),
        description: mapValueOfType<String>(json, r'description'),
        administrator: mapValueOfType<String>(json, r'administrator'),
        foundingYear: mapValueOfType<String>(json, r'founding_year'),
        launchers: mapValueOfType<String>(json, r'launchers'),
        spacecraft: mapValueOfType<String>(json, r'spacecraft'),
        parent: mapValueOfType<String>(json, r'parent')!,
        imageUrl: mapValueOfType<String>(json, r'image_url'),
        logoUrl: mapValueOfType<String>(json, r'logo_url'),
      );
    }
    return null;
  }

  static List<Agency> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Agency>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Agency.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Agency> mapFromJson(dynamic json) {
    final map = <String, Agency>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Agency.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Agency-objects as value to a dart map
  static Map<String, List<Agency>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Agency>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Agency.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'url',
    'name',
    'parent',
  };
}

