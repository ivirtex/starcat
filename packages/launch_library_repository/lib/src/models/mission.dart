// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_api/api.dart' as api;

// Project imports:
import 'package:launch_library_repository/launch_library_repository.dart';

part 'mission.g.dart';

@JsonSerializable()
class Mission extends Equatable {
  const Mission({
    this.orbit,
    this.name,
    this.description,
    this.type,
    this.launchDesignator,
  });

  factory Mission.fromJson(Map<String, dynamic> json) =>
      _$MissionFromJson(json);

  factory Mission.fromApi(api.Mission apiMission) {
    return Mission(
      name: apiMission.name,
      description: apiMission.description,
      launchDesignator: apiMission.launchDesignator,
      type: apiMission.type,
      orbit: apiMission.orbit != null ? Orbit.fromApi(apiMission.orbit!) : null,
    );
  }

  final String? name;
  final String? description;
  final String? launchDesignator;
  final String? type;
  final Orbit? orbit;

  Map<String, dynamic> toJson() => _$MissionToJson(this);

  @override
  List<Object?> get props => [
        name,
        description,
        launchDesignator,
        type,
        orbit,
      ];
}
