import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'launch_info.g.dart';

@JsonSerializable()
class LaunchInfo extends Equatable {
  const LaunchInfo({
    required this.launchId,
    required this.provider,
  });

  factory LaunchInfo.fromJson(Map<String, dynamic> json) =>
      _$LaunchInfoFromJson(json);

  final String launchId;
  final String provider;

  @override
  List<Object?> get props => [
        launchId,
        provider,
      ];
}
