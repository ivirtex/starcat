// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'package:spaceflight_news_api/src/models/models.dart';

part 'articles.g.dart';

@JsonSerializable()
class Articles extends Equatable {
  const Articles({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  factory Articles.fromJson(Map<String, dynamic> json) =>
      _$ArticlesFromJson(json);

  final int count;
  final String? next;
  final String? previous;
  final List<Article> results;

  @override
  List<Object?> get props => [
        count,
        next,
        previous,
        results,
      ];
}
