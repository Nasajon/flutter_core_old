import 'package:flutter/material.dart';

import '../../../presentation.dart';

///
/// Builder class to construct styles related to Typography.
///
abstract class TypographyBuilder {
  ///
  /// Creates the app default text styles, defined by our UX Team.
  ///
  static AppTextStyle buildAppTextStyle(
    TextTheme baseTheme,
    IForegroundColorPalette foreground,
  ) {
    return AppTextStyle(
      captionLight: baseTheme.caption!.copyWith(
        fontWeight: AppFontWeight.light.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      caption: baseTheme.caption!.copyWith(
        fontWeight: AppFontWeight.regular.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      captionMedium: baseTheme.caption!.copyWith(
        fontWeight: AppFontWeight.medium.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      captionBold: baseTheme.caption!.copyWith(
        fontWeight: AppFontWeight.bold.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      buttonLight: baseTheme.button!.copyWith(
        fontWeight: AppFontWeight.light.value,
        height: AppLineHeight.xs.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      button: baseTheme.button!.copyWith(
        fontWeight: AppFontWeight.regular.value,
        height: AppLineHeight.xs.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      buttonMedium: baseTheme.button!.copyWith(
        fontWeight: AppFontWeight.medium.value,
        height: AppLineHeight.xs.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      buttonBold: baseTheme.button!.copyWith(
        fontWeight: AppFontWeight.bold.value,
        height: AppLineHeight.xs.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      calloutLight: TextStyle(
        fontSize: AppFontSize.callout.value,
        fontWeight: AppFontWeight.light.value,
        color: foreground.active,
        height: AppLineHeight.md.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      callout: TextStyle(
        fontSize: AppFontSize.callout.value,
        fontWeight: AppFontWeight.regular.value,
        color: foreground.active,
        height: AppLineHeight.md.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      calloutMedium: TextStyle(
        fontSize: AppFontSize.callout.value,
        fontWeight: AppFontWeight.medium.value,
        color: foreground.active,
        height: AppLineHeight.md.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      calloutBold: TextStyle(
        fontSize: AppFontSize.callout.value,
        fontWeight: AppFontWeight.bold.value,
        color: foreground.active,
        height: AppLineHeight.md.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      body2Light: baseTheme.bodyText2!.copyWith(
        fontSize: AppFontSize.body2.value,
        fontWeight: AppFontWeight.light.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      body2: baseTheme.bodyText2!.copyWith(
        fontSize: AppFontSize.body2.value,
        fontWeight: AppFontWeight.regular.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      body2Medium: baseTheme.bodyText2!.copyWith(
        fontSize: AppFontSize.body2.value,
        fontWeight: AppFontWeight.medium.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      body2Bold: baseTheme.bodyText2!.copyWith(
        fontSize: AppFontSize.body2.value,
        fontWeight: AppFontWeight.bold.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      body1Light: baseTheme.bodyText1!.copyWith(
        fontWeight: AppFontWeight.light.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      body1: baseTheme.bodyText1!.copyWith(
        fontWeight: AppFontWeight.regular.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      body1Medium: baseTheme.bodyText1!.copyWith(
        fontWeight: AppFontWeight.medium.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      body1Bold: baseTheme.bodyText1!.copyWith(
        fontWeight: AppFontWeight.bold.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      h4Light: baseTheme.headline4!.copyWith(
        fontWeight: AppFontWeight.light.value,
        color: foreground.active,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      h4: baseTheme.headline4!.copyWith(
        fontWeight: AppFontWeight.regular.value,
        color: foreground.active,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      h4Medium: baseTheme.headline4!.copyWith(
        fontWeight: AppFontWeight.medium.value,
        color: foreground.active,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      h4Bold: baseTheme.headline4!.copyWith(
        fontWeight: AppFontWeight.bold.value,
        color: foreground.active,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      h3Light: baseTheme.headline3!.copyWith(
        fontWeight: AppFontWeight.light.value,
        color: foreground.active,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      h3: baseTheme.headline3!.copyWith(
        fontWeight: AppFontWeight.regular.value,
        color: foreground.active,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      h3Medium: baseTheme.headline3!.copyWith(
        fontWeight: AppFontWeight.medium.value,
        color: foreground.active,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      h3Bold: baseTheme.headline3!.copyWith(
        fontWeight: AppFontWeight.bold.value,
        color: foreground.active,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      h2Light: baseTheme.headline2!.copyWith(
        fontWeight: AppFontWeight.light.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      h2: baseTheme.headline2!.copyWith(
        fontWeight: AppFontWeight.regular.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      h2Medium: baseTheme.headline2!.copyWith(
        fontWeight: AppFontWeight.medium.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      h2Bold: baseTheme.headline2!.copyWith(
        fontWeight: AppFontWeight.bold.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      h1Light: baseTheme.headline1!.copyWith(
        fontWeight: AppFontWeight.light.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      h1: baseTheme.headline1!.copyWith(
        fontWeight: AppFontWeight.regular.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      h1Medium: baseTheme.headline1!.copyWith(
        fontWeight: AppFontWeight.medium.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      h1Bold: baseTheme.headline1!.copyWith(
        fontWeight: AppFontWeight.bold.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
    );
  }

  ///
  /// Builds a copy of the app's old [TextTheme].
  ///
  /// Was opted to kept the same TextTheme from old theming. There's some
  /// inconsistencies, like bodyText2 size defined with callout size. This is kept
  /// like that to avoid a huge refactor in the whole app.
  ///
  /// !!! This styles are deprecated !!!
  ///
  /// Please, use the ThemeExtension [AppTextStyle].
  /// To do so, use `context.text` helper method.
  ///
  static TextTheme buildTextTheme(Color textColor, Color invertedColor) =>
      TextTheme(
        subtitle1: TextStyle(
          fontSize: AppFontSize.body1.value,
          fontWeight: AppFontWeight.regular.value,
          color: textColor,
          height: AppLineHeight.sm.value,
        ),
        headline1: TextStyle(
          fontSize: AppFontSize.headline1.value,
          fontWeight: AppFontWeight.bold.value,
          color: textColor,
          height: AppLineHeight.sm.value,
        ),
        headline2: TextStyle(
          fontSize: AppFontSize.headline2.value,
          fontWeight: AppFontWeight.bold.value,
          color: textColor,
          height: AppLineHeight.sm.value,
        ),
        headline3: TextStyle(
          fontSize: AppFontSize.headline3.value,
          fontWeight: AppFontWeight.bold.value,
          color: textColor,
          height: AppLineHeight.sm.value,
        ),
        headline4: TextStyle(
          fontSize: AppFontSize.headline4.value,
          fontWeight: AppFontWeight.bold.value,
          color: textColor,
          height: AppLineHeight.sm.value,
        ),
        bodyText1: TextStyle(
          fontSize: AppFontSize.body1.value,
          fontWeight: AppFontWeight.bold.value,
          color: textColor,
          height: AppLineHeight.sm.value,
        ),
        bodyText2: TextStyle(
          fontSize: AppFontSize.callout.value,
          fontWeight: AppFontWeight.bold.value,
          color: textColor,
          height: AppLineHeight.sm.value,
        ),
        button: TextStyle(
          fontSize: AppFontSize.button.value,
          fontWeight: AppFontWeight.medium.value,
          color: invertedColor,
          height: AppLineHeight.sm.value,
        ),
        caption: TextStyle(
          fontSize: AppFontSize.caption.value,
          fontWeight: AppFontWeight.bold.value,
          color: textColor,
          height: AppLineHeight.sm.value,
        ),
      );
}
