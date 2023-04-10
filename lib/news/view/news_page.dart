// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sliver_tools/sliver_tools.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/news/news.dart';
import 'package:starcat/shared/shared.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PlatformWidget(
      cupertino: (_) => const CupertinoPageScaffold(
        child: CustomScrollView(
          slivers: [
            CupertinoSliverNavigationBar(
              stretch: true,
              border: null,
              largeTitle: Text('News'),
            ),
            Body(),
          ],
        ),
      ),
      material: (_) => const Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              title: Text('News'),
            ),
            Body(),
          ],
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: kBodyPadding,
      sliver: MultiSliver(
        children: [
          const SliverList(
            delegate: SliverChildListDelegate.fixed(
              [
                SizedBox(height: 10),
                ArticleSelection(),
                SizedBox(height: 10),
              ],
            ),
          ),
          BlocBuilder<NewsBloc, NewsState>(
            builder: (context, state) {
              switch (state.selection) {
                case SelectedNews.latest:
                  if (state.news.latestArticles.isEmpty) {
                    return _buildEmpty(
                      context,
                      kNoLatestArticlesText,
                    );
                  }

                  return ArticleList(articles: state.news.latestArticles);
                case SelectedNews.popular:
                  if (state.news.popularArticles.isEmpty) {
                    return _buildEmpty(
                      context,
                      kNoPopularArticlesText,
                    );
                  }

                  return ArticleList(articles: state.news.popularArticles);
                case SelectedNews.saved:
                  if (state.news.savedArticles.isEmpty) {
                    return _buildEmpty(
                      context,
                      kNoSavedArticlesText,
                    );
                  }

                  return ArticleList(articles: state.news.savedArticles);
              }
            },
          ),
        ],
      ),
    );
  }

  Widget _buildEmpty(BuildContext context, String message) =>
      SliverToBoxAdapter(
        child: Center(
          child: Text(
            message,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Theme.of(context).colorScheme.outline,
                ),
          ),
        ),
      );
}
