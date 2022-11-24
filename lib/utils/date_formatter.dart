import 'package:flutter_dependencies/flutter_dependencies.dart';

///
/// Handle DateTime parsing and formatting
///
abstract class DateFormatter {
  ///
  /// Parse a String to a DateTime. Default [pattern] is 'dd/MM/yyyy'
  ///
  static DateTime? parse(String? value, {String pattern = 'dd/MM/yyyy'}) {
    return value != null && value.isNotEmpty
        ? DateFormat(pattern).parse(value)
        : null;
  }

  ///
  /// Format a [DateTime] with a given [pattern]
  ///
  static String? format(DateTime? value, {String pattern = 'dd/MM/yyyy'}) {
    return value != null ? DateFormat(pattern).format(value) : null;
  }
}
