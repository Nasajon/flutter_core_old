/// Flavors
// ignore_for_file: constant_identifier_names

enum Flavor {
  /// dev flavor
  dev,

  /// hml flavor
  hml,

  /// preprod flavor
  preprod,

  /// prod flavor
  prod,
}

/// Extension to get name
extension FlavorDescription on Flavor {
  /// get flavor name to match with remote config
  String get remoteConfigName {
    switch (this) {
      case Flavor.dev:
      case Flavor.hml:
        return name;
      case Flavor.prod:
        return '';
      default:
        return '';
    }
  }
}
