// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'package:launch_library_api/launch_library_api.dart';

part 'spacecraft_stage.g.dart';

@JsonSerializable()
class SpacecraftStage extends Equatable {
  const SpacecraftStage({
    required this.url,
    required this.spacecraft,
    required this.landing,
    this.missionEnd,
    this.destination,
  });

  factory SpacecraftStage.fromJson(Map<String, dynamic> json) =>
      _$SpacecraftStageFromJson(json);

  final String? url;
  final Spacecraft? spacecraft;
  final Landing? landing;
  final DateTime? missionEnd;
  final String? destination;

  Map<String, dynamic> toJson() => _$SpacecraftStageToJson(this);

  @override
  List<Object?> get props => [
        url,
        spacecraft,
        landing,
        missionEnd,
        destination,
      ];
}
