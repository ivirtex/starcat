// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_api/api.dart' as api;

// Project imports:
import 'package:launch_library_repository/launch_library_repository.dart';

part 'program.g.dart';

@JsonSerializable()
class Program extends Equatable {
  const Program({
    required this.agencies,
    required this.missionPatches,
    this.url,
    this.name,
    this.description,
    this.imageUrl,
    this.startDate,
    this.endDate,
    this.infoUrl,
    this.wikiUrl,
  });

  factory Program.fromJson(Map<String, dynamic> json) =>
      _$ProgramFromJson(json);

  factory Program.fromApi(api.Program apiProgram) {
    return Program(
      url: apiProgram.url,
      name: apiProgram.name,
      description: apiProgram.description,
      agencies:
          apiProgram.agencies.map(LaunchServiceProvider.fromApiMini).toList(),
      imageUrl: apiProgram.imageUrl,
      startDate: apiProgram.startDate,
      endDate: apiProgram.endDate,
      infoUrl: apiProgram.infoUrl,
      wikiUrl: apiProgram.wikiUrl,
      missionPatches:
          apiProgram.missionPatches.map(MissionPatch.fromApi).toList(),
    );
  }

  final String? url;
  final String? name;
  final String? description;
  final List<LaunchServiceProvider> agencies;
  final String? imageUrl;
  final DateTime? startDate;
  final DateTime? endDate;
  final String? infoUrl;
  final String? wikiUrl;
  final List<MissionPatch> missionPatches;

  Map<String, dynamic> toJson() => _$ProgramToJson(this);

  @override
  List<Object?> get props => [
        url,
        name,
        description,
        agencies,
        imageUrl,
        startDate,
        endDate,
        infoUrl,
        wikiUrl,
        missionPatches,
      ];
}
