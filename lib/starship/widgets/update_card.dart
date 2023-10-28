// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:starcat/explore/explore.dart';
import 'package:starcat/helpers/helpers.dart';

class UpdateCard extends StatelessWidget {
  const UpdateCard({
    required this.update,
    super.key,
  });

  final Update update;

  @override
  Widget build(BuildContext context) {
    final infoUrl = update.infoUrl;

    return ExploreCard(
      onTap: update.infoUrl != null
          ? () => launchUrlAndSetOverlayStyle(Uri.parse(infoUrl!), context)
          : null,
      title: Text(
        formatDate(update.createdOn?.toLocal()) ?? '',
        style: Theme.of(context)
            .textTheme
            .titleSmall
            ?.copyWith(color: Theme.of(context).colorScheme.tertiary),
      ),
      child: Text(update.comment ?? 'No comment'),
    );
  }
}
