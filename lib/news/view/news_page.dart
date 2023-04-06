// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:falcon/constants.dart';
import 'package:falcon/news/news.dart';
import 'package:falcon/shared/shared.dart';

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
            SliverToBoxAdapter(
              child: Body(),
            )
          ],
        ),
      ),
      material: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('News'),
        ),
        body: const Body(),
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
    return Padding(
      padding: kBodyPadding,
      // TODO(ivirtex): convert to slivers
      child: ListView(
        children: [
          const SizedBox(height: 10),
          const ArticleSelection(),
          const SizedBox(height: 10),
          BlocBuilder<NewsBloc, NewsState>(
            builder: (context, state) {
              switch (state.selection) {
                case SelectedNews.latest:
                  if (state.news.latestArticles.isEmpty) {
                    return _buildEmpty(
                      context,
                      'No articles found',
                    );
                  }

                  return ArticleList(articles: state.news.latestArticles);
                case SelectedNews.popular:
                  if (state.news.popularArticles.isEmpty) {
                    return _buildEmpty(
                      context,
                      'No popular articles today',
                    );
                  }

                  return ArticleList(articles: state.news.popularArticles);
                case SelectedNews.saved:
                  if (state.news.savedArticles.isEmpty) {
                    return _buildEmpty(
                      context,
                      'No saved articles',
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

  Widget _buildEmpty(BuildContext context, String message) => Center(
        child: Text(
          message,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Theme.of(context).colorScheme.outline,
              ),
        ),
      );
}
