// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'info_url.g.dart';

@JsonSerializable()
class InfoURL extends Equatable {
  const InfoURL({
    required this.url,
    this.priority,
    this.title,
    this.description,
    this.featureImage,
  });

  factory InfoURL.fromJson(Map<String, dynamic> json) =>
      _$InfoURLFromJson(json);

  final int? priority;
  final String? title;
  final String? description;
  final String? featureImage;
  final String url;

  Map<String, dynamic> toJson() => _$InfoURLToJson(this);

  @override
  List<Object?> get props => [
        priority,
        title,
        description,
        featureImage,
        url,
      ];
}
