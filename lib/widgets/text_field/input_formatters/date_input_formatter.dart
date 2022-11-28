import 'package:flutter/services.dart';
import 'package:flutter_dependencies/flutter_dependencies.dart';

///
/// Handle date formatting for text input
///
class DateInputFormatter {
  ///
  /// Add maskText
  ///
  ///
  TextInputFormatter maskFor() {
    return MaskTextInputFormatter(
      mask: '##/##/####',
      filter: {'#': RegExp(r'\d')},
    );
  }

  ///
  /// Remove '/ and add '-'
  ///
  ///
  String unmaskDate(String text) {
    return text.replaceAll('/', '-');
  }
}
