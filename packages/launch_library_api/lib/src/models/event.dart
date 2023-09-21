// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'package:launch_library_api/launch_library_api.dart';

part 'event.g.dart';

@JsonSerializable()
class Event extends Equatable {
  const Event({
    required this.url,
    required this.slug,
    required this.name,
    required this.type,
    this.datePrecision,
    this.updates = const [],
    this.description,
    this.webcastLive,
    this.location,
    this.newsUrl,
    this.videoUrl,
    this.featureImage,
    this.date,
    this.launches = const [],
    this.program = const [],
  });

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);

  final String? url;
  final String? slug;
  final String? name;
  final List<Update> updates;
  final EventType? type;
  final String? description;
  final bool? webcastLive;
  final String? location;
  final String? newsUrl;
  final String? videoUrl;
  final String? featureImage;
  final DateTime? date;
  final NetPrecision? datePrecision;
  final List<Launch> launches;
  final List<Program> program;

  Map<String, dynamic> toJson() => _$EventToJson(this);

  @override
  List<Object?> get props => [
        url,
        slug,
        name,
        updates,
        type,
        description,
        webcastLive,
        location,
        newsUrl,
        videoUrl,
        featureImage,
        date,
        datePrecision,
        launches,
        program,
      ];
}
