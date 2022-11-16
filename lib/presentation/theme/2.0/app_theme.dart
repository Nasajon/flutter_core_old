import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'color/color.dart';
import 'spacing/spacing.dart';
import 'typography/typography.dart';

///
/// New theming definitions.
///
/// Defines the default Light and Dark themes.
///
class AppTheme {
  AppTheme._();

  static final AppTheme _instance = AppTheme._();

  /// Current [AppTheme] singleton instance
  static AppTheme get instance => _instance;

  ThemeData? _lightTheme;
  ThemeData? _darkTheme;

  ///
  /// Current Light theme definition
  ///
  ThemeData get lightTheme {
    _lightTheme ??= builder(
      colorPalette: LightColorPalette(),
      invertedForeground: DarkForeground(),
      brightness: Brightness.light,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    );
    return _lightTheme!;
  }

  set lightTheme(ThemeData value) {
    _lightTheme = value;
  }

  ///
  /// Current Dark theme definition
  ///
  ThemeData get darkTheme {
    _darkTheme ??= builder(
      colorPalette: DarkColorPalette(),
      invertedForeground: LightForeground(),
      brightness: Brightness.dark,
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
    );

    return _darkTheme!;
  }

  set darkTheme(ThemeData value) {
    _darkTheme = value;
  }

  ///
  /// Builds a theme, based on the provided colors.
  ///
  ThemeData builder({
    required IColorPalette colorPalette,
    required IForegroundColorPalette invertedForeground,
    required Brightness brightness,

    /// These colors are under revision by the UX team.
    /// They'll see how to put these colors inside our palette.
    /// We're using white(#fff) and dark(#000) by default.
    required Color backgroundColor,
    required Color foregroundColor,
  }) {
    final foreground = colorPalette.foreground;

    /// Uses old text theme just to get the base definition of some styles.
    final textTheme = TypographyBuilder.buildTextTheme(
      foreground.active,
      invertedForeground.active,
    );

    final appTextStyle =
        TypographyBuilder.buildAppTextStyle(textTheme, foreground);

    return ThemeData(
      useMaterial3: false,
      fontFamily: appFontFamily,
      primaryColor: colorPalette.primary,
      brightness: brightness,
      scaffoldBackgroundColor: colorPalette.backgroundPalette.solidSurface,
      cardColor: colorPalette.backgroundPalette.solidSurface,
      canvasColor: Colors.transparent,
      backgroundColor: colorPalette.backgroundPalette.solidSurface,
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: foreground.active,
      ),
      extensions: [
        appTextStyle,
      ],
      iconTheme: IconThemeData(
        color: foreground.active,
        size: AppFontSize.button.value,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: colorPalette.backgroundPalette.solidSurface,
        shadowColor: Colors.black,
        titleTextStyle: appTextStyle.h3Bold.copyWith(
          height: AppLineHeight.xs.value,
          fontSize: 20,
        ),
        systemOverlayStyle: brightness == Brightness.dark
            ? SystemUiOverlayStyle.light
            : SystemUiOverlayStyle.dark,
        iconTheme: IconThemeData(color: foreground.active),
      ),
      dividerColor: foreground.disabled,
      dividerTheme: const DividerThemeData(space: 0),
      checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStateProperty.all(
          colorPalette.backgroundPalette.solidSurface,
        ),
        fillColor: MaterialStateProperty.all(foreground.active),
        side: BorderSide(color: foreground.disabled, width: 1.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(Spacing.xxs.value)),
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.all(foreground.active),
        overlayColor: MaterialStateProperty.all(foreground.disabled),
      ),
      disabledColor: foreground.soft,
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1.0,
            color: colorPalette.base[400]!,
          ),
          borderRadius: BorderRadius.circular(Spacing.xs.value),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1.0,
            color: colorPalette.base[400]!,
          ),
          borderRadius: BorderRadius.circular(Spacing.xs.value),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1.0,
            color: colorPalette.secondary,
          ),
          borderRadius: BorderRadius.circular(Spacing.xs.value),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1.0, color: foreground.soft),
          borderRadius: BorderRadius.circular(Spacing.xs.value),
        ),
        labelStyle: TextStyle(
          color: foreground.active,
          fontWeight: AppFontWeight.regular.value,
          fontSize: AppFontSize.body1.value,
          height: AppLineHeight.sm.value,
        ),
        hintStyle: TextStyle(
          color: foreground.disabled,
          fontWeight: AppFontWeight.regular.value,
          fontSize: AppFontSize.body1.value,
          height: AppLineHeight.sm.value,
        ),
        helperStyle: TextStyle(
          color: foreground.active,
          fontWeight: AppFontWeight.regular.value,
          fontSize: AppFontSize.caption.value,
          height: AppLineHeight.xs.value,
        ),
        errorStyle: TextStyle(
          color: colorPalette.deepOrange,
          fontWeight: AppFontWeight.regular.value,
          fontSize: AppFontSize.caption.value,
          height: AppLineHeight.xs.value,
        ),
      ),
      colorScheme: ColorScheme(
        primary: foreground.active,
        primaryContainer: foregroundColor,
        secondary: colorPalette.primary[700]!,
        secondaryContainer: colorPalette.primary[700]!,
        surface: colorPalette.backgroundPalette.solidSurface,
        background: colorPalette.backgroundPalette.solidSurface,
        error: colorPalette.deepOrange,
        onPrimary: colorPalette.backgroundPalette.solidSurface,
        onSecondary: foreground.active,
        onSurface: foreground.active,
        onBackground: foreground.active,
        onError: colorPalette.backgroundPalette.solidSurface,
        brightness: brightness,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          alignment: Alignment.center,
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(
              vertical: Spacing.sm.height,
              horizontal: Spacing.xl.width,
            ),
          ),
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.disabled)) {
              return colorPalette.base[200];
            }

            //TODO: Need definition
            // if (states.contains(MaterialState.pressed)) {
            //   return foregroundColor;
            // }

            return colorPalette.base[900];
          }),
          foregroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.disabled)) {
              return foreground.disabled;
            }

            return colorPalette.base[200];
            // return invertedForeground.active;
          }),
          textStyle: MaterialStateProperty.all(
            appTextStyle.buttonMedium.copyWith(
              height: AppLineHeight.xs.value,
            ),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          alignment: Alignment.center,
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(
              vertical: Spacing.sm.height,
              horizontal: Spacing.xl.width,
            ),
          ),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          textStyle: MaterialStateProperty.all(
            appTextStyle.buttonMedium.copyWith(
              height: AppLineHeight.xs.value,
            ),
          ),
          side: MaterialStateProperty.all(
            BorderSide(color: foreground.active, width: 1),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          alignment: Alignment.center,
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(
              horizontal: Spacing.xs.width,
              vertical: Spacing.xs.height,
            ),
          ),
          textStyle: MaterialStateProperty.resolveWith((states) {
            return appTextStyle.buttonMedium.copyWith(
              color: states.contains(MaterialState.disabled)
                  ? foreground.soft
                  : foreground.active,
            );
          }),
        ),
      ),
      textTheme: TypographyBuilder.buildTextTheme(
        foreground.active,
        colorPalette.backgroundPalette.solidSurface,
      ),
      scrollbarTheme: const ScrollbarThemeData().copyWith(
        thumbColor: MaterialStateProperty.all(colorPalette.secondary[200]!),
        thumbVisibility: MaterialStateProperty.all(true),
        radius: Radius.circular(Spacing.md.value),
        thickness: MaterialStateProperty.all(Spacing.xxs.width),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: Colors.transparent,
        padding: EdgeInsets.zero,
        labelPadding: EdgeInsets.symmetric(
          vertical: Spacing.xs.height,
          horizontal: Spacing.sm.width,
        ),
        shape: StadiumBorder(
          side: BorderSide(color: colorPalette.base[200]!),
        ),
        showCheckmark: false,
        labelStyle: appTextStyle.calloutMedium.copyWith(
          /// Figma has 1.5 as line height. With this setting in Flutter,
          /// the text renders decentralized. Changed to 1.0 to fix this.
          height: AppLineHeight.xs.value,
        ),
        selectedColor: foreground.active,
      ),
      tabBarTheme: TabBarTheme(
        labelPadding: EdgeInsets.symmetric(horizontal: Spacing.sm.width),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(32),
          ),
        ),
        backgroundColor: brightness == Brightness.dark
            ? colorPalette.base.shade200
            : colorPalette.backgroundPalette.solidSurface,
      ),
    );
  }
}
