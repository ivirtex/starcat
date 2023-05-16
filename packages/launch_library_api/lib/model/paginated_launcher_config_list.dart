//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class PaginatedLauncherConfigList {
  /// Returns a new [PaginatedLauncherConfigList] instance.
  PaginatedLauncherConfigList({
    this.count,
    this.next,
    this.previous,
    this.results = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  String? next;

  String? previous;

  List<LauncherConfig> results;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PaginatedLauncherConfigList &&
     other.count == count &&
     other.next == next &&
     other.previous == previous &&
     other.results == results;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (count == null ? 0 : count!.hashCode) +
    (next == null ? 0 : next!.hashCode) +
    (previous == null ? 0 : previous!.hashCode) +
    (results.hashCode);

  @override
  String toString() => 'PaginatedLauncherConfigList[count=$count, next=$next, previous=$previous, results=$results]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    if (this.next != null) {
      json[r'next'] = this.next;
    } else {
      json[r'next'] = null;
    }
    if (this.previous != null) {
      json[r'previous'] = this.previous;
    } else {
      json[r'previous'] = null;
    }
      json[r'results'] = this.results;
    return json;
  }

  /// Returns a new [PaginatedLauncherConfigList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaginatedLauncherConfigList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PaginatedLauncherConfigList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PaginatedLauncherConfigList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PaginatedLauncherConfigList(
        count: mapValueOfType<int>(json, r'count'),
        next: mapValueOfType<String>(json, r'next'),
        previous: mapValueOfType<String>(json, r'previous'),
        results: LauncherConfig.listFromJson(json[r'results']),
      );
    }
    return null;
  }

  static List<PaginatedLauncherConfigList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PaginatedLauncherConfigList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaginatedLauncherConfigList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaginatedLauncherConfigList> mapFromJson(dynamic json) {
    final map = <String, PaginatedLauncherConfigList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaginatedLauncherConfigList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaginatedLauncherConfigList-objects as value to a dart map
  static Map<String, List<PaginatedLauncherConfigList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PaginatedLauncherConfigList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PaginatedLauncherConfigList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

