part of 'background.dart';

class _SurfaceBackground extends Background {
  const _SurfaceBackground({
    Key? key,
    Widget? child,
  }) : super._(key: key, child: child);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        /// Gradient surfaces needs a solid background color
        color: context.backgroundPalette.solidBackground,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: context.backgroundPalette.surface,
        ),
        child: child,
      ),
    );
  }
}
