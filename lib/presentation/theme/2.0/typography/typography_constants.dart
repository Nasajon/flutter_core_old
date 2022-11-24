import 'package:flutter/material.dart';
import 'package:flutter_core/flutter_core.dart';

/// Default app font family
const String appFontFamily = 'PTSans';
const String appFontNarrow = 'PTSansNarrow';

///
/// App possible FontWeight list
///
enum AppFontWeight {
  /// Bold text - 700
  bold(FontWeight.w700),

  /// Semi-bold text - 600
  medium(FontWeight.w600),

  /// Normal text - 400
  regular(FontWeight.w400),

  /// Light text - 300
  light(FontWeight.w300);

  /// Returns the FontWeight associated with this enumeration
  final FontWeight value;

  /// Default [AppFontWeight] constructor
  const AppFontWeight(this.value);
}

///
/// App possible line height (Text height) list
///
enum AppLineHeight {
  /// Extra small height = 1.0
  xs(1.0),

  /// Small height = 1.2
  sm(1.2),

  /// Medium height = 1.4
  md(1.4),

  /// Large height = 1.8
  lg(1.8);

  /// Line height spacing value
  final double value;

  /// Default [AppLineHeight] constructor
  const AppLineHeight(this.value);
}

///
/// App possible font size list
///
enum AppFontSize {
  /// Font size for Captions = 12
  caption(12),

  /// Font size for Buttons = 14
  button(14),

  /// Font size for Callout = 14
  callout(14),

  /// Font size for BodyText2 = 16
  body2(16),

  /// Font size for BodyText1 = 18
  body1(18),

  /// Font size for Headline4 = 16
  headline4(16),

  /// Font size for Headline3 = 20
  headline3(20),

  /// Font size for Headline2 = 32
  headline2(32),

  /// Font size for Headline1 = 40
  headline1(40);

  final int _value;

  /// Default [AppFontSize] constructor
  const AppFontSize(this._value);

  /// Returns the font size with responsiveness
  double get value => _value.fontSize;
}

enum AppLetterSpacing {
  sm(0.3),
  md(0.8);

  final double _value;

  const AppLetterSpacing(this._value);

  /// Returns the letter spacing with responsiveness
  double get value => _value.fontSize;
}
