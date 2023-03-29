// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

News _$NewsFromJson(Map<String, dynamic> json) => $checkedCreate(
      'News',
      json,
      ($checkedConvert) {
        final val = News(
          articles: $checkedConvert(
              'articles',
              (v) => (v as List<dynamic>)
                  .map((e) => Article.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$NewsToJson(News instance) => <String, dynamic>{
      'articles': instance.articles,
    };
