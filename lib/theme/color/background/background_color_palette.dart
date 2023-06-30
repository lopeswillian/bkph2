import 'package:flutter/material.dart';

///
/// Color palette definition for surface elements.
///
/// All colors here are treated as Gradients, including solid colors.
///
abstract class IBackgroundColorPalette {
  /// Surface solid color, for some use cases like definitions in [ThemeData].
  /// It's the main color used to create the [surface] gradient.
  Color get solidSurface;

  /// Background solid color.
  /// It's the main color used to create the [background] gradient.
  Color get solidBackground => solidSurface;

  /// The background color is the most low level color in the App.
  /// There's nothing below the element that uses this color.
  Gradient get background;

  /// Surface color is a background color with some emphasis.
  ///
  /// It can be used as a contrast to [background] color, usually in cards or
  /// other elements that needs more attention.
  Gradient get surface;

  /// Default background for success pages.
  Gradient get success;

  /// Default background for error pages.
  Gradient get error;
}
