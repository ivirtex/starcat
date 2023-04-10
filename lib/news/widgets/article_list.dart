// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';

// Project imports:
import 'package:starcat/news/news.dart';

class ArticleList extends StatelessWidget {
  const ArticleList({
    required this.articles,
    super.key,
  });

  final List<Article> articles;

  @override
  Widget build(BuildContext context) {
    // TODO(ivirtex): use SliverAnimatedList
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          final article = articles[index];
          final isSaved = context
              .read<NewsBloc>()
              .state
              .news
              .savedArticles
              .contains(article);

          return ArticleCard(
            article: article,
            isSaved: isSaved,
          );
        },
      ),
    );
  }
}
