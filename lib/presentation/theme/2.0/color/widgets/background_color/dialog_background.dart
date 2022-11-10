part of 'background.dart';

class _DialogBackground extends Background {
  const _DialogBackground({
    Key? key,
    Widget? child,
  }) : super._(key: key, child: child);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.theme.isDarkTheme
          ? context.colorPalette.base.shade200
          : context.backgroundPalette.solidSurface,
      child: child,
    );
  }
}
