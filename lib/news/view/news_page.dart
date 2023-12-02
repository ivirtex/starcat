// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

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
  String? searchQuery;

  @override
  void initState() {
    super.initState();

    context.read<NewsBloc>().add(const NewsOffsetReset());

    scrollController.addListener(() {
      if (scrollController.offset > 0) {
        if (!shouldShowFab) {
          setState(() => shouldShowFab = true);
        }
      } else {
        if (shouldShowFab) {
          setState(() => shouldShowFab = false);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: RefreshIndicator(
        onRefresh: () async {
          setState(() {
            searchQuery = null;
          });

          context.read<NewsBloc>().add(const NewsFetchRequested());
        },
        edgeOffset: kRefreshEdgeOffset,
        child: CustomScrollView(
          controller: scrollController,
          slivers: [
            SliverAppBar(
              pinned: true,
              title: const Text('News'),
              actions: [
                const StatusIndicator(),
                ActionButton(
                  icon: const Icon(Icons.search_rounded),
                  label: searchQuery,
                  onPressed: _onSearchPressed,
                ),
              ],
            ),
            const _Body(),
          ],
        ),
      ),
    );
  }

  Future<void> _onSearchPressed() async {
    final newsBloc = context.read<NewsBloc>();

    final query = await showSearch(
      context: context,
      useRootNavigator: true,
      delegate: NewsSearchDelegate(),
    );

    if (query != null) {
      setState(() => searchQuery = query);
      newsBloc.add(NewsFetchRequested(query: query));
    }
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: kBodyPadding,
      sliver: SliverMainAxisGroup(
        slivers: [
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: kListSpacing),
              child: ArticleSelection(),
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

                  return ArticleInfiniteList(
                    articles: state.news.latestArticles,
                    key: const ValueKey('latest'),
                  );
                case SelectedNews.featured:
                  if (state.news.popularArticles.isEmpty) {
                    return _buildEmpty(
                      context,
                      kNoFeaturedArticlesText,
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
      SliverFillRemaining(
        hasScrollBody: false,
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
