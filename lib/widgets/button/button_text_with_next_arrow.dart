import 'package:flutter/material.dart';
import 'package:flutter_core/flutter_core.dart';

import 'custom_text_button.dart';

/// Text Button with next arrow
class ButtonTextWithNextArrow extends StatelessWidget {
  /// Default constructor
  const ButtonTextWithNextArrow({
    Key? key,
    this.style,
    required this.label,
    required this.onPressed,
    this.iconSize,
  }) : super(key: key);

  /// Text to be shown as button label
  final String label;

  /// button styles
  final ButtonStyle? style;

  /// Function to be called, when the button has been pressed
  final VoidCallback onPressed;

  ///Icon size
  final double? iconSize;

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
      iconLocation: CustomTextButtonIconLocation.trailing,
      onPressed: onPressed,
      icon: Icon(
        Icons.arrow_right,
        size: iconSize ?? 12.fontSize,
        color: context.colorScheme.onBackground,
      ),
      style: effectiveStyle.merge(
        ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.transparent),
        ),
      ),
    );
  }
}
