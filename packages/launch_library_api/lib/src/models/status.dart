// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'status.g.dart';

@JsonSerializable()
class Status extends Equatable {
  const Status({
    required this.id,
    this.name,
    this.abbrev,
    this.description,
  });

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);

  final int id;
  final String? name;
  final String? abbrev;
  final String? description;

  @override
  List<Object?> get props => [
        id,
        name,
        abbrev,
        description,
      ];
}
