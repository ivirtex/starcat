import 'package:falcon/news/news.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../test_helpers/pump_app.dart';

void main() {
  group('NewsPage', () {
    testWidgets('NewsPage renders correctly on iOS',
        (WidgetTester tester) async {
      await tester.pumpApp(const NewsPage(), platform: TargetPlatform.iOS);

      await tester.pumpAndSettle();

      expect(find.text('News'), findsOneWidget);
      expect(find.byType(CupertinoPageScaffold), findsOneWidget);
    });
  });
}
