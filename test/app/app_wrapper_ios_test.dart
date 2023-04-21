// // Flutter imports:
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/foundation.dart';

// // Package imports:
// import 'package:flutter_test/flutter_test.dart';
// import 'package:launch_library_repository/launch_library_repository.dart';
// import 'package:mocktail/mocktail.dart';
// import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';

// // Project imports:
// import 'package:starcat/app/app.dart';
// import 'package:starcat/app/app_wrapper.dart';
// import '../test_helpers/test_helpers.dart';

// class MockLaunchLibraryRepository extends Mock
//     implements LaunchLibraryRepository {}

// class MockSpaceflightNewsRepository extends Mock
//     implements SpaceflightNewsRepository {}

// void main() {
//   initHydratedStorage();

//   group('AppWrapper iOS', () {
//     late LaunchLibraryRepository launchLibraryRepository;
//     late SpaceflightNewsRepository spaceflightNewsRepository;

//     setUp(() {
//       launchLibraryRepository = MockLaunchLibraryRepository();
//       spaceflightNewsRepository = MockSpaceflightNewsRepository();

//       registerFallbackValue(LaunchTime.upcoming);
//       when(() => launchLibraryRepository.getLaunches(any()))
//           .thenAnswer((_) async => <Launch>[]);
//       when(() => spaceflightNewsRepository.getNews())
//           .thenAnswer((_) async => <Article>[]);
//     });

//     testWidgets('uses CupertinoApp on iOS', (tester) async {
//       debugDefaultTargetPlatformOverride = TargetPlatform.iOS;

//       await tester.pumpWidget(
//         //! Workaround for: https://github.com/flutter/flutter/issues/83788
//         AppWrapper(
//           launchLibraryRepository: launchLibraryRepository,
//           spaceflightNewsRepository: spaceflightNewsRepository,
//         ),
//       );

//       await tester.pumpAndSettle(const Duration(seconds: 3));

//       expect(find.byType(CupertinoApp), findsOneWidget);

//       debugDefaultTargetPlatformOverride = null;
//     });
//   });
// }
