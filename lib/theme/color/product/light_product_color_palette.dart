import 'package:flutter/material.dart';

import 'product_color_palette.dart';

///
/// Products color palette definition for Light theme.
///
class LightProductColorPalette implements IProductColorPalette {
  @override
  AssetsColorPalette get funds => AssetsColorPalette(
        base: const Color(0xFF5D65F7),
        accent: const Color(0xFFF75DCB),
      );

  @override
  AssetsColorPalette get fixedIncome => AssetsColorPalette(
        base: const Color(0xFF38A8FF),
        accent: const Color(0xFFC9FFFF),
      );

  @override
  AssetsColorPalette get treasure => AssetsColorPalette(
        base: const Color(0xFF37DDF6),
        accent: const Color(0xFF9743F7),
      );

  @override
  AssetsColorPalette get privatePension => AssetsColorPalette(
        base: const Color(0xFFBCBEC8),
        accent: const Color(0xFF636779),
      );

  @override
  AssetsColorPalette get variableIncome => AssetsColorPalette(
        base: const Color(0xFF2936C4),
        accent: const Color(0xFFC4299D),
      );

  @override
  AssetsColorPalette get stocksFutures => AssetsColorPalette(
        base: const Color(0xFF9C27B0),
        accent: const Color(0xFFB03E27),
      );

  @override
  AssetsColorPalette get structured => AssetsColorPalette(
        base: const Color(0xFFE91E63),
        accent: const Color(0xFFE9E91E),
      );
}
