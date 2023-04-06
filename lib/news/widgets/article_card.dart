// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_size_text/auto_size_text.dart';
import 'package:intl/intl.dart';
import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';
import 'package:url_launcher/url_launcher_string.dart';

// Project imports:
import 'package:falcon/constants.dart';
import 'package:falcon/explore/explore.dart';
import 'package:falcon/helpers/helpers.dart';
import 'package:falcon/launches/launch_details.dart';
import 'package:falcon/shared/shared.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({
    super.key,
    required this.article,
    this.expandVertically = false,
    this.previewMode = false,
  });

  final Article article;
  final bool expandVertically;
  final bool previewMode;

  @override
  Widget build(BuildContext context) {
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
        child: previewMode
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AutoSizeText(
                    article.title,
                    maxLines: 2,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 10),
                  Flexible(
                    child: Text(
                      article.summary,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 4,
                    ),
                  ),
                ],
              )
            : Column(
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
                      const IconToggleButton(
                        icon: Icon(Icons.bookmark_outline_rounded),
                        selectedIcon: Icon(Icons.bookmark_rounded),
                        onToggle: print,
                        getDefaultStyle: enabledFilledTonalButtonStyle,
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
