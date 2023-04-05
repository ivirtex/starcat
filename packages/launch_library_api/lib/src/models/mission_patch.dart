// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'package:launch_library_api/launch_library_api.dart';

part 'mission_patch.g.dart';

@JsonSerializable()
class MissionPatch extends Equatable {
  const MissionPatch({
    required this.id,
    required this.agency,
    this.name,
    this.priority,
    this.imageUrl,
  });

  factory MissionPatch.fromJson(Map<String, dynamic> json) =>
      _$MissionPatchFromJson(json);

  final int id;
  final String? name;
  final int? priority;
  final String? imageUrl;
  final LaunchServiceProvider agency;

  @override
  List<Object?> get props => [
        id,
        name,
        priority,
        imageUrl,
        agency,
      ];
}
