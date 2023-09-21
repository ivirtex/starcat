// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update.g.dart';

@JsonSerializable()
class Update extends Equatable {
  const Update({
    this.comment,
    this.infoUrl,
    this.createdOn,
  });

  factory Update.fromJson(Map<String, dynamic> json) => _$UpdateFromJson(json);

  final String? comment;
  final String? infoUrl;
  final DateTime? createdOn;

  Map<String, dynamic> toJson() => _$UpdateToJson(this);

  @override
  List<Object?> get props => [
        comment,
        infoUrl,
        createdOn,
      ];
}
