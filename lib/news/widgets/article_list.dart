// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/news/news.dart';

class ArticleList extends StatelessWidget {
  const ArticleList({
    required this.articles,
    super.key,
  });

  final List<Article> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      separatorBuilder: (context, index) =>
          const SizedBox(height: kListSpacing),
      itemCount: articles.length,
      itemBuilder: (context, index) {
        final article = articles[index];
        final isSaved =
            context.read<NewsBloc>().state.news.savedArticles.contains(article);

        return ArticleCard(
          article: article,
          isSaved: isSaved,
        );
      },
    );
  }
}
