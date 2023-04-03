// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';

// Project imports:
import 'package:falcon/news/news.dart';
import 'package:falcon/shared/shared.dart';

class Articles extends StatelessWidget {
  const Articles({
    required this.articles,
    super.key,
  });

  final List<Article>? articles;

  @override
  Widget build(BuildContext context) {
    if (articles == null || articles!.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Section(text: 'News'),
            const Spacer(),
            FilledTonalIconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.filter_alt_rounded,
              ),
            )
          ],
        ),
        const SizedBox(height: 10),
        ListView.builder(
          itemCount: 5,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return ArticleCard(article: articles![index]);
          },
        ),
      ],
    );
  }
}
