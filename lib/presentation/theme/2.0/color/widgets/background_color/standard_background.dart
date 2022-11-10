part of 'background.dart';

class _StandardBackground extends Background {
  const _StandardBackground({
    Key? key,
    Widget? child,
  }) : super._(key: key, child: child);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        /// Gradient surfaces needs a solid background color
        color: context.backgroundPalette.solidSurface,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: context.backgroundPalette.background,
        ),
        child: child,
      ),
    );
  }
}
