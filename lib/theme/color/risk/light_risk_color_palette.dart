import 'package:flutter/material.dart';

import 'risk_color_palette.dart';

///
/// Risk levels color palette definition for Light theme.
///
class LightRiskColorPalette implements IRiskColorPalette {
  @override
  Color get low => const Color(0xff7CA1C0);

  @override
  Color get medium => const Color(0xff28388F);

  @override
  Color get high => const Color(0xff3C62FB);

  @override
  Color get higher => const Color(0xff0C0B38);
}
