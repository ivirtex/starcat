// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

part 'launch_cached.g.dart';

@JsonSerializable()
class LaunchCached extends Equatable {
  const LaunchCached({
    required this.launch,
    required this.expirationDate,
  });

  factory LaunchCached.fromJson(Map<String, dynamic> json) =>
      _$LaunchCachedFromJson(json);

  final Launch launch;
  final DateTime expirationDate;

  Map<String, dynamic> toJson() => _$LaunchCachedToJson(this);

  @override
  List<Object?> get props => [launch, expirationDate];
}
