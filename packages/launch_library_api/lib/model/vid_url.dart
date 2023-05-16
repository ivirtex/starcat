//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class VidURL {
  /// Returns a new [VidURL] instance.
  VidURL({
    this.priority,
    this.title,
    this.description,
    this.featureImage,
    required this.url,
  });

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? priority;

  String? title;

  String? description;

  String? featureImage;

  String url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VidURL &&
     other.priority == priority &&
     other.title == title &&
     other.description == description &&
     other.featureImage == featureImage &&
     other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (priority == null ? 0 : priority!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (featureImage == null ? 0 : featureImage!.hashCode) +
    (url.hashCode);

  @override
  String toString() => 'VidURL[priority=$priority, title=$title, description=$description, featureImage=$featureImage, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.priority != null) {
      json[r'priority'] = this.priority;
    } else {
      json[r'priority'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.featureImage != null) {
      json[r'feature_image'] = this.featureImage;
    } else {
      json[r'feature_image'] = null;
    }
      json[r'url'] = this.url;
    return json;
  }

  /// Returns a new [VidURL] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VidURL? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VidURL[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VidURL[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VidURL(
        priority: mapValueOfType<int>(json, r'priority'),
        title: mapValueOfType<String>(json, r'title'),
        description: mapValueOfType<String>(json, r'description'),
        featureImage: mapValueOfType<String>(json, r'feature_image'),
        url: mapValueOfType<String>(json, r'url')!,
      );
    }
    return null;
  }

  static List<VidURL> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VidURL>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VidURL.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VidURL> mapFromJson(dynamic json) {
    final map = <String, VidURL>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VidURL.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VidURL-objects as value to a dart map
  static Map<String, List<VidURL>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VidURL>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VidURL.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'url',
  };
}

