import 'package:flutter/material.dart';

///
/// Color palette definition for Products.
///
abstract class IProductColorPalette {
  /// Private pension color
  AssetsColorPalette get privatePension;

  /// Treasure color
  AssetsColorPalette get treasure;

  /// Fixed income color
  AssetsColorPalette get fixedIncome;

  /// Funds color
  AssetsColorPalette get funds;

  /// Variable income color
  AssetsColorPalette get variableIncome;

  /// Stocks and Futures color
  AssetsColorPalette get stocksFutures;

  /// Structured investments color
  AssetsColorPalette get structured;
}

/// Colors to assets
class AssetsColorPalette {
  /// Base color
  final Color base;

  /// Accent color
  final Color accent;

  ///Constructor to assets color
  AssetsColorPalette({
    required this.base,
    required this.accent,
  });
}
