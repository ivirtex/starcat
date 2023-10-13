// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

part 'tracked_launch.g.dart';

@JsonSerializable()
class TrackedLaunch extends Equatable {
  const TrackedLaunch({
    required this.launchData,
    required this.activityId,
  });

  factory TrackedLaunch.fromJson(Map<String, dynamic> json) =>
      _$TrackedLaunchFromJson(json);

  final Launch launchData;
  final String activityId;

  Map<String, dynamic> toJson() => _$TrackedLaunchToJson(this);

  @override
  List<Object?> get props => [launchData, activityId];
}
