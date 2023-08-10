// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/explore/explore.dart';

class VehicleCard extends StatelessWidget {
  const VehicleCard({
    required this.title,
    required this.subtitle,
    required this.leading,
    this.status,
    super.key,
  });

  final Widget title;
  final Widget subtitle;
  final Widget leading;
  final Widget? status;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kListSpacing),
      child: ExploreCard(
        padding: EdgeInsets.zero,
        title: status != null ? const Text('Status') : null,
        trailing: status,
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                width: 80,
                child: ColoredBox(
                  color: Theme.of(context).colorScheme.surfaceVariant,
                  child: DefaultTextStyle(
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context)
                              .colorScheme
                              .onSurfaceVariant
                              .withOpacity(0.6),
                        ),
                    child: leading,
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(kListSpacing),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      DefaultTextStyle(
                        style: Theme.of(context).textTheme.titleMedium!,
                        child: title,
                      ),
                      subtitle,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
