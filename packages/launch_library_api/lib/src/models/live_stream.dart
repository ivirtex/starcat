import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'live_stream.g.dart';

@JsonSerializable()
class LiveStream extends Equatable {
  const LiveStream({
    this.title,
    this.description,
    this.image,
    this.url,
  });

  factory LiveStream.fromJson(Map<String, dynamic> json) =>
      _$LiveStreamFromJson(json);

  final String? title;
  final String? description;
  final String? image;
  final String? url;

  Map<String, dynamic> toJson() => _$LiveStreamToJson(this);

  @override
  List<Object?> get props => [
        title,
        description,
        image,
        url,
      ];
}
