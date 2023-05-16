// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'video_url.g.dart';

@JsonSerializable()
class VideoURL extends Equatable {
  const VideoURL({
    required this.url,
    this.priority,
    this.title,
    this.description,
    this.featureImage,
  });

  factory VideoURL.fromJson(Map<String, dynamic> json) =>
      _$VideoURLFromJson(json);

  final int? priority;
  final String? title;
  final String? description;
  final String? featureImage;
  final String url;

  Map<String, dynamic> toJson() => _$VideoURLToJson(this);

  @override
  List<Object?> get props => [
        priority,
        title,
        description,
        featureImage,
        url,
      ];
}
