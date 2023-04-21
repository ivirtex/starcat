// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sliver_tools/sliver_tools.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/news/news.dart';
import 'package:starcat/shared/shared.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const NewsView();
  }
}

class NewsView extends StatefulWidget {
  const NewsView({super.key});

  @override
  State<NewsView> createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  final scrollController = ScrollController();

  bool shouldShowFab = false;

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if (scrollController.offset > 0) {
        setState(() => shouldShowFab = true);
      } else {
        setState(() => shouldShowFab = false);
      }
    });
  }

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
      material: (_) => Scaffold(
        floatingActionButton: shouldShowFab
            ? FloatingActionButton(
                onPressed: () => scrollController.animateTo(
                  0,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInOut,
                ),
                child: const Icon(Icons.arrow_upward_rounded),
              )
            : null,
        body: CustomScrollView(
          controller: scrollController,
          slivers: [
            SliverAppBar(
              pinned: true,
              actions: [
                IconButton(
                  icon: const Icon(Icons.settings_rounded),
                  onPressed: () => context.go('/settings'),
                ),
              ],
              title: const Text('News'),
            ),
            const Body(),
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
          // TODO(ivirtex): add a search bar
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

                  return ArticleList(
                    articles: state.news.latestArticles,
                    key: const ValueKey('latest'),
                  );
                case SelectedNews.popular:
                  if (state.news.popularArticles.isEmpty) {
                    return _buildEmpty(
                      context,
                      kNoPopularArticlesText,
                    );
                  }

                  return ArticleList(
                    articles: state.news.popularArticles,
                    key: const ValueKey('popular'),
                  );
                case SelectedNews.saved:
                  if (state.news.savedArticles.isEmpty) {
                    return _buildEmpty(
                      context,
                      kNoSavedArticlesText,
                    );
                  }

                  return ArticleList(
                    articles: state.news.savedArticles,
                    key: const ValueKey('saved'),
                  );
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
