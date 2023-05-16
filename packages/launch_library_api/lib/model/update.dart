//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class Update {
  /// Returns a new [Update] instance.
  Update({
    required this.id,
    required this.profileImage,
    this.comment,
    this.infoUrl,
    required this.createdBy,
    required this.createdOn,
  });

  int id;

  String profileImage;

  String? comment;

  String? infoUrl;

  String createdBy;

  DateTime createdOn;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Update &&
     other.id == id &&
     other.profileImage == profileImage &&
     other.comment == comment &&
     other.infoUrl == infoUrl &&
     other.createdBy == createdBy &&
     other.createdOn == createdOn;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (profileImage.hashCode) +
    (comment == null ? 0 : comment!.hashCode) +
    (infoUrl == null ? 0 : infoUrl!.hashCode) +
    (createdBy.hashCode) +
    (createdOn.hashCode);

  @override
  String toString() => 'Update[id=$id, profileImage=$profileImage, comment=$comment, infoUrl=$infoUrl, createdBy=$createdBy, createdOn=$createdOn]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'profile_image'] = this.profileImage;
    if (this.comment != null) {
      json[r'comment'] = this.comment;
    } else {
      json[r'comment'] = null;
    }
    if (this.infoUrl != null) {
      json[r'info_url'] = this.infoUrl;
    } else {
      json[r'info_url'] = null;
    }
      json[r'created_by'] = this.createdBy;
      json[r'created_on'] = this.createdOn.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [Update] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Update? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Update[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Update[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Update(
        id: mapValueOfType<int>(json, r'id')!,
        profileImage: mapValueOfType<String>(json, r'profile_image')!,
        comment: mapValueOfType<String>(json, r'comment'),
        infoUrl: mapValueOfType<String>(json, r'info_url'),
        createdBy: mapValueOfType<String>(json, r'created_by')!,
        createdOn: mapDateTime(json, r'created_on', '')!,
      );
    }
    return null;
  }

  static List<Update> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Update>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Update.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Update> mapFromJson(dynamic json) {
    final map = <String, Update>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Update.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Update-objects as value to a dart map
  static Map<String, List<Update>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Update>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Update.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'profile_image',
    'created_by',
    'created_on',
  };
}

