// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'launch_service_provider.g.dart';

@JsonSerializable()
class LaunchServiceProvider extends Equatable {
  const LaunchServiceProvider({
    this.url,
    this.name,
    this.type,
  });

  factory LaunchServiceProvider.fromJson(Map<String, dynamic> json) =>
      _$LaunchServiceProviderFromJson(json);

  final String? url;
  final String? name;
  final String? type;

  Map<String, dynamic> toJson() => _$LaunchServiceProviderToJson(this);

  @override
  List<Object?> get props => [
        url,
        name,
        type,
      ];
}
