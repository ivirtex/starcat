// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:starcat/news/news.dart';

void main() {
  group('NewsState', () {
    test('supports value comparisons', () {
      expect(const NewsState(), const NewsState());
    });

    test('copyWith is working correctly', () {
      const state = NewsState();
      final newState = state.copyWith(selection: SelectedNews.featured);

      expect(newState, isNot(state));
    });
  });
}
