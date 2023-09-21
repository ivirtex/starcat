// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'package:launch_library_api/launch_library_api.dart';

part 'rocket.g.dart';

@JsonSerializable()
class Rocket extends Equatable {
  const Rocket({
    this.configuration,
    this.launcherStage,
    this.spacecraftStage,
  });

  factory Rocket.fromJson(Map<String, dynamic> json) => _$RocketFromJson(json);

  final Configuration? configuration;
  final List<FirstStage>? launcherStage;
  final SpacecraftStage? spacecraftStage;

  Map<String, dynamic> toJson() => _$RocketToJson(this);

  @override
  List<Object?> get props => [
        configuration,
      ];
}
