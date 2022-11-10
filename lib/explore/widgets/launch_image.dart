// Dart imports:
import 'dart:developer';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:cached_network_image/cached_network_image.dart';

class MissionImage extends StatelessWidget {
  const MissionImage({
    super.key,
    required this.imageUrl,
  });

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
                    'Error loading the image',
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
