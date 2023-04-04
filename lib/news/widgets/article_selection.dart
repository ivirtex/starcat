// Flutter imports:
import 'package:flutter/material.dart';

enum ArticleType { latest, popular, saved }

class ArticleSelection extends StatefulWidget {
  const ArticleSelection({super.key});

  @override
  State<ArticleSelection> createState() => _ArticleSelectionState();
}

class _ArticleSelectionState extends State<ArticleSelection> {
  ArticleType selected = ArticleType.latest;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<ArticleType>(
      segments: const [
        ButtonSegment(
          value: ArticleType.latest,
          label: Text('Latest'),
          icon: Icon(Icons.new_releases),
        ),
        ButtonSegment(
          value: ArticleType.popular,
          label: Text('Popular'),
          icon: Icon(Icons.trending_up),
        ),
        ButtonSegment(
          value: ArticleType.saved,
          label: Text('Saved'),
          icon: Icon(Icons.bookmark),
        ),
      ],
      selected: {selected},
      onSelectionChanged: (newSelection) {
        setState(() {
          selected = newSelection.first;
        });
      },
    );
  }
}
