import 'package:flutter/material.dart';

import 'app_theme.dart';

///
/// ThemeData factory
///
abstract class ThemeFactory {
  /// Get/Create a light [ThemeData] instance.
  ///
  /// If the current ThemeData is null, a new instance is created, otherwise,
  /// the current instance is returned.
  static ThemeData light() => AppTheme.instance.lightTheme;

  /// Get/Create a dark [ThemeData] instance.
  ///
  /// If the current ThemeData is null, a new instance is created, otherwise,
  /// the current instance is returned.
  static ThemeData dark() => AppTheme.instance.darkTheme;
}
