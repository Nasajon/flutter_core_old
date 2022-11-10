import 'package:flutter/material.dart';

import '../../../flutter_core.dart';

///
/// Simple loading animation
///
class SimpleLoading extends StatelessWidget {
  ///
  /// Loading width
  ///
  final double? height;

  ///
  /// Loading width
  ///
  final double? width;

  ///
  /// Creates a new [SimpleLoading]
  ///
  const SimpleLoading({
    Key? key,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimationBuilder(
      name: 'Simple loading',
      darkThemeAlternative: 'Simple loading dark',
      height: height,
      width: width,
      repeat: true,
    );
  }
}
