// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// Project imports:
import 'package:starcat/launches/launches.dart';
import '../../test_helpers/test_helpers.dart';

class MockLaunchesBloc extends MockBloc<LaunchesEvent, LaunchesState>
    implements LaunchesBloc {}

void main() {
  late LaunchesBloc launchesBloc;

  setUp(() {
    launchesBloc = MockLaunchesBloc();

    when(() => launchesBloc.state).thenReturn(const LaunchesState());
  });

  group('LaunchesSelection', () {
    testWidgets('renders SegmentedButton', (tester) async {
      await tester.pumpApp(const LaunchesSelection());
    });

    testWidgets('button segments work', (tester) async {
      await tester.pumpApp(
        launchesBloc: launchesBloc,
        const LaunchesSelection(),
      );

      await tester.tap(find.text('Past'));
      await tester.pumpAndSettle();

      verify(
        () => launchesBloc.add(
          const LaunchesSelectionChanged(
            selectedLaunches: SelectedLaunches.past,
          ),
        ),
      ).called(1);
    });
  });
}
