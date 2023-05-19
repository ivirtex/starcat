// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_api/api.dart' as api;

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

  factory MissionPatch.fromApi(api.MissionPatch apiMissionPatch) {
    return MissionPatch(
      name: apiMissionPatch.name,
      priority: apiMissionPatch.priority,
      imageUrl: apiMissionPatch.imageUrl,
      agency: LaunchServiceProvider.fromApiMini(apiMissionPatch.agency),
    );
  }

  final String? name;
  final int? priority;
  final String? imageUrl;
  final LaunchServiceProvider agency;

  Map<String, dynamic> toJson() => _$MissionPatchToJson(this);

  @override
  List<Object?> get props => [
        name,
        priority,
        imageUrl,
        agency,
      ];
}
