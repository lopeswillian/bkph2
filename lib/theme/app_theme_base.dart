import 'dart:math' as math;

import 'package:apph2/theme/responsive/responsive.dart';
import 'package:flutter/cupertino.dart';

/// AppThemeBase
class AppThemeBase {
  /// Value given by designers as the screen width
  static const int designScreenWidth = 375;

  /// Value given by designers as the screen height
  static const int designScreenHeight = 812;

  /// colorPrimaryDarkest
  static const Color colorPrimaryDarkest = Color(0xFF00092A);

  /// colorPrimaryDarkest
  static const Color colorPrimaryDark = Color(0xFF00092A);

  /// colorPrimaryMedium
  static const Color colorPrimaryMedium = Color(0xFF166FED);

  /// colorPrimaryLight
  static const Color colorPrimaryLight = Color(0xFF127FF9);

  /// colorPrimaryLightest
  static const Color colorPrimaryLightest = Color(0xFFDFEBFC);

  /// colorPrimarySuperlight
  static const Color colorPrimarySuperlight = Color(0xFFFFFFFF);

  /// color #3F3F3F
  static const Color colorSecondaryDark = Color(0xFF3F3F3F);

  /// color #818181
  static const Color colorSecondary = Color(0xFF818181);

  /// color #FFFFFF
  static const Color colorSecondary01 = Color(0xFFFFFFFF);

  /// color #F8F8F8
  static const Color colorSecondary02 = Color(0xFFF8F8F8);

  /// color #E5E5E5
  static const Color colorSecondary03 = Color(0xFFE5E5E5);

  /// color #CECECE
  static const Color colorSecondary04 = Color(0xFFCECECE);

  /// color #000000
  static const Color colorSecondary05 = Color(0xFF000000);

  /// color #A8A8A8
  static const Color colorSecondary06 = Color(0xFFA8A8A8);

  /// color #2B3182
  static const Color colorSecondaryDarkest = Color(0xFF2B3182);

  // /// colorSecondaryDark
  // static const Color colorSecondaryDark = Color(0xFF3047C7);

  /// colorSecondaryDarkMedium
  static const Color colorSecondaryDarkMedium = Color(0xFF334fea);

  /// colorSecondaryMedium
  static const Color colorSecondaryMedium = Color(0xFF499ED7);

  /// colorSecondaryLight
  static const Color colorSecondaryLight = Color(0xFF37DCF6);

  /// colorSecondaryLightest
  static const Color colorSecondaryLightest = Color(0xFF7ED4FF);

  /// colorSecondaryLightmodeSuperlight
  static const Color colorSecondaryLightmodeSuperlight = Color(0xFFFFFFFF);

  /// colorTertiaryDark
  static const Color colorTertiaryDark = Color(0xFF6E57FF);

  /// colorTertiaryMedium
  static const Color colorTertiaryMedium = Color(0xFFCBD0F0);

  /// colorTertiaryLight
  static const Color colorTertiaryLight = Color(0xFFE8EAFA);

  /// colorNeutralLightmodeDarkest
  static const Color colorNeutralLightmodeDarkest = Color(0xFF262626);

  /// colorNeutralLightmodeDark
  static const Color colorNeutralLightmodeDark = Color(0xFF575756);

  /// colorNeutralLightmodeLight
  static const Color colorNeutralLightmodeLight = Color(0xFF979797);

  /// colorNeutralLightmodeLightest
  static const Color colorNeutralLightmodeLightest = Color(0xFFDADADA);

  /// colorSystemErrorDark
  static const Color colorSystemSuccessDefault = Color(0xFF25DDB1);

  /// colorSystemErrorDark
  static const Color colorSystemErrorDark = Color(0xFFE23535);

  /// colorSystemErrorDefault
  static const Color colorSystemErrorDefault = Color(0xFFFF6C6C);

  /// colorSystemErrorLight
  static const Color colorSystemErrorLight = Color(0xFFFFA5A5);

  /// colorFixedIncome
  static const Color colorFixedIncome = Color(0xff0099FF);

  /// colorFunds
  static const Color colorFunds = Color(0xff3D58F2);

  /// colorIconPurple
  static const Color colorIconPurple = Color(0xff6F72FB);

  /// colorBlueGradientEnd
  static const Color colorBlueGradientEnd = Color(0xFF221F57);

  /// colorPurpleDefault
  static const Color colorPurpleDefault = Color(0xFF3D46F2);

  /// colorPurpleSelected
  static const Color colorPurpleSelected = Color(0xFF373FDA);

  /// colorPixOnboardingGradientEnd
  static const Color colorBlackBottomGradientEnd = Color(0xFF05092C);

  /// colorInactiveSwitchDark
  static Color get colorInactiveSwitchDark =>
      const Color(0xFF9CB1C9).withOpacity(0.7);

  /// colorInactiveSwitchDark
  static const Color colorGraySliderBackground = Color(0xFFC4C5CA);

  /// The border color of credit card Standard
  static const Color colorBorderCreditCardStandard = Color(0xFF30E6F9);

  /// The border color of credit card Platinum
  static const Color colorBorderCreditCardPlatinum = Color(0xFF808A8E);

  /// The border color of credit card Black
  static const Color colorBorderCreditCardBlack = Color(0xFF050607);

  /// The divider color of credit card Standard
  static const Color colorDividerCreditCardStandard = Color(0xFF999CA6);

  /// The divider color of credit card Platinum
  static const Color colorDividerCreditCardPlatinum = Color(0xFFFFFFFF);

  /// The divider color of credit card Black
  static const Color colorDividerCreditCardBlack = Color(0xFF999CA6);

  /// colorPurpleLight
  static const Color colorPurpleLight = Color(0xFFFAFAFF);

  /// colorBlueLight
  static const Color colorBlueLight = Color(0xFFCBD0F0);

  /// colorLinkDefault
  static const Color colorLinkDefault = Color(0xFF4C6FFD);

  /// gradientPrimaryDark
  static const LinearGradient grandientMenuMain = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      colorPrimaryDark,
      Color(0xFF221F57),
    ],
  );

  /// colorBaseBackgroundCreditCardError
  static const Color colorBaseBackgroundCreditCardError = Color(0xFF030616);

  /// gradientPrimaryDark
  static const LinearGradient gradientPrimaryDark = LinearGradient(
    colors: [
      Color(0xFF05092C),
      Color(0xFFFFFFFF),
    ],
  );

  /// gradientSuccessBackground
  static const SweepGradient gradientSuccessBackground = SweepGradient(
    stops: [0.7, 1],
    colors: <Color>[Color(0xFF221F57), Color(0xFF040714)],
    transform: GradientRotation(math.pi / 1),
    center: Alignment(-1, 1),
  );

  /// gradientPrimaryLight
  static const LinearGradient gradientPrimaryLight = LinearGradient(
    colors: [
      Color(0xFFFFFFFF),
      Color(0xFFCBD0F0),
    ],
  );

  /// gradientDestakDark
  static const LinearGradient gradientDestakDark = LinearGradient(
    colors: [
      colorPrimaryDark,
      Color(0xFF6F72FB),
    ],
  );

  /// gradientDestakLight
  static const LinearGradient gradientDestakLight = LinearGradient(
    colors: [
      Color(0xFF499ED7),
      Color(0xFF7B61FF),
    ],
  );

  /// darker gradient
  static const LinearGradient gradientCreditCardStandard = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: <Color>[Color(0xFF03071C), Color(0xFF01448C)], // red to yellow
  );

  /// Used to make the background for error page
  static const LinearGradient gradientPageBackgroundError = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment(5.0, 1.0),
    stops: [
      0.1,
      0.2,
      0.2,
      1.0,
    ],
    colors: [
      colorBaseBackgroundCreditCardError,
      colorPrimaryDark,
      colorPrimaryDark,
      colorSystemErrorDark,
    ],
  );

  /// gradientDarkerToDarkLight
  static const LinearGradient gradientCreditCardPlatinum = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: <Color>[Color(0xFFE1E2E2), Color(0xFF7F8B8F)],
  );

  /// gradientDarkerToDarkBlack
  static const LinearGradient gradientCreditCardBlack = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment(3.0, 0.0),
    colors: <Color>[Color(0xFF050607), Color(0xFF050607)],
  );

  /// gradientDarkerToDarkStandard
  static const LinearGradient gradientDarkerToDarkStandard = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment(3.0, 0.0),
    colors: <Color>[Color(0xFF060A23), Color(0xFF007FD3)],
  );

  /// gradientDarkToDarker
  static Gradient get gradientDarkToDarker => const SweepGradient(
        colors: [
          Color.fromRGBO(232, 234, 250, 0),
          Color.fromRGBO(209, 214, 242, 0.5539),
          Color.fromRGBO(123, 97, 255, 0.7),
          Color.fromRGBO(232, 234, 250, 0),
        ],
        stops: [-0.13, 0.15, 0.72, 0.99],
        startAngle: 3.2,
        center: FractionalOffset(-0.6, 0.68),
        transform: GradientRotation(math.pi / 1.35),
      );

  /// gradientRedToDark
  static Gradient get gradientRedToDark => const SweepGradient(
        colors: [
          Color.fromRGBO(232, 234, 250, 0),
          Color.fromRGBO(209, 214, 242, 0.79),
          Color(0xFFE23535),
          Color.fromRGBO(232, 234, 250, 0),
        ],
        stops: [0.0, 0.57, 0.72, 0.99],
        startAngle: 2.5,
        center: FractionalOffset(-0.6, 0.8),
        transform: GradientRotation(math.pi / 1.23),
      );

  /// colorBaseBackgroundStandard
  static const Color colorBaseBackgroundStandard = Color(0xFF060A23);

  /// gradientBackgroundStandard
  static const LinearGradient gradientBackgroundStandard = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment(0.0, 6.0),
    colors: <Color>[
      Color(0xFF060A23),
      Color(0xFF007FD3),
    ],
  );

  /// colorBaseBackgroundPlatinum
  static const Color colorBaseBackgroundPlatinum = Color(0xFF808A8E);

  /// gradientBackgroundPlatinum
  static const LinearGradient gradientBackgroundPlatinum = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: <Color>[
      Color(0xFF808A8E),
      Color(0xFF9EA5A9),
    ],
  );

  /// colorBaseBackgroundBlack
  static const Color colorBaseBackgroundBlack = Color(0xFF000000);

  /// gradientBackgroundBlack
  static const LinearGradient gradientBackgroundBlack = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: <Color>[
      Color(0xFF0B0B0B),
      Color(0xFF272727),
    ],
  );

  /// Color used on LinearProgressIndicator background
  static const Color progressIndicatorBackground = Color(0xffC4C4C4);

  /// gradientBackgroundStandardPreviewCard
  static const LinearGradient gradientBackgroundStandardPreviewCard =
      LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment(0.0, -1.0),
    colors: <Color>[
      Color(0xFF060A23),
      Color(0xFF004A7B),
      Color(0xFFFFFFFF),
      Color(0xFFFFFFFF)
    ],
  );

  /// gradientBackgroundPlatinumPreviewCard
  static const LinearGradient gradientBackgroundPlatinumPreviewCard =
      LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment(0.0, -1.0),
    colors: <Color>[
      Color(0xFF808A8E),
      Color(0xFFA1A7A9),
      Color(0xFFFFFFFF),
      Color(0xFFFFFFFF),
    ],
  );

  /// gradientBackgroundBlackPreviewCard
  static const LinearGradient gradientBackgroundBlackPreviewCard =
      LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment(0.0, -1.0),
    colors: <Color>[
      Color(0xFF000000),
      Color(0xFF141414),
      Color(0xFFFFFFFF),
      Color(0xFFFFFFFF),
    ],
  );

  /// fontFamily
  static String get fontFamily => 'Poppins';

  ///fontWeightBold
  static FontWeight get fontWeightBold => FontWeight.w700;

  ///fontWeightMedium
  static FontWeight get fontWeightMedium => FontWeight.w600;

  ///fontWeightRegular
  static FontWeight get fontWeightRegular => FontWeight.w400;

  ///fontWeightLight
  static FontWeight get fontWeightLight => FontWeight.w300;

  /// lineHeightTight
  static double get lineHeightTight => 1;

  /// lineHeightMedium
  static double get lineHeightMedium => 1.25;

  /// lineHeightDistant
  static double get lineHeightDistant => 1.5;

  /// lineHeightSuperDistant
  static double get lineHeightSuperDistant => 2;

  /// fontSizeCaption
  static double get fontSizeCaption => 12.fontSize;

  /// fontSizeButton
  static double get fontSizeButton => 14.fontSize;

  /// fontSizeBody2
  static double get fontSizeBody2 => 14.fontSize;

  /// fontSizeMedium
  static double get fontSizeMedium => 16.fontSize;

  /// fontSizeBody1
  static double get fontSizeBody1 => 18.fontSize;

  /// fontSizeH3
  static double get fontSizeH3 => 24.fontSize;

  /// fontSizeH2
  static double get fontSizeH2 => 32.fontSize;

  /// fontSizeH1
  static double get fontSizeH1 => 40.fontSize;

  /// buttonTextType
  static TextStyle get buttonTextType => TextStyle(
        fontSize: fontSizeButton,
        fontWeight: fontWeightMedium,
        height: lineHeightTight,
      );

  /// Button Height
  static double get buttonHeight => 38.responsiveHeight;

  /// Button Height
  static double get buttonHeightSM => 28.responsiveHeight;

  /// Button Height
  static double get buttonHeightMD => 40.responsiveHeight;

  /// Button Height
  static double get buttonHeightLG => 56.responsiveHeight;

  /// borderRadiusNone
  static BorderRadius get borderRadiusNone => BorderRadius.zero;

  /// borderRadiusSM
  static BorderRadius get borderRadiusSM => BorderRadius.circular(4);

  /// borderRadiusMD
  static BorderRadius get borderRadiusMD => BorderRadius.circular(8);

  /// borderRadiusLG
  static BorderRadius get borderRadiusLG => BorderRadius.circular(12);

  /// borderWidthSM
  static double get borderWidthSM => 1.5.responsiveWidth;

  /// borderWidthXS
  static double get borderWidthXS => 1.responsiveWidth;

  /// opacityLevelSemiopaque
  static double get opacityLevelSemiopaque => 0.8;

  /// opacityLevelIntense
  static double get opacityLevelIntense => 0.64;

  /// opacityLevelMedium
  static double get opacityLevelMedium => 0.32;

  /// opacityLevelLight
  static double get opacityLevelLight => 0.16;

  /// opacityLevelSemiTransparent
  static double get opacityLevelSemiTransparent => 0.08;

  /// shadowLightmodeLevel0
  static BoxShadow get shadowLightmodeLevel0 =>
      const BoxShadow(blurRadius: 16, offset: Offset(0, -8));

  /// shadowLightmodeLevel1
  static BoxShadow get shadowLightmodeLevel1 =>
      const BoxShadow(blurRadius: 16, offset: Offset(0, 4));

  /// shadowLightmodeLevel2
  static BoxShadow get shadowLightmodeLevel2 =>
      const BoxShadow(blurRadius: 24, offset: Offset(0, 8));

  /// shadowLightmodeLevel3
  static BoxShadow get shadowLightmodeLevel3 =>
      const BoxShadow(blurRadius: 32, offset: Offset(0, 16));

  /// shadowLightmodeLevel4
  static BoxShadow get shadowLightmodeLevel4 => const BoxShadow(
        blurRadius: 18,
        offset: Offset(0, 16),
      );

  /// shadowLightmodeLevel5
  static BoxShadow get shadowLightmodeLevel5 =>
      const BoxShadow(blurRadius: 8, offset: Offset(2, 0));

  // Spacing Inset
  /// spacingInsetQuark
  static EdgeInsets get spacingInsetQuark => EdgeInsets.symmetric(
        horizontal: 4.responsiveWidth,
        vertical: 4.responsiveHeight,
      );

  /// spacingInsetNano
  static EdgeInsets get spacingInsetNano => EdgeInsets.symmetric(
        horizontal: 8.responsiveWidth,
        vertical: 8.responsiveHeight,
      );

  /// spacingInsetXS
  static EdgeInsets get spacingInsetXS => EdgeInsets.symmetric(
        horizontal: 16.responsiveWidth,
        vertical: 16.responsiveHeight,
      );

  /// spacingInsetSM
  static EdgeInsets get spacingInsetSM => EdgeInsets.symmetric(
        horizontal: 24.responsiveWidth,
        vertical: 24.responsiveHeight,
      );

  /// spacingInsetMD
  static EdgeInsets get spacingInsetMD => EdgeInsets.symmetric(
        horizontal: 32.responsiveWidth,
        vertical: 32.responsiveHeight,
      );

  /// spacingInsetLG
  static EdgeInsets get spacingInsetLG => EdgeInsets.symmetric(
        horizontal: 40.responsiveWidth,
        vertical: 40.responsiveHeight,
      );

  // Spacing Squish
  /// spacingSquishQuark
  static EdgeInsets get spacingSquishQuark => EdgeInsets.symmetric(
        vertical: 4.responsiveHeight,
        horizontal: 8.responsiveWidth,
      );

  /// spacingSquishNano
  static EdgeInsets get spacingSquishNano => EdgeInsets.symmetric(
        vertical: 8.responsiveHeight,
        horizontal: 16.responsiveWidth,
      );

  /// spacingSquishXS
  static EdgeInsets get spacingSquishXS => EdgeInsets.symmetric(
        vertical: 16.responsiveHeight,
        horizontal: 24.responsiveWidth,
      );

  /// spacingSquishSM
  static EdgeInsets get spacingSquishSM => EdgeInsets.symmetric(
        vertical: 16.responsiveHeight,
        horizontal: 32.responsiveWidth,
      );

  // Spacing Inline
  /// spacingInlineQuark
  static double get spacingInlineQuark => 4.responsiveWidth;

  /// spacingInlineNano
  static double get spacingInlineNano => 8.responsiveWidth;

  /// spacingInlineXXXS
  static double get spacingInlineXXXS => 16.responsiveWidth;

  /// spacingInlineXXS
  static double get spacingInlineXXS => 24.responsiveWidth;

  /// spacingInlineXS
  static double get spacingInlineXS => 32.responsiveWidth;

  /// spacingInlineSM
  static double get spacingInlineSM => 40.responsiveWidth;

  /// spacingInlineMD
  static double get spacingInlineMD => 48.responsiveWidth;

  /// spacingInlineLG
  static double get spacingInlineLG => 64.responsiveWidth;

  /// spacingInlineXL
  static double get spacingInlineXL => 80.responsiveWidth;

  // Spacing Stack
  /// spacingStackQuark
  static double get spacingStackQuark => 4.responsiveHeight;

  /// spacingStackNano
  static double get spacingStackNano => 8.responsiveHeight;

  /// spacingStackXXXS
  static double get spacingStackXXXS => 16.responsiveHeight;

  /// spacingStackXXS
  static double get spacingStackXXS => 24.responsiveHeight;

  /// spacingStackXS
  static double get spacingStackXS => 32.responsiveHeight;

  /// spacingStackSM
  static double get spacingStackSM => 40.responsiveHeight;

  /// spacingStackMD
  static double get spacingStackMD => 48.responsiveHeight;

  /// spacingStackLG
  static double get spacingStackLG => 56.responsiveHeight;

  /// spacingStackXL
  static double get spacingStackXL => 64.responsiveHeight;

  /// spacingStackXXL
  static double get spacingStackXXL => 80.responsiveHeight;

  /// spacingStackXXXL
  static double get spacingStackXXXL => 120.responsiveHeight;

  /// spacingStackHuge
  static double get spacingStackHuge => 160.responsiveHeight;

  /// spacingStackGiant
  static double get spacingStackGiant => 200.responsiveHeight;

  /// appBarHeight
  static double get appBarHeight => 60.responsiveHeight;

  /// customRadioCircleSize
  static double get customRadioCircleSize => 15.fontSize;

  /// disclaimerIconSize
  static double get disclaimerIconSize => 18.fontSize;
}
