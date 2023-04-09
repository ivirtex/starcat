import 'package:falcon/news/news.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('NewsState', () {
    test('supports value comparisons', () {
      expect(const NewsState(), const NewsState());
    });

    test('copyWith is working correctly', () {
      const state = NewsState();
      final newState = state.copyWith(selection: SelectedNews.popular);

      expect(newState, isNot(state));
    });
  });
}
