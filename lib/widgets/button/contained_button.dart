import 'package:flutter/material.dart';

import '../../flutter_core.dart';

///
/// Custom Contained Button
///
class ContainedButton extends StatelessWidget {
  ///
  /// Button label text.
  ///
  final String? text;

  ///
  /// Callback method.
  ///
  final VoidCallback? onPressed;

  ///
  /// Enable/disable button.
  ///
  final bool enabled;

  ///
  /// Override default button style
  ///
  final ButtonStyle? style;

  ///
  /// Show loading
  ///
  final bool loading;

  ///
  /// Child instead Text
  ///
  final Widget? child;

  /// The minimum height of the button
  final double? minimumHeight;

  /// Whether the button can fill the entire width or not
  final bool expand;

  ///
  //Set a custom text stle to the [ContainedButton]
  final TextStyle? textStyle;

  ///
  /// Creates a CustomContainedButton
  ///
  const ContainedButton._({
    Key? key,
    this.text,
    this.enabled = true,
    this.onPressed,
    this.style,
    this.loading = false,
    this.minimumHeight,
    this.child,
    this.textStyle,
    this.expand = true,
  })  : assert(
          text != null || child != null,
          'Required text or child parameters',
        ),
        super(key: key);

  ///
  /// Creates a small sized ContainedButton
  ///
  factory ContainedButton.small({
    String? text,
    VoidCallback? onPressed,
    bool enabled = true,
    ButtonStyle? style,
    Widget? child,
    TextStyle? textStyle,
  }) {
    return ContainedButton._(
      text: text,
      onPressed: onPressed,
      enabled: enabled,
      minimumHeight: 28.0,
      textStyle: textStyle,
      style: style ??
          ElevatedButton.styleFrom(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          ),
      child: child,
    );
  }

  ///
  /// Creates a large sized ContainedButton
  ///
  factory ContainedButton.large({
    String? text,
    VoidCallback? onPressed,
    bool enabled = true,
    ButtonStyle? style,
    bool loading = false,
    Widget? child,
    TextStyle? textStyle,
    bool expand = true,
  }) {
    return ContainedButton._(
      text: text,
      onPressed: onPressed,
      enabled: enabled,
      style: style,
      loading: loading,
      textStyle: textStyle,
      expand: expand,
      child: child,
    );
  }

  /// Function to organize the display of the child button
  Widget _childButton(BuildContext context) {
    if (loading) {
      return SimpleLoading(
        height: 14.responsiveHeight,
      );
    }

    //TODO: Fix this...
    if (child == null) {
      return Text(
        text!,
        style: textStyle ?? context.text.buttonMedium,
      );
    }

    return child!;
  }

  @override
  Widget build(BuildContext context) {
    final btnContent = AnimatedSwitcher(
      duration: const Duration(milliseconds: 400),
      child: _childButton(context),
    );
    return SizedBox(
      height: minimumHeight,
      child: ElevatedButton(
        onPressed: enabled ? onPressed : null,
        style: style ??
            context.theme.elevatedButtonTheme.style!.copyWith(
              foregroundColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.disabled)) {
                    return context.colorPalette.base.shade900.withOpacity(.5);
                  }
                  return null; // Use the component's default.
                },
              ),
              backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.disabled)) {
                    return context.foreground.disabled;
                  }
                  return null; // Use the component's default.
                },
              ),
            ),
        child: expand ? Center(child: btnContent) : btnContent,
      ),
    );
  }
}
