import 'package:flutter/material.dart';

import '../../flutter_core.dart';

///
/// Custom IconButton
///
class CustomIconButton extends StatelessWidget {
  ///
  /// Callback method.
  ///
  final VoidCallback? onPressed;

  ///
  /// Custom icon.
  ///
  final IconData icon;

  ///
  /// Optional custom icon size, defaults to 24.fontSize
  ///
  final double? iconSize;

  ///
  /// IconButton size
  ///
  final double height;

  ///
  /// Enable/disable button.
  ///
  final bool enabled;

  ///
  /// Background color button.
  ///
  final Color? backgroundColor;

  ///
  /// Button Style.
  ///
  final ButtonStyle? buttonStyle;

  /// Is widget loading.
  ///
  final bool loading;

  ///
  /// Button Visual density
  ///
  final VisualDensity? visualDensity;

  ///
  /// Creates a CustomIconButton
  ///
  const CustomIconButton._({
    Key? key,
    required this.icon,
    required this.height,
    this.iconSize,
    this.enabled = true,
    this.onPressed,
    this.backgroundColor,
    this.buttonStyle,
    this.loading = false,
    this.visualDensity,
  }) : super(key: key);

  ///
  /// Creates a medium sized CustomIconButton
  ///
  factory CustomIconButton.medium({
    required IconData icon,
    bool enabled = true,
    double? iconSize,
    VoidCallback? onPressed,
    Color? color,
    Key? key,
    bool loading = false,
    VisualDensity? visualDensity,
  }) {
    return CustomIconButton._(
      key: key,
      icon: icon,
      iconSize: iconSize,
      onPressed: onPressed,
      enabled: enabled,
      backgroundColor: color,
      height: AppThemeBase.buttonHeightMD,
      loading: loading,
      visualDensity: visualDensity,
    );
  }

  ///
  /// Creates a medium sized CustomIconButton
  ///
  factory CustomIconButton.large({
    required IconData icon,
    double? iconSize,
    bool enabled = true,
    VoidCallback? onPressed,
    Color? color,
    ButtonStyle? buttonStyle,
    Key? key,
    bool loading = false,
    VisualDensity? visualDensity,
  }) {
    return CustomIconButton._(
      key: key,
      icon: icon,
      iconSize: iconSize,
      onPressed: onPressed,
      enabled: enabled,
      backgroundColor: color,
      buttonStyle: buttonStyle,
      height: AppThemeBase.buttonHeightLG,
      loading: loading,
      visualDensity: visualDensity,
    );
  }

  ///
  /// Creates a custom sized CustomIconButton
  ///
  factory CustomIconButton.custom({
    required IconData icon,
    required double size,
    bool enabled = true,
    VoidCallback? onPressed,
    Color? color,
    Key? key,
  }) {
    return CustomIconButton._(
      key: key,
      icon: icon,
      onPressed: onPressed,
      enabled: enabled,
      backgroundColor: color,
      height: size,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: enabled ? onPressed : null,
      style: buttonStyle ??
          context.theme.elevatedButtonTheme.style?.copyWith(
            backgroundColor: MaterialStateProperty.all(backgroundColor),
            foregroundColor:
                MaterialStateProperty.all(context.colorPalette.base),
            shape: MaterialStateProperty.all(const CircleBorder()),
            elevation: MaterialStateProperty.all(0),
            padding: MaterialStateProperty.all(EdgeInsets.zero),
            fixedSize: MaterialStateProperty.all(
              Size.fromHeight(height),
            ),
            visualDensity: visualDensity,
          ),
      child: Center(
        child: loading
            ? const SimpleLoading(
                width: 10,
              )
            : Icon(
                icon,
                size: iconSize ?? 24.fontSize,
              ),
      ),
    );
  }
}
