import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_api/api.dart' as api;

part 'orbiter_status.g.dart';

@JsonSerializable()
class OrbiterStatus extends Equatable {
  const OrbiterStatus({
    required this.id,
    required this.name,
  });

  factory OrbiterStatus.fromJson(Map<String, dynamic> json) =>
      _$OrbiterStatusFromJson(json);

  factory OrbiterStatus.fromApi(api.OrbiterStatus data) {
    return OrbiterStatus(
      id: data.id,
      name: data.name,
    );
  }

  final int id;
  final String name;

  Map<String, dynamic> toJson() => _$OrbiterStatusToJson(this);

  @override
  List<Object?> get props => [
        id,
        name,
      ];
}
