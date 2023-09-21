import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'notice_type.g.dart';

@JsonSerializable()
class NoticeType extends Equatable {
  const NoticeType({
    this.name,
  });

  factory NoticeType.fromJson(Map<String, dynamic> json) =>
      _$NoticeTypeFromJson(json);

  final String? name;

  Map<String, dynamic> toJson() => _$NoticeTypeToJson(this);

  @override
  List<Object?> get props => [
        name,
      ];
}
