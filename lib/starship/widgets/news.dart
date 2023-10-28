// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/news/news.dart';
import 'package:starcat/shared/shared.dart';

class News extends StatelessWidget {
  const News({
    required this.news,
    super.key,
  });

  final List<Article> news;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Section(
          icon: Icon(Icons.newspaper_rounded),
          child: Text('Starship News'),
        ),
        SizedBox(
          height: 320,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: news.length,
            itemBuilder: (context, index) {
              final article = news[index];

              return SizedBox(
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.only(right: kListSpacing),
                  child: ArticleCard.preview(
                    expandVertically: true,
                    article: article,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
