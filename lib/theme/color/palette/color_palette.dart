import 'package:flutter/material.dart';

import '../color.dart';

///
/// Color palette definition, based on
/// https://www.figma.com/file/aMf34pAeTuDm6aY4l8IAOT/Paleta-Completa?node-id=3737%3A14036
///
abstract class IColorPalette {
  /// Background surface colors
  IBackgroundColorPalette get backgroundPalette;

  /// Texts, icons and graphic elements color definition.
  IForegroundColorPalette get foreground;

  /// Risk level colors
  IRiskColorPalette get risk;

  /// Investment products level
  IProductColorPalette get product;

  /// Base colors
  MaterialColor get base;

  /// Primary colors
  MaterialColor get primary;

  /// Secondary colors
  MaterialColor get secondary;

  /// Tertiary colors
  MaterialColor get tertiary;

  /// Light green colors
  MaterialColor get lightGreen;

  /// Amber colors
  MaterialColor get amber;

  /// Deep orange colors
  MaterialColor get deepOrange;
}
