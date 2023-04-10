// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/launches/launch_details.dart';
import '../../test_helpers/test_helpers.dart';

class MockCacheManager extends Mock implements DefaultCacheManager {}

void main() {
  initHydratedStorage();

  group('MissionImage', () {
    testWidgets('renders MissionImage', (tester) async {
      await tester.pumpWidget(
        const MissionImage(imageUrl: 'https://placeholder.com'),
      );

      expect(find.byType(MissionImage), findsOneWidget);
      expect(find.byType(CachedNetworkImage), findsOneWidget);
      expect(find.byType(Image), findsOneWidget);
    });

    testWidgets('renders image with an error if url is invalid',
        (tester) async {
      final cacheManager = MockCacheManager();
      when(() => cacheManager.getImageFile(any())).thenThrow(Exception());
      when(() => cacheManager.getFileStream(any())).thenThrow(Exception());

      await tester.pumpApp(
        MissionImage(
          imageUrl: '',
          cacheManager: cacheManager,
        ),
      );

      await tester.pumpAndSettle();

      expect(find.text(kImageErrorText), findsOneWidget);
      expect(find.byIcon(Icons.error), findsOneWidget);
    });
  });
}
