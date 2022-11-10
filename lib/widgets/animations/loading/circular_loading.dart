import 'package:flutter/material.dart';
import 'package:flutter_core/flutter_core.dart';

/// CircularLoading
class CircularLoading extends StatelessWidget {
  ///
  /// Loading width
  ///
  final double? height;

  ///
  /// Loading width
  ///
  final double? width;

  /// CircularLoading
  const CircularLoading({Key? key, this.height, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: CircularProgressIndicator(
        backgroundColor: Colors.transparent,
        color: context.colorScheme.colorBlueLight,
      ),
    );
  }
}
