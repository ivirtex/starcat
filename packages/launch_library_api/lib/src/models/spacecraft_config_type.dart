import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'spacecraft_config_type.g.dart';

@JsonSerializable()
class SpacecraftConfigType extends Equatable {
  const SpacecraftConfigType({
    this.name,
  });

  factory SpacecraftConfigType.fromJson(Map<String, dynamic> json) =>
      _$SpacecraftConfigTypeFromJson(json);

  final String? name;

  Map<String, dynamic> toJson() => _$SpacecraftConfigTypeToJson(this);

  @override
  List<Object?> get props => [
        name,
      ];
}
