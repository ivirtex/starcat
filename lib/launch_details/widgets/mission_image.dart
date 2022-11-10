// Dart imports:
import 'dart:developer';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:cached_network_image/cached_network_image.dart';
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
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minHeight: 200,
      ),
      child: ColoredBox(
        color: Colors.black,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          cacheManager: cacheManager,
          errorWidget: (context, error, stackTrace) {
            log(error);

            return Center(
              child: Column(
                children: [
                  Icon(
                    Icons.error,
                    color: Theme.of(context).colorScheme.error,
                  ),
                  const Text(
                    kImageErrorText,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            );
          },
          progressIndicatorBuilder: (context, child, loadingProgress) {
            return Center(
              child: CircularProgressIndicator.adaptive(
                value: loadingProgress.progress,
                backgroundColor: Colors.white,
              ),
            );
          },
        ),
      ),
    );
  }
}
