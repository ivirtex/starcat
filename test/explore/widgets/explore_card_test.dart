// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';
import 'package:falcon/theme/theme.dart';
import '../../test_helpers/test_helpers.dart';

class MockThemeCubit extends MockCubit<ThemeState> implements ThemeCubit {}

void main() {
  initHydratedStorage();

  group('ExploreCard', () {
    testWidgets('renders title if provided', (WidgetTester tester) async {
      await tester.pumpApp(
        ExploreCard(
          title: const Text('Next Launch'),
          child: Container(),
        ),
      );

      expect(find.text('Next Launch'), findsOneWidget);
    });

    testWidgets('does not render title if not provided',
        (WidgetTester tester) async {
      await tester.pumpApp(
        ExploreCard(
          child: Container(),
        ),
      );

      expect(find.text('Next Launch'), findsNothing);
    });
  });
}
