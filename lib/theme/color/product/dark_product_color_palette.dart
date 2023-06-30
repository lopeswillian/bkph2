import 'package:flutter/material.dart';

import 'product_color_palette.dart';

///
/// Products color palette definition for Dark theme.
///
class DarkProductColorPalette implements IProductColorPalette {
  @override
  AssetsColorPalette get funds => AssetsColorPalette(
        base: const Color(0xFF7E80FB),
        accent: const Color(0xFFF875D3),
      );

  @override
  AssetsColorPalette get fixedIncome => AssetsColorPalette(
        base: const Color(0xFF53BAFF),
        accent: const Color(0xFFD1FFFF),
      );

  @override
  AssetsColorPalette get treasure => AssetsColorPalette(
        base: const Color(0xFF4CE6FA),
        accent: const Color(0xFFA75FF8),
      );

  @override
  AssetsColorPalette get privatePension => AssetsColorPalette(
        base: const Color(0xFFDDDEE4),
        accent: const Color(0xFF9194A3),
      );

  @override
  AssetsColorPalette get variableIncome => AssetsColorPalette(
        base: const Color(0xFF3F4CEB),
        accent: const Color(0xFFCD49AC),
      );

  @override
  AssetsColorPalette get stocksFutures => AssetsColorPalette(
        base: const Color(0xFFAB47BC),
        accent: const Color(0xFFBC5B47),
      );

  @override
  AssetsColorPalette get structured => AssetsColorPalette(
        base: const Color(0xFFEC407A),
        accent: const Color(0xFFECEC40),
      );
}
