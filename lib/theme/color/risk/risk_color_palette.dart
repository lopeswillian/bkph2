import 'package:flutter/material.dart';

///
/// Color palette definition for Risk levels.
///
abstract class IRiskColorPalette {
  /// Low level
  Color get low;

  /// Medium level
  Color get medium;

  /// High level
  Color get high;

  /// Higher level
  Color get higher;
}
