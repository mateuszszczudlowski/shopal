import 'package:intl/intl.dart';

String convertDateTimeDisplay(String date) {
  final DateFormat displayFormater = DateFormat('yyyy-MM-dd HH:mm:ss.SSS');
  final DateFormat serverFormater = DateFormat('yyyy-MM-dd');
  final DateTime displayDate = displayFormater.parse(date);
  final String formatted = serverFormater.format(displayDate);
  return formatted;
}

String convertDateTimeOpinions(String date) {
  String trimmedString =
      date.replaceAll(RegExp(r'T\d{2}:\d{2}:\d{2}.\d{6}[+-]\d{2}:\d{2}$'), '');
  final rawDate = DateTime.parse(trimmedString);

  final DateFormat serverFormater = DateFormat('d LLL y');
  final String formatted = serverFormater.format(rawDate);
  return formatted.toString();
}
