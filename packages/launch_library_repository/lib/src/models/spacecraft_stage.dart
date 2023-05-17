// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_api/api.dart' as api;

// Project imports:
import 'package:launch_library_repository/launch_library_repository.dart';

part 'spacecraft_stage.g.dart';

@JsonSerializable()
class SpacecraftStage extends Equatable {
  const SpacecraftStage({
    required this.id,
    required this.url,
    required this.spacecraft,
    required this.landing,
    this.missionEnd,
    this.destination,
  });

  factory SpacecraftStage.fromJson(Map<String, dynamic> json) =>
      _$SpacecraftStageFromJson(json);

  factory SpacecraftStage.fromApi(
    api.SpacecraftFlightDetailedSerializerForLaunch apiSpacecraftStage,
  ) {
    return SpacecraftStage(
      id: apiSpacecraftStage.id,
      url: apiSpacecraftStage.url,
      spacecraft: Spacecraft.fromApiDetailed(apiSpacecraftStage.spacecraft),
      landing: Landing.fromApi(apiSpacecraftStage.landing),
      missionEnd: apiSpacecraftStage.missionEnd,
      destination: apiSpacecraftStage.destination,
    );
  }

  final int id;
  final String url;
  final Spacecraft spacecraft;
  final Landing landing;
  final DateTime? missionEnd;
  final String? destination;

  Map<String, dynamic> toJson() => _$SpacecraftStageToJson(this);

  @override
  List<Object?> get props => [
        id,
        url,
        spacecraft,
        landing,
        missionEnd,
        destination,
      ];
}
