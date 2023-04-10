// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// Project imports:
import 'package:falcon/news/news.dart';
import '../../test_helpers/pump_app.dart';

class MockNewsBloc extends MockBloc<NewsEvent, NewsState> implements NewsBloc {}

void main() {
  group('ArticleSelection', () {
    late NewsBloc newsBloc;

    setUp(() {
      newsBloc = MockNewsBloc();
    });

    testWidgets('renders', (WidgetTester tester) async {
      await tester.pumpApp(
        const ArticleSelection(),
      );

      expect(find.byType(SegmentedButton<SelectedNews>), findsOneWidget);
    });

    testWidgets('default selection is SelectedNews.latest', (tester) async {
      await tester.pumpApp(
        const ArticleSelection(),
      );

      final segmentedButton = tester.widget<SegmentedButton<SelectedNews>>(
        find.byType(SegmentedButton<SelectedNews>),
      );

      expect(segmentedButton.selected, {SelectedNews.latest});
    });

    testWidgets('changes selection to popular', (tester) async {
      await tester.pumpApp(
        const ArticleSelection(),
      );

      await tester.tap(find.text('Popular'));
      await tester.pumpAndSettle();

      final segmentedButton = tester.widget<SegmentedButton<SelectedNews>>(
        find.byType(SegmentedButton<SelectedNews>),
      );

      expect(segmentedButton.selected, {SelectedNews.popular});
    });

    testWidgets('changes selection to saved', (tester) async {
      await tester.pumpApp(
        // We wrap the ArticleSelection in a
        // Center and SizedBox widgets to ensure
        // they are visible in the test.
        const Center(
          child: SizedBox(
            child: ArticleSelection(),
          ),
        ),
      );

      await tester.tap(find.text('Saved'));
      await tester.pumpAndSettle();

      final segmentedButton = tester.widget<SegmentedButton<SelectedNews>>(
        find.byType(SegmentedButton<SelectedNews>),
      );

      expect(segmentedButton.selected, {SelectedNews.saved});
    });

    testWidgets('adds NewsSelectionChanged event on selection ',
        (tester) async {
      await tester.pumpApp(
        newsBloc: newsBloc,
        const Center(
          child: SizedBox(
            child: ArticleSelection(),
          ),
        ),
      );

      await tester.tap(find.text('Saved'));
      await tester.pumpAndSettle();

      verify(
        () => newsBloc.add(
          const NewsSelectionChanged(SelectedNews.saved),
        ),
      ).called(1);
    });
  });
}
