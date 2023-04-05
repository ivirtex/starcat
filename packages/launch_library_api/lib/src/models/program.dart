// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'package:launch_library_api/launch_library_api.dart';

part 'program.g.dart';

@JsonSerializable()
class Program extends Equatable {
  const Program({
    required this.id,
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

  final int id;
  final String? url;
  final String? name;
  final String? description;
  final List<LaunchServiceProvider> agencies;
  final String? imageUrl;
  final String? startDate;
  final String? endDate;
  final String? infoUrl;
  final String? wikiUrl;
  final List<MissionPatch> missionPatches;

  @override
  List<Object?> get props => [
        id,
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
