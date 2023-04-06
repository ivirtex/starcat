// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';

// Project imports:
import 'package:falcon/constants.dart';
import 'package:falcon/news/news.dart';

class ArticleList extends StatelessWidget {
  const ArticleList({
    required this.articles,
    super.key,
  });

  final List<Article> articles;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: articles.length,
      itemBuilder: (context, index) {
        final article = articles[index];
        final isSaved =
            context.read<NewsBloc>().state.news.savedArticles.contains(article);

        return ArticleCard(
          article: article,
          isSaved: isSaved,
        )
            .animate(delay: 300.ms * index)
            .fade(duration: kListAnimationFadeDuration, delay: 100.ms);
      },
    );
  }
}
