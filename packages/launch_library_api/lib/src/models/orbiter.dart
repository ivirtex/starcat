import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_api/launch_library_api.dart';

part 'orbiter.g.dart';

@JsonSerializable()
class Orbiter extends Equatable {
  const Orbiter({
    this.url,
    this.name,
    this.serialNumber,
    this.isPlaceholder,
    this.inSpace,
    this.timeInSpace,
    this.timeDocked,
    this.status,
    this.description,
    this.spacecraftConfig,
    this.flightsCount,
    this.missionEndsCount,
  });

  factory Orbiter.fromJson(Map<String, dynamic> json) =>
      _$OrbiterFromJson(json);

  final String? url;
  final String? name;
  final String? serialNumber;
  final bool? isPlaceholder;
  final bool? inSpace;
  final String? timeInSpace;
  final String? timeDocked;
  final int? flightsCount;
  final int? missionEndsCount;
  final OrbiterStatus? status;
  final String? description;
  final OrbiterSpacecraftConfig? spacecraftConfig;

  Map<String, dynamic> toJson() => _$OrbiterToJson(this);

  @override
  List<Object?> get props => [
        url,
        name,
        serialNumber,
        isPlaceholder,
        inSpace,
        timeInSpace,
        timeDocked,
        flightsCount,
        missionEndsCount,
        status,
        description,
        spacecraftConfig,
      ];
}
