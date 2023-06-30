import 'package:flutter/material.dart';

import '../color.dart';

///
/// Color palette definition for Light theme.
///
class LightColorPalette implements IColorPalette {
  @override
  IBackgroundColorPalette get backgroundPalette =>
      LightBackgroundColorPalette();

  @override
  IForegroundColorPalette get foreground => LightForeground();

  @override
  IRiskColorPalette get risk => LightRiskColorPalette();

  @override
  IProductColorPalette get product => LightProductColorPalette();

  @override
  MaterialColor get base => const MaterialColor(
        0xffFAFBFF,
        {
          50: Color(0xffFAFBFF),
          100: Color(0xffF0F1F5),
          200: Color(0xffDDDEE4),
          300: Color(0xffBCBEC8),
          400: Color(0xff9194A3),
          500: Color(0xff636779),
          600: Color(0xff3E4256),
          700: Color(0xff24283E),
          800: Color(0xff12162C),
          900: Color(0xff050922),
        },
      );

  @override
  MaterialColor get primary => const MaterialColor(
        0xff38A8FF,
        {
          50: Color(0xffEBF8FF),
          100: Color(0xffCDEEFF),
          200: Color(0xffA6E0FF),
          300: Color(0xff78CDFF),
          400: Color(0xff53BAFF),
          500: Color(0xff38A8FF),
          600: Color(0xff2A8DF1),
          700: Color(0xff1E6ACD),
          800: Color(0xff154495),
          900: Color(0xff0B2054),
        },
      );

  @override
  MaterialColor get secondary => const MaterialColor(
        0xff5D65F7,
        {
          50: Color(0xffEBEBFF),
          100: Color(0xffD6D5FF),
          200: Color(0xffBDBCFF),
          300: Color(0xff9D9EFD),
          400: Color(0xff7E80FB),
          500: Color(0xff5D65F7),
          600: Color(0xff3F4CEB),
          700: Color(0xff2936C4),
          800: Color(0xff192488),
          900: Color(0xff011367),
        },
      );

  @override
  MaterialColor get tertiary => const MaterialColor(
        0xff37DDF6,
        {
          50: Color(0xffE6FEFF),
          100: Color(0xffBCF9FE),
          200: Color(0xff8EF3FC),
          300: Color(0xff67EDFC),
          400: Color(0xff4CE6FA),
          500: Color(0xff37DDF6),
          600: Color(0xff2ACBEA),
          700: Color(0xff1FACCE),
          800: Color(0xff177E9F),
          900: Color(0xff0E455D),
        },
      );

  @override
  MaterialColor get lightGreen => const MaterialColor(
        0xff8BC34A,
        {
          50: Color(0xffF1F8E9),
          100: Color(0xffDCEDC8),
          200: Color(0xffC5E1A5),
          300: Color(0xffAED581),
          400: Color(0xff9CCC65),
          500: Color(0xff8BC34A),
          600: Color(0xff7CB342),
          700: Color(0xff689F38),
          800: Color(0xff558B2F),
          900: Color(0xff33691E),
        },
      );

  @override
  MaterialColor get amber => const MaterialColor(
        0xffFFC107,
        {
          50: Color(0xffFFF8E1),
          100: Color(0xffFFECB3),
          200: Color(0xffFFE082),
          300: Color(0xffFFD54F),
          400: Color(0xffFFCA28),
          500: Color(0xffFFC107),
          600: Color(0xffFFB300),
          700: Color(0xffFFA000),
          800: Color(0xffFF8F00),
          900: Color(0xffFF6F00),
        },
      );

  @override
  MaterialColor get deepOrange => const MaterialColor(
        0xffFF5722,
        {
          50: Color(0xffFBE9E7),
          100: Color(0xffFFCCBC),
          200: Color(0xffFFAB91),
          300: Color(0xffFF8A65),
          400: Color(0xffFF7043),
          500: Color(0xffFF5722),
          600: Color(0xffF4511E),
          700: Color(0xffE64A19),
          800: Color(0xffD84315),
          900: Color(0xffBF360C),
        },
      );
}
