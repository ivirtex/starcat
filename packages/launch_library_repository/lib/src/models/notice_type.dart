import 'package:equatable/equatable.dart';
import 'package:launch_library_api/api.dart' as api;
import 'package:json_annotation/json_annotation.dart';

part 'notice_type.g.dart';

@JsonSerializable()
class NoticeType extends Equatable {
  const NoticeType({
    required this.id,
    required this.name,
  });

  factory NoticeType.fromJson(Map<String, dynamic> json) =>
      _$NoticeTypeFromJson(json);

  factory NoticeType.fromApi(api.NoticeType data) {
    return NoticeType(
      id: data.id,
      name: data.name,
    );
  }

  final int id;
  final String name;

  Map<String, dynamic> toJson() => _$NoticeTypeToJson(this);

  @override
  List<Object?> get props => [
        id,
        name,
      ];
}
