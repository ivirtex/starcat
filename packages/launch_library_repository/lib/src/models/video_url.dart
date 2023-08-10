// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_api/api.dart' as api;

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

  factory VideoURL.fromApi(api.VidURL vidURL) => VideoURL(
        url: vidURL.url,
        priority: vidURL.priority,
        title: vidURL.title,
        description: vidURL.description,
        featureImage: vidURL.featureImage,
      );

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
