// Package imports:
import 'package:intl/intl.dart';

String parseDateStr(
  DateTime date, {
  DateFormat? dateFormat,
}) {
  return (dateFormat ?? DateFormat.yMMMd()).format(date);
}
