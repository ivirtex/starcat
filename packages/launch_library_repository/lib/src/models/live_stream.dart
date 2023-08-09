import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_api/api.dart' as api;

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

  factory LiveStream.fromApi(api.LiveStream data) {
    return LiveStream(
      title: data.title,
      description: data.description,
      image: data.image,
      url: data.url,
    );
  }

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
