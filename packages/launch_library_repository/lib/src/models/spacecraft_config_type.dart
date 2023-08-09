import 'package:equatable/equatable.dart';
import 'package:launch_library_api/api.dart' as api;
import 'package:json_annotation/json_annotation.dart';

part 'spacecraft_config_type.g.dart';

@JsonSerializable()
class SpacecraftConfigType extends Equatable {
  const SpacecraftConfigType({
    required this.id,
    required this.name,
  });

  factory SpacecraftConfigType.fromJson(Map<String, dynamic> json) =>
      _$SpacecraftConfigTypeFromJson(json);

  factory SpacecraftConfigType.fromApi(api.SpacecraftConfigType data) {
    return SpacecraftConfigType(
      id: data.id,
      name: data.name,
    );
  }

  final int id;
  final String name;

  Map<String, dynamic> toJson() => _$SpacecraftConfigTypeToJson(this);

  @override
  List<Object?> get props => [
        id,
        name,
      ];
}
