import 'flavor.dart';

///
/// App theme versions
///
enum ThemeVersion {
  /// Initial version
  v1,

  /// Version 2.0
  v2
}

///
/// App settings
///
class Environment {
  /// App name
  final String appName;

  /// Current [Flavor]
  final Flavor? flavor;

  /// Theme version
  final ThemeVersion themeVersion;

  ///
  /// Create a new [Environment]
  ///
  Environment({
    required this.appName,
    this.themeVersion = ThemeVersion.v1,
    this.flavor,
  });
}
