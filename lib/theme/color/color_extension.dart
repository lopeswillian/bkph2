import 'package:flutter/material.dart';

import '../app_theme.dart';
import '../theme.dart';

///
/// Theme extensions for colors on BuildContext
///
extension ColorThemeContextExtension on BuildContext {
  /// Returns the [IColorPalette] implementation based on current theme
  /// brightness associated to the current context
  IColorPalette get colorPalette =>
      Theme.of(this).colorScheme.brightness == Brightness.dark
          ? DarkColorPalette()
          : LightColorPalette();

  /// Returns the color palette definition for background surfaces.
  IBackgroundColorPalette get backgroundPalette =>
      colorPalette.backgroundPalette;

  /// Returns the color palette definition for texts, icons and graphic
  /// elements, based in the current theme, associated to context.
  IForegroundColorPalette get foreground => colorPalette.foreground;

  /// Returns the color palette definition for Risk levels.
  IRiskColorPalette get riskColors => colorPalette.risk;

  /// Returns the color palette definition for investment products.
  IProductColorPalette get productColors => colorPalette.product;
}

/// Colors extensions on [ThemeData]
extension ColorThemeExtension on ThemeData {
  /// Returns the [IColorPalette] implementation based on current theme brightness
  IColorPalette get colorPalette => colorScheme.brightness == Brightness.dark
      ? AppTheme.instance.darkColorPalette
      : AppTheme.instance.lightColorPalette;

  /// Returns the color palette definition for background surfaces.
  IBackgroundColorPalette get backgroundPalette =>
      colorPalette.backgroundPalette;
}
