import 'package:apph2/theme/responsive/responsive.dart';
import 'package:flutter/material.dart';

/// Default app font family
const String appFontFamily = 'Poppins';

///
/// App possible FontWeight list
///
enum AppFontWeight {
  /// Bold text - 700
  bold(FontWeight.w700),

  /// Semi-bold text - 600
  medium(FontWeight.w600),

  /// Normal text - 400
  regular(FontWeight.w400),

  /// Light text - 300
  light(FontWeight.w300);

  /// Returns the FontWeight associated with this enumeration
  final FontWeight value;

  /// Default [AppFontWeight] constructor
  const AppFontWeight(this.value);
}

///
/// App possible line height (Text height) list
///
enum AppLineHeight {
  /// Extra small height = 1.0
  xs(1.0),

  /// Small height = 1.25
  sm(1.25),

  /// Medium height = 1.5
  md(1.5),

  /// Large height = 2.0
  lg(2.0);

  /// Line height spacing value
  final double value;

  /// Default [AppLineHeight] constructor
  const AppLineHeight(this.value);
}

///
/// App possible font size list
///
enum AppFontSize {
  /// Font size for Caption/bodyTinny = 8
  tinny(8),

  /// Font size for Caption/bodyExtraSmall = 10
  small(10),

  /// Font size for Caption/bodySmall = 12
  caption(12),

  /// Font size for Button/labelLarge = 14
  button(14),

  /// Font size for Callout = 14
  callout(14),

  /// Font size for BodyText2/bodyMedium = 16
  body2(16),

  /// Font size for BodyText1/bodyLarge = 18
  body1(18),

  /// Font size for Headline3/displaySmall = 24
  headline3(24),

  /// Font size for Headline2/displayMedium = 32
  headline2(32),

  /// Font size for Headline1/displayLarge = 40
  headline1(40);

  final int _value;

  /// Default [AppFontSize] constructor
  const AppFontSize(this._value);

  /// Returns the font size with responsiveness
  double get value => _value.fontSize;
}
