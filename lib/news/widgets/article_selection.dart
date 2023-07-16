// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:starcat/news/news.dart';
import 'package:starcat/shared/shared.dart';

class ArticleSelection extends StatefulWidget {
  const ArticleSelection({super.key});

  @override
  State<ArticleSelection> createState() => _ArticleSelectionState();
}

class _ArticleSelectionState extends State<ArticleSelection> {
  late SelectedNews selected;

  @override
  void initState() {
    super.initState();

    selected = context.read<NewsBloc>().state.selection;
  }

  @override
  Widget build(BuildContext context) {
    return PlatformWidget(
      cupertino: (context) {
        return CupertinoSlidingSegmentedControl<SelectedNews>(
          children: const {
            SelectedNews.latest: Text('Latest'),
            SelectedNews.featured: Text('Featured'),
            SelectedNews.saved: Text('Saved'),
          },
          groupValue: selected,
          onValueChanged: (newValue) {
            setState(() {
              selected = newValue!;

              context.read<NewsBloc>().add(NewsSelectionChanged(selected));
            });
          },
        );
      },
      material: (context) {
        return SegmentedButton<SelectedNews>(
          segments: const [
            ButtonSegment(
              value: SelectedNews.latest,
              label: Text('Latest'),
              icon: Icon(Icons.newspaper_rounded),
            ),
            ButtonSegment(
              value: SelectedNews.featured,
              label: Text('Featured'),
              icon: Icon(Icons.star),
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

              context.read<NewsBloc>().add(NewsSelectionChanged(selected));
            });
          },
        );
      },
    );
  }
}
