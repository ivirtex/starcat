// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'net_precision.g.dart';

@JsonSerializable()
class NetPrecision extends Equatable {
  const NetPrecision({
    this.name,
    this.abbrev,
    this.description,
  });

  factory NetPrecision.fromJson(Map<String, dynamic> json) =>
      _$NetPrecisionFromJson(json);

  final String? name;
  final String? abbrev;
  final String? description;

  Map<String, dynamic> toJson() => _$NetPrecisionToJson(this);

  @override
  List<Object?> get props => [
        name,
        abbrev,
        description,
      ];
}
