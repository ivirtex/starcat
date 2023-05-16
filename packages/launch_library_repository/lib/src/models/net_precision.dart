// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_api/api.dart' as api;

part 'net_precision.g.dart';

@JsonSerializable()
class NetPrecision extends Equatable {
  const NetPrecision({
    required this.id,
    this.name,
    this.abbrev,
    this.description,
  });

  factory NetPrecision.fromJson(Map<String, dynamic> json) =>
      _$NetPrecisionFromJson(json);

  factory NetPrecision.fromApi(api.NetPrecision apiNetModel) {
    return NetPrecision(
      id: apiNetModel.id,
      name: apiNetModel.name,
      abbrev: apiNetModel.abbrev,
      description: apiNetModel.description,
    );
  }

  final int id;
  final String? name;
  final String? abbrev;
  final String? description;

  Map<String, dynamic> toJson() => _$NetPrecisionToJson(this);

  @override
  List<Object?> get props => [
        id,
        name,
        abbrev,
        description,
      ];
}
