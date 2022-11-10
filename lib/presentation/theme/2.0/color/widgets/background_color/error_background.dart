part of 'background.dart';

class _ErrorBackground extends Background {
  const _ErrorBackground({
    Key? key,
    Widget? child,
  }) : super._(key: key, child: child);

  @override
  Widget build(BuildContext context) {
    return LocalTheme.dark(
      invertSystemUiOverlayStyle: true,
      builder: (context) {
        return Stack(
          children: [
            DecoratedBox(
              decoration: BoxDecoration(color: context.colorPalette.base),
              child: Opacity(
                opacity: 0.24,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: context.backgroundPalette.error,
                  ),
                  child: const SizedBox.expand(),
                ),
              ),
            ),
            if (child != null) child!,
          ],
        );
      },
    );
  }
}
