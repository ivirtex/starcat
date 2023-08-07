// Dart imports:
import 'dart:math';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/explore/explore.dart';
import 'package:starcat/news/news.dart';
import 'package:starcat/shared/shared.dart';

class ArticlesPreview extends StatelessWidget {
  const ArticlesPreview({
    required this.articles,
    super.key,
  });

  final List<Article> articles;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Section(
          icon: Icon(Icons.newspaper_rounded),
          child: Text('Latest News'),
        ),
        SizedBox(
          height: 320,
          child: articles.isNotEmpty
              ? ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: min(5, articles.length),
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 300,
                      child: Padding(
                        padding: const EdgeInsets.only(right: kListSpacing),
                        child: ArticleCard(
                          expandVertically: true,
                          previewMode: true,
                          article: articles[index],
                        ),
                      ),
                    );
                  },
                )
              : const ExploreCard(
                  expandVertically: true,
                  child: Center(
                    child: Text('No articles'),
                  ),
                ),
        ),
      ],
    );
  }
}
