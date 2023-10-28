// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';

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
    super.key,
  }) : previewMode = false;

  const ArticleCard.preview({
    required this.article,
    this.isSaved = false,
    this.expandVertically = false,
    super.key,
  }) : previewMode = true;

  final Article article;
  final bool isSaved;
  final bool expandVertically;
  final bool previewMode;

  @override
  Widget build(BuildContext context) {
    if (previewMode) {
      return ExploreCard(
        expandVertically: expandVertically,
        title: Text(
          article.newsSite,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: Text(
          formatDate(
            article.publishedAt,
            dateFormat: DateFormat.yMMMd(),
          )!,
          style: TextStyle(
            color: Theme.of(context).colorScheme.tertiary,
          ),
        ),
        padding: EdgeInsets.zero,
        onTap: () => launchUrlAndSetOverlayStyle(
          Uri.parse(article.url),
          context,
        ),
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
                    Text(
                      article.title,
                      style: Theme.of(context).textTheme.titleMedium,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    const SizedBox(height: kListSpacing),
                    Expanded(
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          final maxLines = ((constraints.maxHeight - 10) /
                                  Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .fontSize!)
                              .floor();

                          return Text(
                            article.summary,
                            overflow: TextOverflow.ellipsis,
                            maxLines: maxLines,
                          );
                        },
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
        title: Text(
          article.newsSite,
        ),
        trailing: Text(
          formatDate(
                article.publishedAt,
                dateFormat: DateFormat.yMMMd(),
              ) ??
              'N/A',
          style: TextStyle(
            color: Theme.of(context).colorScheme.tertiary,
          ),
        ),
        padding: EdgeInsets.zero,
        onTap: () => launchUrlAndSetOverlayStyle(
          Uri.parse(article.url),
          context,
        ),
        child: Row(
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: MissionImage(
                fit: BoxFit.cover,
                imageUrl: article.imageUrl,
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            article.title,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                        const SizedBox(width: kListSpacing),
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
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}
