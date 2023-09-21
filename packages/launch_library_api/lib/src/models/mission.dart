// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'package:launch_library_api/launch_library_api.dart';

part 'mission.g.dart';

@JsonSerializable()
class Mission extends Equatable {
  const Mission({
    required this.orbit,
    this.name,
    this.description,
    this.type,
    this.launchDesignator,
  });

  factory Mission.fromJson(Map<String, dynamic> json) =>
      _$MissionFromJson(json);

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
