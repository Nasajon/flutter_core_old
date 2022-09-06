import 'package:flutter/material.dart';

extension CoreAssetsStringExtension on String {
  AssetImage get coreImage {
    return AssetImage(
      "assets/images/$this",
      package: 'flutter_core',
    );
  }
}
