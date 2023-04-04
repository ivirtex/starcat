// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';
import 'package:falcon/news/news.dart';

class ArticleList extends StatelessWidget {
  const ArticleList({super.key});

  @override
  Widget build(BuildContext context) {
    final articles = context
        .select<ExploreCubit, News?>((value) => value.state.news)
        ?.articles;

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: articles?.length ?? 0,
      itemBuilder: (context, index) {
        final article = articles![index];

        return ArticleCard(article: article);
      },
    );
  }
}
