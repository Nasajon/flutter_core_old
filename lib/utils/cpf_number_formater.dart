import 'package:flutter/services.dart';
import 'package:flutter_dependencies/flutter_dependencies.dart';

///
/// Handle cpf number formatting.

class CpfNumberFormater {
  ///
  /// Add maskText
  ///
  ///
  TextInputFormatter maskFor() {
    return MaskTextInputFormatter(
      mask: '###.###.###-##',
      filter: {'#': RegExp(r'\d')},
    );
  }

  ///
  /// Remove all special characters from cpf number
  ///
  ///
  String unmaskCPF(String text) {
    return text.replaceAll(RegExp(r'\D'), '');
  }

  ///
  /// Masked cpf
  ///
  static String? maskCPF(String text) {
    var regExp = RegExp(r'^(\d{3})(\d{3})(\d{3})(\d{2})$');

    return _strip(text).replaceAllMapped(
      regExp,
      (Match m) => '${m[1]}.${m[2]}.${m[3]}-${m[4]}',
    );
  }

  ///
  /// Strip current cpf
  ///
  static String _strip(String? cpf) {
    var regExp = RegExp(r'\D');
    cpf = cpf ?? '';

    return cpf.replaceAll(regExp, '');
  }
}
