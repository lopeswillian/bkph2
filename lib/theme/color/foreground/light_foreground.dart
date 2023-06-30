import 'package:flutter/material.dart';

import 'foreground_color_palette.dart';

///
/// Foreground color palette definition for Light theme.
///
class LightForeground implements IForegroundColorPalette {
  @override
  Color get active => const Color(0xff050922);

  @override
  Color get normal => const Color(0xff050922).withOpacity(0.87);

  @override
  Color get minimal => const Color(0xff050922).withOpacity(0.6);

  @override
  Color get disabled => const Color(0xff050922).withOpacity(0.38);

  @override
  Color get detail => const Color(0xff050922).withOpacity(0.16);

  @override
  Color get soft => const Color(0xff050922).withOpacity(0.08);
}
