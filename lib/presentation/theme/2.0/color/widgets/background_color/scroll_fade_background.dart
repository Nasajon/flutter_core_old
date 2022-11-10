part of 'background.dart';

class _ScrollFadeBackground extends Background {
  const _ScrollFadeBackground({
    Key? key,
    Widget? child,
  }) : super._(key: key, child: child);

  @override
  Widget build(BuildContext context) {
    return Background.custom(
      baseColor: Colors.transparent,
      background: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white.withOpacity(0.0),
            Colors.white,
          ],
          stops: const [0.0, 0.4792],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          transform: const GradientRotation(-pi),
        ),
      ),
      darkBackground: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color.fromRGBO(5, 9, 34, 0),
            LightForeground().active,
          ],
          stops: const [0.07, 0.7687],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          transform: const GradientRotation(-pi),
        ),
      ),
    );
  }
}
