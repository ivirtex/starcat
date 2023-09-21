// Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:starcat/starship/starship.dart';
import '../../test_helpers/pump_app.dart';

void main() {
  group('UpdatesPage', () {
    testWidgets('renders', (tester) async {
      await tester.pumpApp(
        const UpdatesPage(updates: []),
      );
      await tester.pump(const Duration(seconds: 3));

      expect(find.byType(UpdatesPage), findsOneWidget);
    });

    testWidgets('displays list of updates', (tester) async {
      await tester.pumpApp(
        UpdatesPage(
          updates: [
            Update(
              createdOn: DateTime.now(),
            ),
          ],
        ),
      );
      await tester.pump(const Duration(seconds: 3));

      expect(find.byType(UpdateCard), findsOneWidget);
    });
  });
}
