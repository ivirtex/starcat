// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:intl/intl.dart';
import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';
import 'package:url_launcher/url_launcher_string.dart';

// Project imports:
import 'package:falcon/constants.dart';
import 'package:falcon/explore/explore.dart';
import 'package:falcon/helpers/helpers.dart';
import 'package:falcon/launch_details/launch_details.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({
    super.key,
    required this.article,
  });

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: ExploreCard(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(kBorderRadius),
          ),
        ),
        title: Text(article.newsSite),
        trailing: Text(
          formatDate(
            article.publishedAt,
            dateFormat: DateFormat.yMMMd(),
          ),
        ),
        slideOutPadding: EdgeInsets.zero,
        slideOut: ClipRRect(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(kBorderRadius),
          ),
          child: MissionImage(imageUrl: article.imageUrl),
        ),
        onTap: () => launchUrlString(
          article.url,
          mode: LaunchMode.externalApplication,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              article.title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 10),
            Text(
              article.summary,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
