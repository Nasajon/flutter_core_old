import 'package:flutter/material.dart';
import 'package:flutter_core/flutter_core.dart';

/// Text Button with next arrow
class ButtonTextWithNextArrow extends StatelessWidget {
  /// Default constructor
  const ButtonTextWithNextArrow({
    Key? key,
    this.style,
    required this.label,
    required this.onPressed,
    this.iconSize,
    this.iconData,
  }) : super(key: key);

  /// Text to be shown as button label
  final String label;

  /// button styles
  final ButtonStyle? style;

  /// Function to be called, when the button has been pressed
  final VoidCallback onPressed;

  ///Icon size
  final double? iconSize;

  /// The icon will show in the button
  final IconData? iconData;

  @override
  Widget build(BuildContext context) {
    ButtonStyle effectiveStyle = style ?? const ButtonStyle();

    if (effectiveStyle.padding == null) {
      effectiveStyle = effectiveStyle.merge(
        ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.zero),
        ),
      );
    }

    return CustomTextButton.smallwithbold(
      text: label,
      iconLocation: CustomTextButtonIconLocation.leading,
      onPressed: onPressed,
      icon: Icon(
        iconData ?? Icons.keyboard_arrow_right,
        size: iconSize ?? 18.fontSize,
        color: context.colorPalette.base,
      ),
      style: ElevatedButtonTheme.of(context).style!.copyWith(
            minimumSize: MaterialStateProperty.all(
              const Size(130, 40),
            ),
            padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(
                horizontal: Spacing.md.value,
                // vertical: Spacing.xs.value,
              ),
            ),
            textStyle: MaterialStateProperty.all(
              context.textTheme.button!.copyWith(),
            ),
          ),
    );
  }
}
