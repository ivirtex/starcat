import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_api/api.dart' as api;
import 'package:launch_library_repository/launch_library_repository.dart';

part 'orbiter.g.dart';

@JsonSerializable()
class Orbiter extends Equatable {
  const Orbiter({
    required this.id,
    required this.url,
    required this.name,
    required this.serialNumber,
    required this.isPlaceholder,
    required this.inSpace,
    required this.timeInSpace,
    required this.timeDocked,
    required this.status,
    required this.description,
    required this.spacecraftConfig,
    this.flightsCount,
    this.missionEndsCount,
  });

  factory Orbiter.fromJson(Map<String, dynamic> json) =>
      _$OrbiterFromJson(json);

  factory Orbiter.fromApi(api.Orbiter data) {
    return Orbiter(
      id: data.id,
      url: data.url,
      name: data.name,
      serialNumber: data.serialNumber ?? 'N/A',
      isPlaceholder: data.isPlaceholder,
      inSpace: data.inSpace,
      timeInSpace: data.timeInSpace,
      timeDocked: data.timeDocked,
      flightsCount: data.flightsCount,
      missionEndsCount: data.missionEndsCount,
      status: OrbiterStatus.fromApi(data.status),
      description: data.description,
      spacecraftConfig: OrbiterSpacecraftConfig.fromApi(data.spacecraftConfig),
    );
  }

  final int id;
  final String url;
  final String name;
  final String serialNumber;
  final bool isPlaceholder;
  final bool inSpace;
  final String timeInSpace;
  final String timeDocked;
  final int? flightsCount;
  final int? missionEndsCount;
  final OrbiterStatus status;
  final String description;
  final OrbiterSpacecraftConfig spacecraftConfig;

  Map<String, dynamic> toJson() => _$OrbiterToJson(this);

  @override
  List<Object?> get props => [
        id,
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
