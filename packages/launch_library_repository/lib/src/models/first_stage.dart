// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'package:launch_library_repository/launch_library_repository.dart';

part 'first_stage.g.dart';

@JsonSerializable()
class FirstStage extends Equatable {
  const FirstStage({
    required this.id,
    required this.type,
    required this.launcher,
    required this.landing,
    this.reused,
    this.launcherFlightNumber,
    this.previousFlightDate,
    this.turnAroundTimeDays,
    this.previousFlight,
  });

  factory FirstStage.fromJson(Map<String, dynamic> json) =>
      _$FirstStageFromJson(json);

  final int id;
  final String type;
  final bool? reused;
  final int? launcherFlightNumber;
  final Launcher launcher;
  final Landing landing;
  final DateTime? previousFlightDate;
  final int? turnAroundTimeDays;
  final Launch? previousFlight;

  Map<String, dynamic> toJson() => _$FirstStageToJson(this);

  @override
  List<Object?> get props => [
        id,
        type,
        reused,
        launcherFlightNumber,
        launcher,
        landing,
        previousFlightDate,
        turnAroundTimeDays,
        previousFlight,
      ];
}
