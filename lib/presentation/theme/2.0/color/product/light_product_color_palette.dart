import 'package:flutter/material.dart';

import 'product_color_palette.dart';

///
/// Products color palette definition for Light theme.
///
class LightProductColorPalette implements IProductColorPalette {
  @override
  Color get privatePension => const Color(0xffBCBEC8);

  @override
  Color get treasure => const Color(0xff37DDF6);

  @override
  Color get fixedIncome => const Color(0xff0099FF);

  @override
  Color get funds => const Color(0xff3D46F2);

  @override
  Color get variableIncome => const Color(0xff2936C4);

  @override
  Color get stocksFutures => const Color(0xff6E57FF);

  @override
  Color get structured => const Color(0xff254499);
}
