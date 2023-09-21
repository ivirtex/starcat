import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'orbiter_status.g.dart';

@JsonSerializable()
class OrbiterStatus extends Equatable {
  const OrbiterStatus({
    this.name,
  });

  factory OrbiterStatus.fromJson(Map<String, dynamic> json) =>
      _$OrbiterStatusFromJson(json);

  final String? name;

  Map<String, dynamic> toJson() => _$OrbiterStatusToJson(this);

  @override
  List<Object?> get props => [
        name,
      ];
}
