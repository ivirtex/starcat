// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';
import 'package:url_launcher/url_launcher_string.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/explore/explore.dart';
import 'package:starcat/helpers/helpers.dart';
import 'package:starcat/launches/launch_details.dart';
import 'package:starcat/news/bloc/news_bloc.dart';
import 'package:starcat/shared/shared.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({
    required this.article,
    this.isSaved = false,
    this.expandVertically = false,
    this.previewMode = false,
    super.key,
  });

  final Article article;
  final bool isSaved;
  final bool expandVertically;
  final bool previewMode;

  @override
  Widget build(BuildContext context) {
    if (previewMode) {
      return ExploreCard(
        expandVertically: expandVertically,
        title: Text(article.newsSite),
        trailing: Text(
          formatDate(
            article.publishedAt,
            dateFormat: DateFormat.yMMMd(),
          )!,
        ),
        padding: EdgeInsets.zero,
        onTap: () => launchUrlString(article.url),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 150,
              child: MissionImage(
                fit: BoxFit.cover,
                imageUrl: article.imageUrl,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    AutoSizeText(
                      article.title,
                      style: Theme.of(context).textTheme.titleMedium,
                      maxLines: 3,
                    ),
                    const SizedBox(height: kListSpacing),
                    Flexible(
                      child: AutoSizeText(
                        '${article.summary.split(' ').take(25).join(' ')}...',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return ExploreCard(
        expandVertically: expandVertically,
        title: Text(article.newsSite),
        trailing: Text(
          '${formatDate(
            article.publishedAt,
            dateFormat: DateFormat.Hm(),
          )} ${formatDate(
            article.publishedAt,
            dateFormat: DateFormat.yMMMd(),
          )}',
        ),
        padding: EdgeInsets.zero,
        onTap: () => launchUrlString(article.url),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MissionImage(
              fit: BoxFit.cover,
              imageUrl: article.imageUrl,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 10,
                        child: Text(
                          article.title,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                      const Spacer(),
                      IconToggleButton(
                        icon: const Icon(Icons.bookmark_outline_rounded),
                        selectedIcon: const Icon(Icons.bookmark_rounded),
                        getDefaultStyle: enabledFilledTonalButtonStyle,
                        selected: isSaved,
                        onToggle: (isToggled) {
                          if (isToggled) {
                            context
                                .read<NewsBloc>()
                                .add(NewsArticleSaveRequested(article));
                          } else {
                            context
                                .read<NewsBloc>()
                                .add(NewsArticleUnsaveRequested(article));
                          }
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: kListSpacing),
                  Text(article.summary),
                ],
              ),
            ),
          ],
        ),
      );
    }
  }
}
