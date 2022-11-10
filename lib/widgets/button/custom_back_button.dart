import 'package:flutter/material.dart';
import 'package:flutter_core/flutter_core.dart';

///
/// Custom back button with default icon
///
class CustomBackButton extends StatelessWidget {
  /// On Tap back button. Default behavior is [Nav.maybePop()]
  final VoidCallback? onTap;

  /// It Defines the icon's color
  final Color? color;

  /// Creates a [CustomBackButton]
  const CustomBackButton({
    Key? key,
    this.onTap,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap ?? () async => await Nav.maybePop(),
      iconSize: 18.fontSize,
      color: color,
      splashRadius: 22.fontSize,
      icon: const Icon(Icons.arrow_left),
    );
  }
}
