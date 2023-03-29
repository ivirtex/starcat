// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'package:spaceflight_news_repository/src/models/models.dart';

part 'news.g.dart';

@JsonSerializable()
class News extends Equatable {
  const News({
    required this.articles,
  });

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);

  final List<Article> articles;

  @override
  List<Object?> get props => [articles];
}
