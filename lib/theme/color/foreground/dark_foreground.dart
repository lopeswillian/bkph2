import 'package:flutter/material.dart';

import 'foreground_color_palette.dart';

///
/// Foreground color palette definition for Dark theme.
///
class DarkForeground implements IForegroundColorPalette {
  @override
  Color get active => const Color(0xffFAFBFF);

  @override
  Color get normal => const Color(0xffFAFBFF).withOpacity(0.9);

  @override
  Color get minimal => const Color(0xffFAFBFF).withOpacity(0.7);

  @override
  Color get disabled => const Color(0xffFAFBFF).withOpacity(0.5);

  @override
  Color get detail => const Color(0xffFAFBFF).withOpacity(0.25);

  @override
  Color get soft => const Color(0xffFAFBFF).withOpacity(0.15);
}
