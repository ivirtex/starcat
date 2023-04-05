// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'package:launch_library_repository/launch_library_repository.dart';

part 'mission_patch.g.dart';

@JsonSerializable()
class MissionPatch extends Equatable {
  const MissionPatch({
    required this.agency,
    this.name,
    this.priority,
    this.imageUrl,
  });

  factory MissionPatch.fromJson(Map<String, dynamic> json) =>
      _$MissionPatchFromJson(json);

  final String? name;
  final int? priority;
  final String? imageUrl;
  final LaunchServiceProvider agency;

  @override
  List<Object?> get props => [
        name,
        priority,
        imageUrl,
        agency,
      ];
}