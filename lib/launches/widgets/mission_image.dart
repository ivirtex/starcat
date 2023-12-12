// Dart imports:
import 'dart:developer';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class MissionImage extends StatelessWidget {
  const MissionImage({
    required this.imageUrl,
    this.fit,
    this.cacheManager,
    this.errorColor,
    this.onErrorColor,
    super.key,
  });

  final String? imageUrl;
  final BoxFit? fit;
  final BaseCacheManager? cacheManager;
  final Color? errorColor;
  final Color? onErrorColor;

  @override
  Widget build(BuildContext context) {
    if (imageUrl == null || imageUrl!.isEmpty) {
      return SizedBox(
        height: 150,
        child: ColoredBox(
          color: errorColor ?? Theme.of(context).colorScheme.errorContainer,
          child: Center(
            child: Icon(
              Icons.image_not_supported_rounded,
              color: onErrorColor ??
                  Theme.of(context).colorScheme.onErrorContainer,
            ),
          ),
        ),
      );
    }

    return AnimatedSize(
      duration: 500.ms,
      curve: Curves.easeInOut,
      child: CachedNetworkImage(
        imageUrl: imageUrl!,
        fadeOutDuration: 0.ms,
        fit: fit,
        cacheManager: cacheManager,
        progressIndicatorBuilder: (context, child, _) {
          return ColoredBox(
            color: Theme.of(context).colorScheme.surface,
            child: const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          );
        },
        errorWidget: (context, error, stackTrace) {
          log(error);

          return ColoredBox(
            color: errorColor ?? Theme.of(context).colorScheme.errorContainer,
            child: Icon(
              Icons.image_not_supported_rounded,
              color: onErrorColor ??
                  Theme.of(context).colorScheme.onErrorContainer,
              size: 32,
            ),
          );
        },
      ),
    );
  }
}
