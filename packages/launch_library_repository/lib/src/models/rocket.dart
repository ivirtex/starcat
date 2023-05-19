// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_api/api.dart' as api;

// Project imports:
import 'package:launch_library_repository/launch_library_repository.dart';

part 'rocket.g.dart';

@JsonSerializable()
class Rocket extends Equatable {
  const Rocket({
    required this.id,
    required this.configuration,
    this.launcherStage,
    this.spacecraftStage,
  });

  factory Rocket.fromJson(Map<String, dynamic> json) => _$RocketFromJson(json);

  factory Rocket.fromApi(api.RocketSerializerCommon apiRocketModel) {
    return Rocket(
      id: apiRocketModel.id,
      configuration: Configuration.fromApi(apiRocketModel.configuration),
    );
  }

  factory Rocket.fromApiDetailed(api.RocketDetailed apiRocketModel) {
    return Rocket(
      id: apiRocketModel.id,
      configuration:
          Configuration.fromApiDetailed(apiRocketModel.configuration),
      launcherStage:
          apiRocketModel.launcherStage.map(FirstStage.fromApi).toList(),
      spacecraftStage: apiRocketModel.spacecraftStage != null
          ? SpacecraftStage.fromApi(apiRocketModel.spacecraftStage!)
          : null,
    );
  }

  final int id;
  final Configuration configuration;
  final List<FirstStage>? launcherStage;
  final SpacecraftStage? spacecraftStage;

  Map<String, dynamic> toJson() => _$RocketToJson(this);

  @override
  List<Object?> get props => [
        id,
        configuration,
        launcherStage,
        spacecraftStage,
      ];
}
