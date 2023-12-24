// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsState _$NewsStateFromJson(Map<String, dynamic> json) => NewsState(
      status: $enumDecodeNullable(_$NewsStatusEnumMap, json['status']) ??
          NewsStatus.initial,
      selection:
          $enumDecodeNullable(_$SelectedNewsEnumMap, json['selection']) ??
              SelectedNews.latest,
      allLatestArticles: (json['allLatestArticles'] as List<dynamic>?)
              ?.map((e) => Article.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      news: json['news'] == null
          ? const News()
          : News.fromJson(json['news'] as Map<String, dynamic>),
      currentOffsetOfArticles: json['currentOffsetOfArticles'] as int? ?? 0,
      query: json['query'] as String? ?? '',
    );

Map<String, dynamic> _$NewsStateToJson(NewsState instance) => <String, dynamic>{
      'status': _$NewsStatusEnumMap[instance.status]!,
      'selection': _$SelectedNewsEnumMap[instance.selection]!,
      'allLatestArticles': instance.allLatestArticles,
      'news': instance.news,
      'currentOffsetOfArticles': instance.currentOffsetOfArticles,
      'query': instance.query,
    };

const _$NewsStatusEnumMap = {
  NewsStatus.initial: 'initial',
  NewsStatus.loading: 'loading',
  NewsStatus.success: 'success',
  NewsStatus.failure: 'failure',
  NewsStatus.noResults: 'noResults',
};

const _$SelectedNewsEnumMap = {
  SelectedNews.latest: 'latest',
  SelectedNews.featured: 'featured',
  SelectedNews.saved: 'saved',
};
