// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/explore/explore.dart';
import 'package:starcat/helpers/helpers.dart';
import 'package:starcat/launches/launches.dart';

class LaunchVideoCard extends StatelessWidget {
  const LaunchVideoCard({
    this.videos,
    super.key,
  });

  final List<Video>? videos;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: kBodyPadding.left,
            right: kBodyPadding.right,
            top: 2,
            bottom: 6,
          ),
          child: Row(
            children: [
              const Icon(Icons.video_collection_rounded, size: 14),
              const SizedBox(width: 5),
              Text(
                'Launch Video',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
        ),
        if (videos == null || videos!.isEmpty)
          const ExploreCard(
            margin: EdgeInsets.zero,
            child: Text('No videos/live streams available'),
          )
        else if (videos!.length > 1)
          SizedBox(
            height: 150,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) =>
                  const SizedBox(width: kListSpacing),
              itemCount: videos!.length,
              itemBuilder: (context, index) {
                final video = videos![index];

                return SizedBox(
                  width: 250,
                  child: VideoCard(video: video),
                );
              },
            ),
          )
        else
          SizedBox(
            height: 200,
            child: VideoCard(video: videos!.first),
          ),
      ],
    );
  }
}

class VideoCard extends StatelessWidget {
  const VideoCard({
    required this.video,
    super.key,
  });

  final Video video;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(kBorderRadius),
      child: GestureDetector(
        onTap: () => _onTapOnVideo(context),
        child: Stack(
          fit: StackFit.expand,
          children: [
            ColorFiltered(
              colorFilter: const ColorFilter.mode(
                Colors.black45,
                BlendMode.srcOver,
              ),
              child: MissionImage(
                imageUrl: video.featureImage,
                fit: BoxFit.cover,
                errorColor: Colors.grey.shade900,
                onErrorColor: Colors.grey.shade700,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    video.title,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: Colors.white),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Spacer(),
                  Text(
                    video.source ?? '',
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
            Align(
              child: IconButton.filledTonal(
                icon: const Icon(Icons.play_arrow_rounded),
                onPressed: () => _onTapOnVideo(context),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onTapOnVideo(BuildContext context) {
    final url = video.url;
    final uri = Uri.parse(url);

    launchUrlAndSetOverlayStyle(uri, context);
  }
}
