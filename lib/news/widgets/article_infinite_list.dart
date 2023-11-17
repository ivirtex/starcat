// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';
import 'package:very_good_infinite_list/very_good_infinite_list.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/news/news.dart';

class ArticleInfiniteList extends StatelessWidget {
  const ArticleInfiniteList({
    required this.articles,
    super.key,
  });

  final List<Article> articles;

  @override
  Widget build(BuildContext context) {
    return SliverInfiniteList(
      onFetchData: () {
        context.read<NewsBloc>().add(const NewsNewPageRequested());
      },
      debounceDuration: const Duration(milliseconds: 500),
      isLoading: context.read<NewsBloc>().state.status == NewsStatus.loading,
      hasError: context.read<NewsBloc>().state.status == NewsStatus.failure,
      loadingBuilder: (context) => const Padding(
        padding: EdgeInsets.symmetric(vertical: kSectionSpacing),
        child: Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      ),
      errorBuilder: (context) => const Padding(
        padding: EdgeInsets.symmetric(vertical: kSectionSpacing),
        child: Center(
          child: Text('Something went wrong'),
        ),
      ),
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
