import 'package:flutter/material.dart';

import '../color.dart';

///
/// Color palette definition for Dark theme.
///
class DarkColorPalette implements IColorPalette {
  @override
  IBackgroundColorPalette get backgroundPalette => DarkBackgroundColorPalette();

  @override
  IForegroundColorPalette get foreground => DarkForeground();

  @override
  IRiskColorPalette get risk => DarkRiskColorPalette();

  @override
  IProductColorPalette get product => DarkProductColorPalette();

  @override
  MaterialColor get base => const MaterialColor(
        0xff050922,
        {
          50: Color(0xff050922),
          100: Color(0xff12162C),
          200: Color(0xff24283E),
          300: Color(0xff3E4256),
          400: Color(0xff636779),
          500: Color(0xff9194A3),
          600: Color(0xffBCBEC8),
          700: Color(0xffDDDEE4),
          800: Color(0xffF0F1F5),
          900: Color(0xffFAFBFF),
        },
      );

  @override
  MaterialColor get primary => const MaterialColor(
        0xff53BAFF,
        {
          50: Color(0xff0B2054),
          100: Color(0xff154495),
          200: Color(0xff1E6ACD),
          300: Color(0xff2A8DF1),
          400: Color(0xff38A8FF),
          500: Color(0xff53BAFF),
          600: Color(0xff78CDFF),
          700: Color(0xffA6E0FF),
          800: Color(0xffCDEEFF),
          900: Color(0xffEBF8FF),
        },
      );

  @override
  MaterialColor get secondary => const MaterialColor(
        0xff7E80FB,
        {
          50: Color(0xff011367),
          100: Color(0xff192488),
          200: Color(0xff2936C4),
          300: Color(0xff3F4CEB),
          400: Color(0xff5D65F7),
          500: Color(0xff7E80FB),
          600: Color(0xff9D9EFD),
          700: Color(0xffBDBCFF),
          800: Color(0xffD6D5FF),
          900: Color(0xffEBEBFF),
        },
      );

  @override
  MaterialColor get tertiary => const MaterialColor(
        0xff4CE6FA,
        {
          50: Color(0xff0E455D),
          100: Color(0xff177E9F),
          200: Color(0xff1FACCE),
          300: Color(0xff2ACBEA),
          400: Color(0xff37DDF6),
          500: Color(0xff4CE6FA),
          600: Color(0xff67EDFC),
          700: Color(0xff8EF3FC),
          800: Color(0xffBCF9FE),
          900: Color(0xffE6FEFF),
        },
      );

  @override
  MaterialColor get lightGreen => const MaterialColor(
        0xff9CCC65,
        {
          50: Color(0xff33691E),
          100: Color(0xff558B2F),
          200: Color(0xff689F38),
          300: Color(0xff7CB342),
          400: Color(0xff8BC34A),
          500: Color(0xff9CCC65),
          600: Color(0xffAED581),
          700: Color(0xffC5E1A5),
          800: Color(0xffDCEDC8),
          900: Color(0xffF1F8E9),
        },
      );

  @override
  MaterialColor get amber => const MaterialColor(
        0xffFFCA28,
        {
          50: Color(0xffFF6F00),
          100: Color(0xffFF8F00),
          200: Color(0xffFFA000),
          300: Color(0xffFFB300),
          400: Color(0xffFFC107),
          500: Color(0xffFFCA28),
          600: Color(0xffFFD54F),
          700: Color(0xffFFE082),
          800: Color(0xffFFECB3),
          900: Color(0xffFFF8E1),
        },
      );

  @override
  MaterialColor get deepOrange => const MaterialColor(
        0xffFF7043,
        {
          50: Color(0xffBF360C),
          100: Color(0xffD84315),
          200: Color(0xffE64A19),
          300: Color(0xffF4511E),
          400: Color(0xffFF5722),
          500: Color(0xffFF7043),
          600: Color(0xffFF8A65),
          700: Color(0xffFFAB91),
          800: Color(0xffFFCCBC),
          900: Color(0xffFBE9E7),
        },
      );
}
