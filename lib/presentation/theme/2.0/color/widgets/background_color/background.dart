import 'dart:math';

import 'package:flutter/material.dart';

import '../../../../../presentation.dart';

part 'custom_background.dart';
part 'dialog_background.dart';
part 'error_background.dart';
part 'scroll_fade_background.dart';
part 'standard_background.dart';
part 'success_background.dart';
part 'surface_background.dart';

///
/// Background color utility Widget to work with current
/// [IBackgroundColorPalette] definitions.
///
/// Each factory in this class represents the color defined in [IBackgroundColorPalette].
///
abstract class Background extends StatelessWidget {
  /// Child Widget
  final Widget? child;

  const Background._({Key? key, this.child}) : super(key: key);

  ///
  /// Creates the widget representation of [IBackgroundColorPalette.background].
  ///
  /// "The background color it's the most low level color in the App.
  /// There's nothing below the element that uses this color."
  ///
  const factory Background({
    Widget? child,
  }) = _StandardBackground;

  ///
  /// Creates the widget representation of [IBackgroundColorPalette.surface]
  ///
  /// "Surface color it's a background color with some emphasis.
  /// It can be used as a contrast to [backgroundPalette] color, usually in
  /// cards or other elements that needs more attention."
  ///
  const factory Background.surface({
    Widget? child,
  }) = _SurfaceBackground;

  ///
  /// Creates the default error background.
  ///
  const factory Background.error({
    Widget? child,
  }) = _ErrorBackground;

  ///
  /// Creates the default success background.
  ///
  const factory Background.success({
    Widget? child,
  }) = _SuccessBackground;

  ///
  /// Creates a background with custom colors.
  ///
  /// If you need different colors for light and dark themes, you can set both
  /// [background] and [darkBackground], respectively.
  ///
  const factory Background.custom({
    Widget? child,

    /// Required background color.
    /// If [darkBackground] is set, this is used for light theme only.
    required BoxDecoration background,

    /// Optional background for dark theme.
    BoxDecoration? darkBackground,

    /// Optional base color. Can be used in cases where dark/light backgrounds
    /// contains transparency and need a solid color as background.
    Color? baseColor,
  }) = _CustomBackground;

  /// Creates a background with a fade effect at bottom.
  const factory Background.scrollFade({Widget? child}) = _ScrollFadeBackground;

  /// Creates a background for dialogs.
  const factory Background.dialog({Widget? child}) = _DialogBackground;
}
