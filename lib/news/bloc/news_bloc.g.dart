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
      news: json['news'] == null
          ? const News()
          : News.fromJson(json['news'] as Map<String, dynamic>),
      currentOffsetOfArticles: json['currentOffsetOfArticles'] as int? ?? 0,
    );

Map<String, dynamic> _$NewsStateToJson(NewsState instance) => <String, dynamic>{
      'status': _$NewsStatusEnumMap[instance.status]!,
      'selection': _$SelectedNewsEnumMap[instance.selection]!,
      'news': instance.news,
      'currentOffsetOfArticles': instance.currentOffsetOfArticles,
    };

const _$NewsStatusEnumMap = {
  NewsStatus.initial: 'initial',
  NewsStatus.loading: 'loading',
  NewsStatus.success: 'success',
  NewsStatus.failure: 'failure',
};

const _$SelectedNewsEnumMap = {
  SelectedNews.latest: 'latest',
  SelectedNews.featured: 'featured',
  SelectedNews.saved: 'saved',
};
