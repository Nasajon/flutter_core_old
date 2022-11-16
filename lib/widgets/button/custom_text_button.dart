import 'package:flutter/material.dart';
import 'package:flutter_core/flutter_core.dart';

/// [CustomTextButton.icon] location
enum CustomTextButtonIconLocation {
  /// Icon to the left side of text
  leading,

  /// Icon to the right side of text
  trailing
}

/// Custom Text Button
class CustomTextButton extends StatelessWidget {
  /// Button label text.
  final String text;

  /// Button label alignment. Defaults to [TextAlign.center]
  final TextAlign textAlignment;

  /// Callback method.
  final VoidCallback? onPressed;

  /// Enable/disable button.
  final bool enabled;

  /// Icon
  final Icon? icon;

  /// Show loading
  final bool loading;

  /// Icon location, if [icon] is not null. Defaults to
  /// [CustomTextButtonIconLocation.trailing]
  final CustomTextButtonIconLocation? iconLocation;

  /// Customizes this button's appearance.
  ///
  /// Non-null properties of this style override the corresponding
  /// properties in [themeStyleOf] and [defaultStyleOf]. [MaterialStateProperty]s
  /// that resolve to non-null values will similarly override the corresponding
  /// [MaterialStateProperty]s in [themeStyleOf] and [defaultStyleOf].
  ///
  /// Null by default.
  final ButtonStyle? style;

  /// Creates a CustomTextButton
  const CustomTextButton._({
    Key? key,
    required this.text,
    this.enabled = true,
    this.onPressed,
    this.icon,
    this.loading = false,
    this.style,
    this.textAlignment = TextAlign.center,
    this.iconLocation = CustomTextButtonIconLocation.trailing,
  }) : super(key: key);

  ///
  /// Creates a small sized CustomTextButton
  ///
  factory CustomTextButton.small({
    required String text,
    VoidCallback? onPressed,
    bool enabled = true,
    bool loading = false,
    ButtonStyle? style,
    Icon? icon,
    CustomTextButtonIconLocation? iconLocation =
        CustomTextButtonIconLocation.trailing,
  }) {
    final effectiveStyle = style ?? const ButtonStyle();

    final textStyle = effectiveStyle.textStyle
        ?.resolve(Set.of(MaterialState.values))
        ?.copyWith(fontSize: 12.fontSize);

    return CustomTextButton._(
      text: text,
      onPressed: onPressed,
      enabled: enabled,
      loading: loading,
      icon: icon,
      iconLocation: iconLocation,
      style: effectiveStyle.copyWith(
        textStyle: MaterialStateProperty.all(textStyle),
      ),
    );
  }

  ///
  /// Creates a small sized CustomTextButton to
  ///
  factory CustomTextButton.smallwithbold({
    required String text,
    VoidCallback? onPressed,
    bool enabled = true,
    bool loading = false,
    ButtonStyle? style,
    Icon? icon,
    CustomTextButtonIconLocation? iconLocation =
        CustomTextButtonIconLocation.trailing,
  }) {
    final effectiveStyle = style ?? const ButtonStyle();

    return CustomTextButton._(
      text: text,
      onPressed: onPressed,
      enabled: enabled,
      loading: loading,
      icon: icon,
      iconLocation: iconLocation,
      style: effectiveStyle.merge(
        ButtonStyle(
          textStyle: MaterialStateProperty.all(
            TextStyle(
              fontSize: 12.fontSize,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }

  ///
  /// Creates a search Text CustomTextButton to cancel
  ///
  factory CustomTextButton.searchText({
    required String text,
    VoidCallback? onPressed,
    bool enabled = true,
    bool loading = false,
    ButtonStyle? style,
    Icon? icon,
    CustomTextButtonIconLocation? iconLocation =
        CustomTextButtonIconLocation.trailing,
  }) {
    final effectiveStyle = style ?? const ButtonStyle();

    return CustomTextButton._(
      text: text,
      onPressed: onPressed,
      enabled: enabled,
      loading: loading,
      icon: icon,
      iconLocation: iconLocation,
      style: effectiveStyle.merge(
        ButtonStyle(
          textStyle: MaterialStateProperty.all(
            TextStyle(
              fontSize: 16.fontSize,
              fontWeight: FontWeight.w300,
              decorationColor: Colors.grey,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ),
    );
  }

  /// Creates a large sized CustomTextButton
  factory CustomTextButton.large({
    required String text,
    VoidCallback? onPressed,
    bool enabled = true,
    Icon? icon,
    CustomTextButtonIconLocation? iconLocation =
        CustomTextButtonIconLocation.trailing,
    bool loading = false,
    ButtonStyle? style,
    TextAlign textAlignment = TextAlign.center,
  }) {
    final effectiveStyle = style ?? const ButtonStyle();

    return CustomTextButton._(
      text: text,
      onPressed: onPressed,
      enabled: enabled,
      icon: icon,
      iconLocation: iconLocation,
      loading: loading,
      style: effectiveStyle.merge(
        ButtonStyle(
          textStyle: MaterialStateProperty.all(
            TextStyle(fontSize: 14.fontSize),
          ),
        ),
      ),
      textAlignment: textAlignment,
    );
  }

  @override
  Widget build(BuildContext context) {
    ButtonStyle effectiveStyle = style ?? const ButtonStyle();

    if (effectiveStyle.textStyle == null) {
      effectiveStyle = effectiveStyle.merge(
        ButtonStyle(
          textStyle: MaterialStateProperty.all(
            context.textTheme.button!.copyWith(
              fontWeight: context.textTheme.fontWeightMedium,
            ),
          ),
        ),
      );
    }

    final label = Text(
      text,
      textAlign: textAlignment,
      style: style?.textStyle?.resolve(Set.of(MaterialState.values)),
    );

    return TextButton(
      onPressed: enabled ? onPressed : null,
      style: effectiveStyle,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: loading
            ? SimpleLoading(height: 14.responsiveHeight)
            : Builder(
                builder: (context) {
                  if (icon == null) {
                    return label;
                  }

                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (_isLeading)
                        Padding(
                          padding: EdgeInsets.zero,
                          // only(
                          //   right: context.theme.spacingInlineNano,
                          // ),
                          child: icon!,
                        ),
                      label,
                      if (_isTrailing)
                        Padding(
                          padding: EdgeInsets.only(
                            left: context.theme.spacingInlineNano,
                          ),
                          child: icon!,
                        ),
                    ],
                  );
                },
              ),
      ),
    );
  }

  bool get _isLeading => iconLocation == CustomTextButtonIconLocation.leading;

  bool get _isTrailing => iconLocation == CustomTextButtonIconLocation.trailing;
}
