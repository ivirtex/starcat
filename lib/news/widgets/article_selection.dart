// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:falcon/news/news.dart';

class ArticleSelection extends StatefulWidget {
  const ArticleSelection({super.key});

  @override
  State<ArticleSelection> createState() => _ArticleSelectionState();
}

class _ArticleSelectionState extends State<ArticleSelection> {
  SelectedNews selected = SelectedNews.latest;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<SelectedNews>(
      segments: const [
        ButtonSegment(
          value: SelectedNews.latest,
          label: Text('Latest'),
          icon: Icon(Icons.new_releases),
        ),
        ButtonSegment(
          value: SelectedNews.popular,
          label: Text('Popular'),
          icon: Icon(Icons.trending_up),
        ),
        ButtonSegment(
          value: SelectedNews.saved,
          label: Text('Saved'),
          icon: Icon(Icons.bookmark),
        ),
      ],
      selected: {selected},
      onSelectionChanged: (newSelection) {
        setState(() {
          selected = newSelection.first;
        });

        context.read<NewsBloc>().add(NewsSelectionChanged(selected));
      },
    );
  }
}
