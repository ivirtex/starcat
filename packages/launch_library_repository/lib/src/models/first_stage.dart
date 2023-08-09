// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_api/api.dart' as api;

// Project imports:
import 'package:launch_library_repository/launch_library_repository.dart';

part 'first_stage.g.dart';

@JsonSerializable()
class FirstStage extends Equatable {
  const FirstStage({
    required this.id,
    required this.type,
    required this.launcher,
    this.landing,
    this.reused,
    this.launcherFlightNumber,
    this.previousFlightDate,
    this.turnAroundTimeDays,
    this.previousFlight,
  });

  factory FirstStage.fromJson(Map<String, dynamic> json) =>
      _$FirstStageFromJson(json);

  factory FirstStage.fromApi(api.FirstStage apiFirstStage) {
    return FirstStage(
      id: apiFirstStage.id,
      type: apiFirstStage.type,
      launcher: Launcher.fromApiDetailed(apiFirstStage.launcher),
      landing: apiFirstStage.landing != null
          ? Landing.fromApi(apiFirstStage.landing!)
          : null,
      reused: apiFirstStage.reused,
      launcherFlightNumber: apiFirstStage.launcherFlightNumber,
      previousFlightDate: apiFirstStage.previousFlightDate,
      turnAroundTimeDays: apiFirstStage.turnAroundTimeDays,
      previousFlight: apiFirstStage.previousFlight != null
          ? Launch.fromApiMini(apiFirstStage.previousFlight!)
          : null,
    );
  }

  final int id;
  final String type;
  final bool? reused;
  final int? launcherFlightNumber;
  final Launcher launcher;
  final Landing? landing;
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
