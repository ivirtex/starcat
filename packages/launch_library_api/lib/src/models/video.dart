import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'video.g.dart';

@JsonSerializable()
class Video extends Equatable {
  const Video({
    required this.priority,
    required this.title,
    required this.url,
    this.source,
    this.publisher,
    this.description,
    this.featureImage,
  });

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);

  final int priority;
  final String title;
  final String url;
  final String? source;
  final String? publisher;
  final String? description;
  final String? featureImage;

  Map<String, dynamic> toJson() => _$VideoToJson(this);

  @override
  List<Object?> get props => [
        priority,
        source,
        publisher,
        title,
        description,
        featureImage,
        url,
      ];
}
