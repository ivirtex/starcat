// Dart imports:
import 'dart:developer';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

// Project imports:
import 'package:starcat/constants.dart';

class MissionImage extends StatelessWidget {
  const MissionImage({
    required this.imageUrl,
    this.fit,
    this.cacheManager,
    super.key,
  });

  final String imageUrl;
  final BoxFit? fit;
  final BaseCacheManager? cacheManager;

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: 500.ms,
      curve: Curves.easeInOut,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        fadeOutDuration: 0.ms,
        fit: fit,
        // TODO(ivirtex): comment out when compiling for production
        // cacheKey: GlobalKey().toString(),
        cacheManager: cacheManager,
        progressIndicatorBuilder: (context, child, _) {
          return SizedBox(
            height: 150,
            child: ColoredBox(
              color: Theme.of(context).colorScheme.surface,
              child: const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            ),
          );
        },
        errorWidget: (context, error, stackTrace) {
          log(error);

          return SizedBox(
            height: 150,
            child: ColoredBox(
              color: Theme.of(context).colorScheme.errorContainer,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.error,
                    color: Theme.of(context).colorScheme.onErrorContainer,
                  ),
                  Text(
                    kImageErrorText,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onErrorContainer,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
