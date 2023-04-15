// Package imports:
import 'package:intl/intl.dart';

String? formatDate(
  DateTime? date, {
  DateFormat? dateFormat,
}) {
  if (date == null) {
    return null;
  }

  return (dateFormat ?? DateFormat.yMMMd()).format(date);
}
