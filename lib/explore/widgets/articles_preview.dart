// Dart imports:
import 'dart:math';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';
import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';

// Project imports:
import 'package:falcon/news/news.dart';
import 'package:falcon/shared/shared.dart';

class ArticlesPreview extends StatelessWidget {
  const ArticlesPreview({
    required this.articles,
    super.key,
  });

  final List<Article> articles;

  @override
  Widget build(BuildContext context) {
    if (articles.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Section(
          icon: const Icon(Icons.newspaper_rounded),
          child: Row(
            children: [
              const Text('Latest News'),
              const Spacer(),
              FilledButton.tonal(
                onPressed: () => context.go('/news'),
                child: const Text(
                  'View more',
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 330,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: min(5, articles.length),
            itemBuilder: (context, index) {
              return SizedBox(
                width: 300,
                child: ArticleCard(
                  expandVertically: true,
                  previewMode: true,
                  article: articles[index],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
