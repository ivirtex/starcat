// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// Project imports:
import 'package:starcat/explore/explore.dart';

class YoutubeVideoCard extends StatefulWidget {
  const YoutubeVideoCard({
    required this.videoUrl,
    super.key,
  });

  final String videoUrl;

  @override
  State<YoutubeVideoCard> createState() => _YoutubeVideoCardState();
}

class _YoutubeVideoCardState extends State<YoutubeVideoCard> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.videoUrl)!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        controlsVisibleAtStart: true,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();

    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ExploreCard(
      padding: EdgeInsets.zero,
      title: const Row(
        children: [
          Icon(Icons.play_circle_filled_rounded, size: 14),
          SizedBox(width: 5),
          Text('Live Stream'),
        ],
      ),
      child: YoutubePlayer(
        controller: _controller,
        bottomActions: [
          CurrentPosition(),
          ProgressBar(isExpanded: true),
          RemainingDuration(),
        ],
        topActions: [
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.open_in_new_rounded),
            onPressed: () {
              launchUrl(Uri.parse(widget.videoUrl));
            },
          ),
        ],
      ),
    );
  }
}
