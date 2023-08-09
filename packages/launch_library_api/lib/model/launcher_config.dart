//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class LauncherConfig {
  /// Returns a new [LauncherConfig] instance.
  LauncherConfig({
    required this.id,
    required this.url,
    required this.name,
    this.manufacturer,
    this.program = const [],
    this.family,
    this.fullName,
    this.variant,
    this.reusable,
    this.imageUrl,
    this.infoUrl,
    this.wikiUrl,
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
  Agency? manufacturer;

  List<Program> program;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? family;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fullName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? variant;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? reusable;

  String? imageUrl;

  String? infoUrl;

  String? wikiUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LauncherConfig &&
     other.id == id &&
     other.url == url &&
     other.name == name &&
     other.manufacturer == manufacturer &&
     other.program == program &&
     other.family == family &&
     other.fullName == fullName &&
     other.variant == variant &&
     other.reusable == reusable &&
     other.imageUrl == imageUrl &&
     other.infoUrl == infoUrl &&
     other.wikiUrl == wikiUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (url.hashCode) +
    (name.hashCode) +
    (manufacturer == null ? 0 : manufacturer!.hashCode) +
    (program.hashCode) +
    (family == null ? 0 : family!.hashCode) +
    (fullName == null ? 0 : fullName!.hashCode) +
    (variant == null ? 0 : variant!.hashCode) +
    (reusable == null ? 0 : reusable!.hashCode) +
    (imageUrl == null ? 0 : imageUrl!.hashCode) +
    (infoUrl == null ? 0 : infoUrl!.hashCode) +
    (wikiUrl == null ? 0 : wikiUrl!.hashCode);

  @override
  String toString() => 'LauncherConfig[id=$id, url=$url, name=$name, manufacturer=$manufacturer, program=$program, family=$family, fullName=$fullName, variant=$variant, reusable=$reusable, imageUrl=$imageUrl, infoUrl=$infoUrl, wikiUrl=$wikiUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'url'] = this.url;
      json[r'name'] = this.name;
    if (this.manufacturer != null) {
      json[r'manufacturer'] = this.manufacturer;
    } else {
      json[r'manufacturer'] = null;
    }
      json[r'program'] = this.program;
    if (this.family != null) {
      json[r'family'] = this.family;
    } else {
      json[r'family'] = null;
    }
    if (this.fullName != null) {
      json[r'full_name'] = this.fullName;
    } else {
      json[r'full_name'] = null;
    }
    if (this.variant != null) {
      json[r'variant'] = this.variant;
    } else {
      json[r'variant'] = null;
    }
    if (this.reusable != null) {
      json[r'reusable'] = this.reusable;
    } else {
      json[r'reusable'] = null;
    }
    if (this.imageUrl != null) {
      json[r'image_url'] = this.imageUrl;
    } else {
      json[r'image_url'] = null;
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
    return json;
  }

  /// Returns a new [LauncherConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LauncherConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LauncherConfig[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LauncherConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LauncherConfig(
        id: mapValueOfType<int>(json, r'id')!,
        url: mapValueOfType<String>(json, r'url')!,
        name: mapValueOfType<String>(json, r'name')!,
        manufacturer: Agency.fromJson(json[r'manufacturer']),
        program: Program.listFromJson(json[r'program']),
        family: mapValueOfType<String>(json, r'family'),
        fullName: mapValueOfType<String>(json, r'full_name'),
        variant: mapValueOfType<String>(json, r'variant'),
        reusable: mapValueOfType<bool>(json, r'reusable'),
        imageUrl: mapValueOfType<String>(json, r'image_url'),
        infoUrl: mapValueOfType<String>(json, r'info_url'),
        wikiUrl: mapValueOfType<String>(json, r'wiki_url'),
      );
    }
    return null;
  }

  static List<LauncherConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LauncherConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LauncherConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LauncherConfig> mapFromJson(dynamic json) {
    final map = <String, LauncherConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LauncherConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LauncherConfig-objects as value to a dart map
  static Map<String, List<LauncherConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LauncherConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LauncherConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'url',
    'name',
    'program',
  };
}

