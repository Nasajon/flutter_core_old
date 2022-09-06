import 'package:flutter_dependencies/flutter_dependencies.dart';

import 'i18n.g.dart';

///
/// Base translations class, based on [slang package.](https://pub.dev/packages/slang)
///
/// Each module must implement this class and return the local translations
/// file, created by slang build runner (take [CoreI18n2] as example).
///
/// A public variable can be created to facilitate the access to the
/// translations, like this:
/// ```dart
/// final tr = CoreI18n2().translations;
/// ```
///
abstract class Translation<T extends BaseTranslations> {
  /// Get translations for current module, with app locale.
  /// Can use [cardinalResolver] if is necessary resolve pluralization.
  ///
  /// Example:
  /// ```dart
  /// I18nPt get translations =>
  ///   _appLocale.build(cardinalResolver: super.cardinalResolver);
  /// ```
  T get translations;

  /// Default cardinal resolver for Portuguese language.
  String cardinalResolver(
    num number, {
    String? zero,
    String? one,
    String? two,
    String? few,
    String? many,
    String? other,
  }) {
    return Intl.plural(
      number,
      zero: zero,
      one: one,
      two: two,
      few: few,
      many: many,

      /// `other` goes without null check. The slang methods does the same internally.
      /// I think this is just a design error made by slang creator.
      other: other!,
    );
  }
}

/// Core module translations
class CoreI18n2 extends Translation<I18nPt> {
  late final AppLocale _appLocale;

  /// Creates a [CoreI18n2] with the current device locale
  CoreI18n2() : _appLocale = AppLocaleUtils.findDeviceLocale();

  @override
  I18nPt get translations =>
      _appLocale.build(cardinalResolver: super.cardinalResolver);
}

// Core translations public accessor
// ignore: public_member_api_docs
final tr = CoreI18n2().translations;
