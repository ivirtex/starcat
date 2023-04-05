// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'status.g.dart';

@JsonSerializable()
class Status extends Equatable {
  const Status({
    this.name,
    this.abbrev,
    this.description,
  });

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);

  final String? name;
  final String? abbrev;
  final String? description;

  Map<String, dynamic> toJson() => _$StatusToJson(this);

  @override
  List<Object?> get props => [
        name,
        abbrev,
        description,
      ];
}
