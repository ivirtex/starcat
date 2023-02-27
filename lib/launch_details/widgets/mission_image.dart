// Dart imports:
import 'dart:developer';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

// Project imports:
import 'package:falcon/constants.dart';

class MissionImage extends StatelessWidget {
  const MissionImage({
    super.key,
    this.cacheManager,
    required this.imageUrl,
  });

  final BaseCacheManager? cacheManager;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: 500.ms,
      curve: Curves.easeInOut,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        fadeOutDuration: 0.ms,
        cacheKey: GlobalKey().toString(),
        placeholder: (context, child) {
          return SizedBox(
            height: 150,
            child: ColoredBox(
              color: Theme.of(context).colorScheme.primary,
              child: Center(
                child: CircularProgressIndicator.adaptive(
                  backgroundColor: Theme.of(context).colorScheme.tertiary,
                ),
              ),
            ),
          );
        },
        errorWidget: (context, error, stackTrace) {
          log(error);

          return Center(
            child: Column(
              children: [
                Icon(
                  Icons.error,
                  color: Theme.of(context).colorScheme.error,
                ),
                Text(
                  kImageErrorText,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onError,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
