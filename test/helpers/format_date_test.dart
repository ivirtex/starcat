// Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';

// Project imports:
import 'package:falcon/helpers/helpers.dart';

void main() {
  test('formatDate', () {
    final date = DateTime(2021);
    final dateFormat = DateFormat('yyyy-MM-dd');

    final result = formatDate(date, dateFormat: dateFormat);

    expect(result, '2021-01-01');
  });
}
