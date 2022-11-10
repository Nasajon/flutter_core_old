part of 'background.dart';

class _CustomBackground extends Background {
  final BoxDecoration background;
  final BoxDecoration? darkBackground;
  final Color? baseColor;

  const _CustomBackground({
    Key? key,
    Widget? child,
    required this.background,
    this.darkBackground,
    this.baseColor,
  }) : super._(key: key, child: child);

  @override
  Widget build(BuildContext context) {
    final isDark = context.colorScheme.isDarkTheme;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: baseColor ?? context.backgroundPalette.solidSurface,
      ),
      child: DecoratedBox(
        decoration:
            isDark && darkBackground != null ? darkBackground! : background,
        child: child,
      ),
    );
  }
}
