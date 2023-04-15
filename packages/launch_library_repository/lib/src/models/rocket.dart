// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'package:launch_library_repository/launch_library_repository.dart';

part 'rocket.g.dart';

@JsonSerializable()
class Rocket extends Equatable {
  const Rocket({
    required this.configuration,
  });

  factory Rocket.fromJson(Map<String, dynamic> json) => _$RocketFromJson(json);

  final Configuration configuration;

  Map<String, dynamic> toJson() => _$RocketToJson(this);

  @override
  List<Object?> get props => [
        configuration,
      ];
}
