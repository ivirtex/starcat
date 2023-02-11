// Package imports:
import 'package:intl/intl.dart';

String formatDate(
  DateTime date, {
  DateFormat? dateFormat,
}) {
  return (dateFormat ?? DateFormat.yMMMd()).format(date);
}
