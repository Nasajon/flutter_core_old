import 'package:flutter/material.dart';

import '../../flutter_core.dart';

///
/// ThemeData factory
///
abstract class ThemeFactory {
  /// Get/Create a light [ThemeData] instance.
  ///
  /// Factories for v1 and v2 works as a lazy singleton. If the current ThemeData
  /// is null, a new instance is created, otherwise, the current instance is returned.
  static ThemeData light() {
    final themeVersion = DM.get<Environment>().themeVersion;

    switch (themeVersion) {
      case ThemeVersion.v2:
        return AppTheme.instance.lightTheme;
      default:
        return AppTheme.instance.lightTheme;
    }
  }

  /// Get/Create a dark [ThemeData] instance.
  ///
  /// Factories for v1 and v2 works as a lazy singleton. If the current ThemeData
  /// is null, a new instance is created, otherwise, the current instance is returned.
  static ThemeData dark() {
    final themeVersion = DM.get<Environment>().themeVersion;

    switch (themeVersion) {
      case ThemeVersion.v2:
        return AppTheme.instance.lightTheme;
      default:
        return AppTheme.instance.lightTheme;
      // return AppThemeFactory.instance.currentDarkTheme;
    }
  }
}
