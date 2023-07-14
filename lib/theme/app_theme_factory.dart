import 'package:apph2/models/models.dart';
import 'package:apph2/theme/theme.dart';
import 'package:flutter/material.dart';

import '../infraestructure/infraestructure.dart';


/// Theme Extensions on BuildContext
extension ContextThemeExtension on BuildContext {
  /// Theme for this context
  ThemeData get theme => Theme.of(this);

  /// TextTheme for this context
  TextTheme get textTheme => Theme.of(this).textTheme;

  /// ColorScheme for this context
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}

/// Theme Extensions on ColorScheme
extension ColorSchemeExtension on ColorScheme {
  /// Check if theme is dark
  bool get isDarkTheme => brightness == Brightness.dark;

  /// colorPrimaryDarkest
  Color get colorPrimaryDarkest => DM.get<AppColorScheme>().colorPrimaryDarkest;

  /// colorPrimaryDark
  Color get colorPrimaryDark => DM.get<AppColorScheme>().colorPrimaryDark;

  /// colorPrimaryMedium
  Color get colorPrimaryMedium => DM.get<AppColorScheme>().colorPrimaryMedium;

  /// colorPrimaryLight
  Color get colorPrimaryLight => DM.get<AppColorScheme>().colorPrimaryLight;

  /// colorPrimaryLightest
  Color get colorPrimaryLightest =>
      DM.get<AppColorScheme>().colorPrimaryLightest;

  /// colorPrimarySuperlight
  Color get colorPrimarySuperlight =>
      DM.get<AppColorScheme>().colorPrimarySuperlight;

  /// colorSecondaryDarkest
  Color get colorSecondaryDarkest =>
      DM.get<AppColorScheme>().colorSecondaryDarkest;

  /// colorSecondaryDark
  Color get colorSecondaryDark => DM.get<AppColorScheme>().colorSecondaryDark;

  /// colorSecondaryDarkMedium
  Color get colorSecondaryDarkMedium =>
      DM.get<AppColorScheme>().colorSecondaryDarkMedium;

  /// colorSecondaryMedium
  Color get colorSecondaryMedium =>
      DM.get<AppColorScheme>().colorSecondaryMedium;

  /// colorSecondaryLight
  Color get colorSecondaryLight => DM.get<AppColorScheme>().colorSecondaryLight;

  /// colorSecondaryLightest
  Color get colorSecondaryLightest =>
      DM.get<AppColorScheme>().colorSecondaryLightest;

  /// colorSecondaryLightmodeSuperlight
  Color get colorSecondaryLightmodeSuperlight =>
      DM.get<AppColorScheme>().colorSecondaryLightmodeSuperlight;

  /// colorTertiaryDark
  Color get colorTertiaryDark => DM.get<AppColorScheme>().colorTertiaryDark;

  /// colorTertiaryMedium
  Color get colorTertiaryMedium => DM.get<AppColorScheme>().colorTertiaryMedium;

  /// colorTertiaryLight
  Color get colorTertiaryLight => DM.get<AppColorScheme>().colorTertiaryLight;

  /// colorBlueLight
  Color get colorBlueLight => AppThemeBase.colorBlueLight;

  /// colorNeutralLightmodeDarkest
  Color get colorNeutralLightmodeDarkest =>
      DM.get<AppColorScheme>().colorNeutralLightmodeDarkest;

  /// colorNeutralLightmodeDark
  Color get colorNeutralLightmodeDark =>
      DM.get<AppColorScheme>().colorNeutralLightmodeDark;

  /// colorNeutralLightmodeLight
  Color get colorNeutralLightmodeLight =>
      DM.get<AppColorScheme>().colorNeutralLightmodeLight;

  /// colorNeutralLightmodeLightest
  Color get colorNeutralLightmodeLightest =>
      DM.get<AppColorScheme>().colorNeutralLightmodeLightest;

  /// colorSystemErrorDark
  Color get colorSystemErrorDark =>
      DM.get<AppColorScheme>().colorSystemErrorDark;

  /// colorSystemErrorDefault
  Color get colorSystemErrorDefault =>
      DM.get<AppColorScheme>().colorSystemErrorDefault;

  /// colorSystemErrorLight
  Color get colorSystemErrorLight =>
      DM.get<AppColorScheme>().colorSystemErrorLight;

  /// colorBaseBackgroundCreditCardError
  Color get colorBaseBackgroundCreditCardError =>
      DM.get<AppColorScheme>().colorBaseBackgroundCreditCardError;

  /// colorInactiveSwitchDark
  Color get colorInactiveSwitchDark =>
      DM.get<AppColorScheme>().colorInactiveSwitchDark;

  /// gradientPrimary
  Gradient get gradientPrimary {
    return isDarkTheme
        ? DM.get<AppColorScheme>().gradientPrimaryDark
        : DM.get<AppColorScheme>().gradientPrimaryLight;
  }

  /// red background error page gradient
  Gradient get gradientPageBackgroundError =>
      AppThemeBase.gradientPageBackgroundError;

  /// gradientDestak
  Gradient get gradientDestak {
    return isDarkTheme
        ? DM.get<AppColorScheme>().gradientDestakDark
        : DM.get<AppColorScheme>().gradientDestakLight;
  }

  /// gradientDestakLight
  Gradient get gradientDestakDark {
    return DM.get<AppColorScheme>().gradientDestakLight;
  }

  /// gradientDestakDark
  Gradient get gradientDestakLight {
    return DM.get<AppColorScheme>().gradientDestakDark;
  }

  /// gradientDarkerToDark
  Gradient get gradientDarkerToDark =>
      DM.get<AppColorScheme>().gradientDarkerToDark;

  /// gradientCardToDark
  Gradient get gradientDarkerToDarkLight =>
      DM.get<AppColorScheme>().gradientDarkerToDarkLight;

  /// gradientCardToDark
  Gradient get gradientDarkerToDarkBlack =>
      DM.get<AppColorScheme>().gradientDarkerToDarkBlack;

  /// gradientDarkerToDarkStandard
  Gradient get gradientDarkerToDarkStandard =>
      DM.get<AppColorScheme>().gradientDarkerToDarkStandard;

  /// gradientDarkToDarker
  Gradient get gradientDarkToDarker =>
      DM.get<AppColorScheme>().gradientDarkToDarker;

  /// gradientRedToDark
  Gradient get gradientRedToDark => DM.get<AppColorScheme>().gradientRedToDark;

  /// colorBaseBackgroundStandard
  Color get colorBaseBackgroundStandard =>
      DM.get<AppColorScheme>().colorBaseBackgroundStandard;

  /// gradientBackgroundStandard
  Gradient get gradientBackgroundStandard =>
      DM.get<AppColorScheme>().gradientBackgroundStandard;

  /// colorBaseBackgroundPlatinum
  Color get colorBaseBackgroundPlatinum =>
      DM.get<AppColorScheme>().colorBaseBackgroundPlatinum;

  /// gradientBackgroundPlatinum
  Gradient get gradientBackgroundPlatinum =>
      DM.get<AppColorScheme>().gradientBackgroundPlatinum;

  /// colorBaseBackgroundBlack
  Color get colorBaseBackgroundBlack =>
      DM.get<AppColorScheme>().colorBaseBackgroundBlack;

  /// gradientBackgroundBlack
  Gradient get gradientBackgroundBlack =>
      DM.get<AppColorScheme>().gradientBackgroundBlack;

  /// gradientBackgroundStandardPreviewCard
  Gradient get gradientBackgroundStandardPreviewCard =>
      DM.get<AppColorScheme>().gradientBackgroundStandardPreviewCard;

  /// gradientBackgroundPlatinumPreviewCard
  Gradient get gradientBackgroundPlatinumPreviewCard =>
      DM.get<AppColorScheme>().gradientBackgroundPlatinumPreviewCard;

  /// gradientBackgroundBlackPreviewCard
  Gradient get gradientBackgroundBlackPreviewCard =>
      DM.get<AppColorScheme>().gradientBackgroundBlackPreviewCard;

  /// Gradient for text field enabled border
  Gradient get gradientEnabled {
    return isDarkTheme
        ? DM.get<AppColorScheme>().gradientEnabledDark
        : DM.get<AppColorScheme>().gradientEnabledLight;
  }

  /// Gradient for app background
  RadialGradient get backgroundLinearGradient {
    return isDarkTheme
        ? DM.get<AppColorScheme>().backgroundLinearGradientDark
        : DM.get<AppColorScheme>().backgroundLinearGradientLight;
  }

  /// colorSystemSuccessDefault
  Color get colorSystemSuccessDefault => AppThemeBase.colorSystemSuccessDefault;

  /// Custom slider background color
  Color get colorCustomSliderBackground =>
      AppThemeBase.colorGraySliderBackground;
}

/// Theme Extensions on TextTheme
extension TextThemeExtension on TextTheme {
  ///fontFamily
  String get fontFamily => AppThemeBase.fontFamily;

  ///fontWeightBold
  FontWeight get fontWeightBold => AppThemeBase.fontWeightBold;

  ///fontWeightMedium
  FontWeight get fontWeightMedium => AppThemeBase.fontWeightMedium;

  ///fontWeightRegular
  FontWeight get fontWeightRegular => AppThemeBase.fontWeightRegular;

  ///fontWeightLight
  FontWeight get fontWeightLight => AppThemeBase.fontWeightLight;

  /// lineHeightTight
  double get lineHeightTight => AppThemeBase.lineHeightTight;

  /// lineHeightMedium
  double get lineHeightMedium => AppThemeBase.lineHeightMedium;

  /// lineHeightDistant
  double get lineHeightDistant => AppThemeBase.lineHeightDistant;

  /// lineHeightSuperDistant
  double get lineHeightSuperDistant => AppThemeBase.lineHeightSuperDistant;

  /// fontSizeCaption
  double get fontSizeCaption => AppThemeBase.fontSizeCaption;

  /// fontSizeButton
  double get fontSizeButton => AppThemeBase.fontSizeButton;

  /// fontSizeBody2
  double get fontSizeBody2 => AppThemeBase.fontSizeBody2;

  /// fontSizeBody1
  double get fontSizeBody1 => AppThemeBase.fontSizeBody1;

  /// fontSizeMedium
  double get fontSizeMedium => AppThemeBase.fontSizeMedium;

  /// fontSizeH3
  double get fontSizeH3 => AppThemeBase.fontSizeH3;

  /// fontSizeH2
  double get fontSizeH2 => AppThemeBase.fontSizeH2;

  /// fontSizeH1
  double get fontSizeH1 => AppThemeBase.fontSizeH1;
}

/// Theme Extensions on ThemeData
extension ThemeDataExtension on ThemeData {
  /// check is dark theme
  bool get isDarkTheme => brightness == Brightness.dark;

  /// borderRadiusNone
  BorderRadius get borderRadiusNone => AppThemeBase.borderRadiusNone;

  /// borderRadiusSM
  BorderRadius get borderRadiusSM => AppThemeBase.borderRadiusSM;

  /// borderRadiusMD
  BorderRadius get borderRadiusMD => AppThemeBase.borderRadiusMD;

  /// borderRadiusLG
  BorderRadius get borderRadiusLG => AppThemeBase.borderRadiusLG;

  /// borderWidthSM
  double get borderWidthSM => AppThemeBase.borderWidthSM;

  /// borderWidthSM
  double get borderWidthXS => AppThemeBase.borderWidthXS;

  /// opacityLevelSemiopaque
  double get opacityLevelSemiopaque => AppThemeBase.opacityLevelSemiopaque;

  /// opacityLevelIntense
  double get opacityLevelIntense => AppThemeBase.opacityLevelIntense;

  /// opacityLevelMedium
  double get opacityLevelMedium => AppThemeBase.opacityLevelMedium;

  /// opacityLevelLight
  double get opacityLevelLight => AppThemeBase.opacityLevelLight;

  /// opacityLevelSemiTransparent
  double get opacityLevelSemiTransparent =>
      AppThemeBase.opacityLevelSemiTransparent;

  /// shadowLightmodeLevel0
  BoxShadow get shadowLightmodeLevel0 => AppThemeBase.shadowLightmodeLevel0;

  /// shadowLightmodeLevel1
  BoxShadow get shadowLightmodeLevel1 => AppThemeBase.shadowLightmodeLevel1;

  /// shadowLightmodeLevel2
  BoxShadow get shadowLightmodeLevel2 => AppThemeBase.shadowLightmodeLevel2;

  /// shadowLightmodeLevel3
  BoxShadow get shadowLightmodeLevel3 => AppThemeBase.shadowLightmodeLevel3;

  /// shadowLightmodeLevel4
  BoxShadow get shadowLightmodeLevel4 => AppThemeBase.shadowLightmodeLevel4;

  /// shadowLightmodeLevel5
  BoxShadow get shadowLightmodeLevel5 => AppThemeBase.shadowLightmodeLevel5;

  /// spacingInsetQuark
  EdgeInsets get spacingInsetQuark => AppThemeBase.spacingInsetQuark;

  /// spacingInsetNano
  EdgeInsets get spacingInsetNano => AppThemeBase.spacingInsetNano;

  /// spacingInsetXS
  EdgeInsets get spacingInsetXS => AppThemeBase.spacingInsetXS;

  /// spacingInsetSM
  EdgeInsets get spacingInsetSM => AppThemeBase.spacingInsetSM;

  /// spacingInsetMD
  EdgeInsets get spacingInsetMD => AppThemeBase.spacingInsetMD;

  /// spacingInsetLG
  EdgeInsets get spacingInsetLG => AppThemeBase.spacingInsetLG;

  /// spacingSquishQuark
  EdgeInsets get spacingSquishQuark => AppThemeBase.spacingSquishQuark;

  /// spacingSquishNano
  EdgeInsets get spacingSquishNano => AppThemeBase.spacingSquishNano;

  /// spacingSquishXS
  EdgeInsets get spacingSquishXS => AppThemeBase.spacingSquishXS;

  /// spacingSquishSM
  EdgeInsets get spacingSquishSM => AppThemeBase.spacingSquishSM;

  /// spacingInlineQuark
  double get spacingInlineQuark => AppThemeBase.spacingInlineQuark;

  /// spacingInlineNano
  double get spacingInlineNano => AppThemeBase.spacingInlineNano;

  /// spacingInlineXXXS
  double get spacingInlineXXXS => AppThemeBase.spacingInlineXXXS;

  /// spacingInlineXXS
  double get spacingInlineXXS => AppThemeBase.spacingInlineXXS;

  /// spacingInlineXS
  double get spacingInlineXS => AppThemeBase.spacingInlineXS;

  /// spacingInlineSM
  double get spacingInlineSM => AppThemeBase.spacingInlineSM;

  /// spacingInlineMD
  double get spacingInlineMD => AppThemeBase.spacingInlineMD;

  /// spacingInlineLG
  double get spacingInlineLG => AppThemeBase.spacingInlineLG;

  /// spacingInlineXL
  double get spacingInlineXL => AppThemeBase.spacingInlineXL;

  /// spacingStackQuark
  double get spacingStackQuark => AppThemeBase.spacingStackQuark;

  /// spacingStackNano
  double get spacingStackNano => AppThemeBase.spacingStackNano;

  /// spacingStackXXXS
  double get spacingStackXXXS => AppThemeBase.spacingStackXXXS;

  /// spacingStackXXS
  double get spacingStackXXS => AppThemeBase.spacingStackXXS;

  /// spacingStackXS
  double get spacingStackXS => AppThemeBase.spacingStackXS;

  /// spacingStackSM
  double get spacingStackSM => AppThemeBase.spacingStackSM;

  /// spacingStackMD
  double get spacingStackMD => AppThemeBase.spacingStackMD;

  /// spacingStackLG
  double get spacingStackLG => AppThemeBase.spacingStackLG;

  /// spacingStackXL
  double get spacingStackXL => AppThemeBase.spacingStackXL;

  /// spacingStackXXL
  double get spacingStackXXL => AppThemeBase.spacingStackXXL;

  /// spacingStackXXXL
  double get spacingStackXXXL => AppThemeBase.spacingStackXXXL;

  /// spacingStackHuge
  double get spacingStackHuge => AppThemeBase.spacingStackHuge;

  /// spacingStackGiant
  double get spacingStackGiant => AppThemeBase.spacingStackGiant;

  /// customRadioCircleSize
  double get customRadioCircleSize => AppThemeBase.customRadioCircleSize;

  /// disclaimerIconSize
  double get disclaimerIconSize => AppThemeBase.disclaimerIconSize;
}

///
/// Extension for InputDecorationTheme.
///
extension InputDecorationThemeExtension on InputDecorationTheme {
  ///
  /// LabelStyle for floating label.
  ///
  TextStyle? get floatingLabelStyle => labelStyle?.copyWith(
        height: AppThemeBase.lineHeightTight,
        fontWeight: AppThemeBase.fontWeightBold,
        // Font size changes automatically on focus.
        // Changing this causes a strange behavior on TextField...
        fontSize: AppThemeBase.fontSizeBody2,
      );
}

///
/// Extension for ButtonStyle
///
extension ElevatedButtonThemeDataExtension on ElevatedButtonThemeData {
  /// Default height
  double get heightDefault => AppThemeBase.buttonHeight;

  /// Small height
  double get heightSmall => AppThemeBase.buttonHeightSM;

  /// Medium height
  double get heightMedium => AppThemeBase.buttonHeightMD;

  /// Large height
  double get heightLarge => AppThemeBase.buttonHeightLG;
}

///
/// Extension for AppBarTheme
///
extension AppBarThemeExtension on AppBarTheme {
  /// Default app bar height
  double get appBarHeight => AppThemeBase.appBarHeight;
}

/// v1.0 Theme factory
class AppThemeFactory {
  AppThemeFactory._();

  static final AppThemeFactory _instance = AppThemeFactory._();

  /// Current [AppThemeFactory] singleton instance
  static AppThemeFactory get instance => _instance;

  ThemeData? _currentLightTheme;

  ///
  /// Light theme currently being used by the app
  ///
  ThemeData get currentLightTheme {
    _currentLightTheme ??= createLightTheme();
    return _currentLightTheme!;
  }

  set currentLightTheme(ThemeData value) {
    _currentLightTheme = value;
  }

  ThemeData? _currentDarkTheme;

  ///
  /// Dark theme currently being used by the app
  ///
  ThemeData get currentDarkTheme {
    _currentDarkTheme ??= createDarkTheme();
    return _currentDarkTheme!;
  }

  set currentDarkTheme(ThemeData value) {
    _currentDarkTheme = value;
  }

  /// Creates a Light Theme
  static ThemeData createLightTheme() {
    /// Builds the new theming text styles to load the [AppTextStyle] extension.
    final foreground = LightForeground();
    final textTheme = TypographyBuilder.buildTextTheme(
      foreground.active,
      DarkForeground().active,
    );

    final appTextStyle =
        TypographyBuilder.buildAppTextStyle(textTheme, foreground);

    return ThemeData(
      useMaterial3: true,
      fontFamily: AppThemeBase.fontFamily,
      primaryColor: AppThemeBase.colorPrimaryDark,
      scaffoldBackgroundColor: AppThemeBase.colorPrimarySuperlight,
      cardColor: AppThemeBase.colorPrimarySuperlight,
      canvasColor: AppThemeBase.colorPrimarySuperlight,

      /// If this extension is not in the theme context, some widgets may crash.
      extensions: [appTextStyle],
      iconTheme: IconThemeData(
        color: AppThemeBase.colorPrimaryDark,
        size: AppThemeBase.fontSizeButton,
      ),
      appBarTheme: const AppBarTheme(
        elevation: 0,
        iconTheme: IconThemeData(
          color: AppThemeBase.colorPrimarySuperlight,
        ),
      ),
      dividerColor: AppThemeBase.colorNeutralLightmodeLightest,
      checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStateProperty.all(
          AppThemeBase.colorPrimarySuperlight,
        ),
        fillColor: MaterialStateProperty.all(
          AppThemeBase.colorPrimaryInDark,
        ),
        side: const BorderSide(
          color: AppThemeBase.colorNeutralLightmodeLight,
          width: 1.0,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.all(
          AppThemeBase.colorPrimaryMedium,
        ),
        overlayColor: MaterialStateProperty.all(
          AppThemeBase.colorNeutralLightmodeLight,
        ),
      ),
      disabledColor: AppThemeBase.colorNeutralLightmodeLightest,
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1.0,
            color: AppThemeBase.colorTertiaryLight,
          ),
          borderRadius: AppThemeBase.borderRadiusSM,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1.0,
            color: AppThemeBase.colorTertiaryLight,
          ),
          borderRadius: AppThemeBase.borderRadiusSM,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1.0,
            color: AppThemeBase.colorPrimaryMedium,
          ),
          borderRadius: AppThemeBase.borderRadiusSM,
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1.0,
            color: AppThemeBase.colorNeutralLightmodeLightest,
          ),
          borderRadius: AppThemeBase.borderRadiusSM,
        ),
        labelStyle: TextStyle(
          color: AppThemeBase.colorPrimaryDark,
          fontWeight: AppThemeBase.fontWeightRegular,
          fontSize: AppThemeBase.fontSizeBody1,
          height: AppThemeBase.lineHeightMedium,
        ),
        hintStyle: TextStyle(
          color: AppThemeBase.colorNeutralLightmodeLight,
          fontWeight: AppThemeBase.fontWeightRegular,
          fontSize: AppThemeBase.fontSizeBody1,
          height: AppThemeBase.lineHeightMedium,
        ),
        helperStyle: TextStyle(
          color: AppThemeBase.colorPrimaryDark,
          fontWeight: AppThemeBase.fontWeightRegular,
          fontSize: AppThemeBase.fontSizeCaption,
          height: AppThemeBase.lineHeightTight,
        ),
        errorStyle: TextStyle(
          color: AppThemeBase.colorSystemErrorDefault,
          fontWeight: AppThemeBase.fontWeightRegular,
          fontSize: AppThemeBase.fontSizeCaption,
          height: AppThemeBase.lineHeightTight,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          alignment: Alignment.center,
          padding: MaterialStateProperty.all(AppThemeBase.spacingSquishXS),
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.disabled)) {
              return AppThemeBase.colorNeutralLightmodeLightest;
            }

            if (states.contains(MaterialState.pressed)) {
              return AppThemeBase.colorPrimaryDarkest;
            }

            return AppThemeBase.colorPrimaryDark;
          }),
          foregroundColor: MaterialStateProperty.all(
            AppThemeBase.colorPrimarySuperlight,
          ),
          textStyle: MaterialStateProperty.all(
            AppThemeBase.buttonTextType.copyWith(
              color: AppThemeBase.colorPrimarySuperlight,
            ),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                AppThemeBase.buttonHeight,
              ),
            ),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          alignment: Alignment.center,
          padding: MaterialStateProperty.all(AppThemeBase.spacingSquishXS),
          backgroundColor:
              MaterialStateProperty.all(AppThemeBase.colorPrimarySuperlight),
          textStyle: MaterialStateProperty.all(AppThemeBase.buttonTextType),
          side: MaterialStateProperty.all(
            const BorderSide(
              color: AppThemeBase.colorPrimaryDark,
              width: 1,
            ),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                AppThemeBase.buttonHeight,
              ),
            ),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          alignment: Alignment.center,
          padding: MaterialStateProperty.all(AppThemeBase.spacingInsetNano),
          textStyle: MaterialStateProperty.resolveWith((states) {
            return AppThemeBase.buttonTextType.copyWith(
              color: states.contains(MaterialState.disabled)
                  ? AppThemeBase.colorNeutralLightmodeLightest
                  : AppThemeBase.colorPrimaryDark,
            );
          }),
        ),
      ),
      textTheme: TextTheme(
        titleMedium: TextStyle(
          fontSize: AppThemeBase.fontSizeBody1,
          fontWeight: AppThemeBase.fontWeightRegular,
          color: AppThemeBase.colorPrimaryDark,
          height: AppThemeBase.lineHeightMedium,
        ),
        displayLarge: TextStyle(
          fontSize: AppThemeBase.fontSizeH1,
          fontWeight: AppThemeBase.fontWeightBold,
          color: AppThemeBase.colorPrimaryDark,
          height: AppThemeBase.lineHeightMedium,
        ),
        displayMedium: TextStyle(
          fontSize: AppThemeBase.fontSizeH2,
          fontWeight: AppThemeBase.fontWeightBold,
          color: AppThemeBase.colorPrimaryDark,
          height: AppThemeBase.lineHeightMedium,
        ),
        displaySmall: TextStyle(
          fontSize: AppThemeBase.fontSizeH3,
          fontWeight: AppThemeBase.fontWeightBold,
          color: AppThemeBase.colorPrimaryDark,
          height: AppThemeBase.lineHeightMedium,
        ),
        bodyLarge: TextStyle(
          fontSize: AppThemeBase.fontSizeBody1,
          fontWeight: AppThemeBase.fontWeightBold,
          color: AppThemeBase.colorPrimaryDark,
          height: AppThemeBase.lineHeightMedium,
        ),
        bodyMedium: TextStyle(
          fontSize: AppThemeBase.fontSizeBody2,
          fontWeight: AppThemeBase.fontWeightBold,
          color: AppThemeBase.colorPrimaryDark,
          height: AppThemeBase.lineHeightMedium,
        ),
        labelLarge: TextStyle(
          fontSize: AppThemeBase.fontSizeButton,
          fontWeight: AppThemeBase.fontWeightMedium,
          color: AppThemeBase.colorPrimarySuperlight,
          height: AppThemeBase.lineHeightMedium,
        ),
        bodySmall: TextStyle(
          fontSize: AppThemeBase.fontSizeCaption,
          fontWeight: AppThemeBase.fontWeightBold,
          color: AppThemeBase.colorPrimaryDark,
          height: AppThemeBase.lineHeightMedium,
        ),
      ),
      scrollbarTheme: const ScrollbarThemeData().copyWith(
        thumbColor: MaterialStateProperty.all(
          AppThemeBase.colorTertiaryMedium,
        ),
        thumbVisibility: MaterialStateProperty.all(true),
        radius: AppThemeBase.borderRadiusLG.topLeft,
        thickness: MaterialStateProperty.all(AppThemeBase.spacingInlineQuark),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: AppThemeBase.colorPrimarySuperlight,
        shape: const StadiumBorder(
          side: BorderSide(
            color: AppThemeBase.colorPrimaryLight,
          ),
        ),
        showCheckmark: false,
        labelStyle: TextStyle(
          fontSize: AppThemeBase.fontSizeBody2,
          fontWeight: AppThemeBase.fontWeightMedium,
          height: AppThemeBase.lineHeightMedium,
        ),
        selectedColor: AppThemeBase.colorPrimaryDark,
      ),
      // tabBarTheme: TabBarTheme(
      //   labelPadding: EdgeInsets.symmetric(horizontal: 14),
      // ),
      colorScheme: const ColorScheme(
        primary: AppThemeBase.colorPrimaryDark,
        primaryContainer: AppThemeBase.colorPrimaryDark,
        secondary: AppThemeBase.colorSecondaryDark,
        secondaryContainer: AppThemeBase.colorSecondaryDark,
        surface: AppThemeBase.colorPrimarySuperlight,
        background: AppThemeBase.colorPrimarySuperlight,
        error: AppThemeBase.colorSystemErrorDefault,
        onPrimary: AppThemeBase.colorPrimarySuperlight,
        onSecondary: AppThemeBase.colorPrimaryDark,
        onSurface: AppThemeBase.colorPrimaryDark,
        onBackground: AppThemeBase.colorPrimaryDark,
        onError: AppThemeBase.colorPrimarySuperlight,
        brightness: Brightness.light,
      ).copyWith(background: AppThemeBase.colorPrimarySuperlight),
    );
  }

  /// Creates a Dark Theme
  static ThemeData createDarkTheme() {
    /// Builds the new theming text styles to load the [AppTextStyle] extension.
    // final foreground = DarkForeground();
    // final textTheme = TypographyBuilder.buildTextTheme(
    //   foreground.active,
    //   LightForeground().active,
    // );

    // final appTextStyle =
    //     TypographyBuilder.buildAppTextStyle(textTheme, foreground);

    var themeData = createLightTheme();
    return themeData.copyWith(
      primaryColor: AppThemeBase.colorPrimaryLightest,
      scaffoldBackgroundColor: AppThemeBase.colorPrimaryDark,
      cardColor: AppThemeBase.colorPrimaryDark,
      canvasColor: AppThemeBase.colorPrimaryDarkest,

      /// If this extension is not in the theme context, some widgets may crash.
      // extensions: [appTextStyle],
      iconTheme: const IconThemeData(
        color: AppThemeBase.colorPrimaryLightest,
      ),
      appBarTheme: themeData.appBarTheme.copyWith(
        iconTheme: themeData.appBarTheme.iconTheme?.copyWith(
          color: AppThemeBase.colorPrimaryLightest,
        ),
      ),
      dividerColor: AppThemeBase.colorPrimarySuperlight.withOpacity(0.1),
      checkboxTheme: themeData.checkboxTheme.copyWith(
        checkColor: MaterialStateProperty.all(AppThemeBase.colorPrimaryDark),
        fillColor: MaterialStateProperty.all(
          AppThemeBase.colorPrimarySuperlight,
        ),
      ),
      radioTheme: themeData.radioTheme.copyWith(
        fillColor: MaterialStateProperty.all(
          AppThemeBase.colorPrimarySuperlight,
        ),
      ),
      disabledColor: AppThemeBase.colorPrimaryMedium,
      inputDecorationTheme: themeData.inputDecorationTheme.copyWith(
        border: themeData.inputDecorationTheme.border?.copyWith(
          borderSide:
              themeData.inputDecorationTheme.border?.borderSide.copyWith(
            color: AppThemeBase.colorTertiaryDark,
          ),
        ),
        enabledBorder: themeData.inputDecorationTheme.enabledBorder?.copyWith(
          borderSide:
              themeData.inputDecorationTheme.enabledBorder?.borderSide.copyWith(
            color: AppThemeBase.colorTertiaryDark,
          ),
        ),
        focusedBorder: themeData.inputDecorationTheme.focusedBorder?.copyWith(
          borderSide:
              themeData.inputDecorationTheme.focusedBorder?.borderSide.copyWith(
            color: AppThemeBase.colorPrimaryMedium,
          ),
        ),
        disabledBorder: themeData.inputDecorationTheme.disabledBorder?.copyWith(
          borderSide: themeData.inputDecorationTheme.disabledBorder?.borderSide
              .copyWith(
            color: AppThemeBase.colorNeutralLightmodeDarkest,
          ),
        ),
        labelStyle: themeData.inputDecorationTheme.labelStyle?.copyWith(
          color: AppThemeBase.colorPrimarySuperlight,
        ),
        hintStyle: themeData.inputDecorationTheme.hintStyle?.copyWith(
          color: AppThemeBase.colorNeutralLightmodeDark,
        ),
        helperStyle: themeData.inputDecorationTheme.helperStyle?.copyWith(
          color: AppThemeBase.colorPrimarySuperlight,
        ),
      ),
      colorScheme: const ColorScheme(
        primary: AppThemeBase.colorPrimaryLightest,
        primaryContainer: AppThemeBase.colorPrimarySuperlight,
        secondary: AppThemeBase.colorSecondaryLight,
        secondaryContainer: AppThemeBase.colorSecondaryLightest,
        surface: AppThemeBase.colorPrimaryDark,
        background: AppThemeBase.colorPrimaryDark,
        error: AppThemeBase.colorSystemErrorDefault,
        onPrimary: AppThemeBase.colorPrimaryDark,
        onSecondary: AppThemeBase.colorPrimaryLightest,
        onSurface: AppThemeBase.colorPrimarySuperlight,
        onBackground: AppThemeBase.colorPrimarySuperlight,
        onError: AppThemeBase.colorPrimarySuperlight,
        brightness: Brightness.dark,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: themeData.elevatedButtonTheme.style?.copyWith(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.disabled)) {
              return AppThemeBase.colorPrimaryMedium.withOpacity(
                AppThemeBase.opacityLevelMedium,
              );
            }

            if (states.contains(MaterialState.pressed)) {
              return AppThemeBase.colorPrimaryLightest;
            }

            return AppThemeBase.colorPrimarySuperlight;
          }),
          foregroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.disabled)) {
              return AppThemeBase.colorPrimaryLight.withOpacity(
                AppThemeBase.opacityLevelMedium,
              );
            }

            return AppThemeBase.colorPrimaryDark;
          }),
          textStyle: MaterialStateProperty.all(
            AppThemeBase.buttonTextType.copyWith(
              color: AppThemeBase.colorPrimarySuperlight,
            ),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: themeData.textButtonTheme.style?.copyWith(
          textStyle: MaterialStateProperty.resolveWith(
            (states) {
              return AppThemeBase.buttonTextType.copyWith(
                color: states.contains(MaterialState.disabled)
                    ? AppThemeBase.colorPrimaryMedium
                    : AppThemeBase.colorPrimarySuperlight,
              );
            },
          ),
        ),
      ),
      textTheme: themeData.textTheme.copyWith(
        titleMedium: themeData.textTheme.titleMedium?.copyWith(
          color: AppThemeBase.colorPrimarySuperlight,
        ),
        displayLarge: themeData.textTheme.displayLarge?.copyWith(
          color: AppThemeBase.colorPrimarySuperlight,
        ),
        displayMedium: themeData.textTheme.displayMedium?.copyWith(
          color: AppThemeBase.colorPrimarySuperlight,
        ),
        displaySmall: themeData.textTheme.displaySmall?.copyWith(
          color: AppThemeBase.colorPrimarySuperlight,
        ),
        bodyLarge: themeData.textTheme.bodyLarge?.copyWith(
          color: AppThemeBase.colorPrimarySuperlight,
        ),
        bodyMedium: themeData.textTheme.bodyMedium?.copyWith(
          color: AppThemeBase.colorPrimarySuperlight,
        ),
        labelLarge: themeData.textTheme.labelLarge?.copyWith(
          color: AppThemeBase.colorPrimaryDark,
        ),
        bodySmall: themeData.textTheme.bodySmall?.copyWith(
          color: AppThemeBase.colorPrimarySuperlight,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          alignment: Alignment.center,
          padding: MaterialStateProperty.all(AppThemeBase.spacingSquishXS),
          backgroundColor:
              MaterialStateProperty.all(AppThemeBase.colorPrimarySuperlight),
          textStyle: MaterialStateProperty.all(AppThemeBase.buttonTextType),
          side: MaterialStateProperty.all(
            const BorderSide(
              color: AppThemeBase.colorPrimarySuperlight,
              width: 1,
            ),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                AppThemeBase.buttonHeight,
              ),
            ),
          ),
        ),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: AppThemeBase.colorPrimaryDark,
        shape: const StadiumBorder(
          side: BorderSide(
            color: AppThemeBase.colorPrimaryLight,
          ),
        ),
        showCheckmark: false,
        labelStyle: TextStyle(
          fontSize: AppThemeBase.fontSizeBody2,
          fontWeight: AppThemeBase.fontWeightMedium,
          height: AppThemeBase.lineHeightMedium,
        ),
        selectedColor: AppThemeBase.colorPrimarySuperlight,
      ),
      // tabBarTheme: TabBarTheme(
      //   labelPadding: EdgeInsets.symmetric(horizontal: 16.responsiveWidth),
      // ),
    );
  }
}
