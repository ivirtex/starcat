import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:launch_library_api/api.dart' as api;

part 'event.g.dart';

@JsonSerializable()
class Event extends Equatable {
  const Event({
    required this.id,
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

  factory Event.fromApi(api.Events data) {
    return Event(
      id: data.id,
      url: data.url,
      slug: data.slug,
      name: data.name,
      updates: data.updates.map(Update.fromApi).toList(),
      type: EventType.fromApi(data.type),
      description: data.description,
      webcastLive: data.webcastLive,
      location: data.location,
      newsUrl: data.newsUrl,
      videoUrl: data.videoUrl,
      featureImage: data.featureImage,
      date: data.date,
      datePrecision: data.datePrecision != null
          ? NetPrecision.fromApi(data.datePrecision!)
          : null,
      launches: data.launches.map(Launch.fromApi).toList(),
      program: data.program.map(Program.fromApi).toList(),
    );
  }

  final int id;
  final String url;
  final String slug;
  final String name;
  final List<Update> updates;
  final EventType type;
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
        id,
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
