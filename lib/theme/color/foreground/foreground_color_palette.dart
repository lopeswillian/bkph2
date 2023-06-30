import 'package:flutter/material.dart';

///
/// Color palette definition for texts, icons and graphic elements.
///
abstract class IForegroundColorPalette {
  /// Active item color (default color)
  Color get active;

  /// TODO: Get correct definition from UX Team
  Color get normal;

  /// TODO: Get correct definition from UX Team
  Color get minimal;

  /// Color for disabled elements
  Color get disabled;

  /// TODO: Get correct definition from UX Team
  Color get detail;

  /// TODO: Get correct definition from UX Team
  Color get soft;
}
