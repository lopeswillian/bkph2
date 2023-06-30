import 'package:apph2/theme/app_theme_base.dart';
import 'package:flutter/material.dart';


/// Class to initialize calculation for responsiveness
/// must be called when the app is started
class SizeConfig {
  /// the value of [screen width] of design given by [designer]
  late int designScreenWidth;

  /// the value of [screen height] of design given by [designer]
  late int designScreenHeight;

  SizeConfig._({
    required this.designScreenHeight,
    required this.designScreenWidth,
  });

  ///
  /// Initializes SizeConfig with correct design screen sizes.
  ///
  factory SizeConfig.init() {
    return SizeConfig._(
      designScreenHeight: AppThemeBase.designScreenHeight,
      designScreenWidth: AppThemeBase.designScreenWidth,
    );
  }

  /// [width] of current device
  static late double _screenWidth;

  /// [height] of current device
  static late double _screenHeight;

  /// value to initialize [fontSize]
  static double textMultiplier = 1;

  /// value to initialize [image sizes]
  static double imageSizeMultiplier = 1;

  /// value to initialize [height] values
  static double heightMultiplier = 1;

  /// value to initialize [width] values
  static double widthMultiplier = 1;

  /// value to get information about [orientation]
  static bool isPortrait = true;

  /// value to get information about [portrait] in in [mobile] or [not]
  static bool isMobilePortrait = false;

  /// the method to initialize [SizeConfig] for responsive calculation
  void config(BoxConstraints constraints, Orientation orientation) {
    if (orientation == Orientation.portrait) {
      _screenWidth = constraints.maxWidth;
      _screenHeight = constraints.maxHeight;
      isPortrait = true;
      if (_screenWidth < 450) {
        isMobilePortrait = true;
      }
    } else {
      _screenWidth = constraints.maxHeight;
      _screenHeight = constraints.maxWidth;
      isPortrait = false;
      isMobilePortrait = false;
    }
    imageSizeMultiplier = heightMultiplier = _screenHeight / designScreenHeight;
    widthMultiplier = textMultiplier = _screenWidth / designScreenWidth;
  }
}
