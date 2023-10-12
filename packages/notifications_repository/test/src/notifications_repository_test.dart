// ignore_for_file: prefer_const_constructors

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:notifications_repository/notifications_repository.dart';

void main() {
  group('NotificationsRepository', () {
    test('can be instantiated', () {
      expect(
        NotificationsRepository(
          appGroupId: 'appGroupId',
          baseApiUrl: 'baseApiUrl',
        ),
        isNotNull,
      );
    });
  });
}
