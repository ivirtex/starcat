// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'configuration.g.dart';

@JsonSerializable()
class Configuration extends Equatable {
  const Configuration({
    required this.url,
    required this.name,
    required this.family,
    required this.fullName,
    required this.variant,
  });

  factory Configuration.fromJson(Map<String, dynamic> json) =>
      _$ConfigurationFromJson(json);

  final String url;
  final String name;
  final String family;
  final String fullName;
  final String variant;

  @override
  List<Object?> get props => [
        url,
        name,
        family,
        fullName,
        variant,
      ];
}
