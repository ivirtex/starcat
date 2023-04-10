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
      return Padding(
        padding: const EdgeInsets.only(right: 10, bottom: 10),
        child: ExploreCard(
          expandVertically: expandVertically,
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
            child: SizedBox(
              height: 150,
              child: MissionImage(
                fit: BoxFit.cover,
                imageUrl: article.imageUrl,
              ),
            ),
          ),
          onTap: () => launchUrlString(
            article.url,
            mode: LaunchMode.externalApplication,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 4,
                child: AutoSizeText(
                  article.title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              const Spacer(),
              Expanded(
                flex: 5,
                child: Text(
                  article.summary,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.only(right: 10, bottom: 10),
        child: ExploreCard(
          expandVertically: expandVertically,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(kBorderRadius),
            ),
          ),
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
          slideOutPadding: EdgeInsets.zero,
          slideOut: ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(kBorderRadius),
            ),
            child: MissionImage(
              imageUrl: article.imageUrl,
            ),
          ),
          onTap: () => launchUrlString(
            article.url,
            mode: LaunchMode.externalApplication,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              const SizedBox(height: 10),
              Text(article.summary),
            ],
          ),
        ),
      );
    }
  }
}
