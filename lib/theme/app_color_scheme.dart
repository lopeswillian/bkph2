// class AppColorSchemeExtensionBase {
//   static colorSheme =
// }
import 'dart:math';

import 'package:apph2/models/models.dart';
import 'package:flutter/material.dart';

import 'app_theme_base.dart';

/// Default colorSchemeExtension
final AppColorScheme baseColorScheme = AppColorScheme(
  /// colorPrimaryDarkest
  colorPrimaryDarkest: AppThemeBase.colorPrimaryDarkest,

  /// colorPrimaryDark
  colorPrimaryDark: AppThemeBase.colorPrimaryDark,

  /// colorPrimaryMedium
  colorPrimaryMedium: AppThemeBase.colorPrimaryMedium,

  /// colorPrimaryLight
  colorPrimaryLight: AppThemeBase.colorPrimaryLight,

  /// colorPrimaryLightest
  colorPrimaryLightest: AppThemeBase.colorPrimaryLightest,

  /// colorPrimarySuperlight
  colorPrimarySuperlight: AppThemeBase.colorPrimarySuperlight,

  /// colorSecondaryDarkest
  colorSecondaryDarkest: AppThemeBase.colorSecondaryDarkest,

  /// colorSecondaryDark
  colorSecondaryDark: AppThemeBase.colorSecondaryDark,

  /// colorSecondaryDarkMedium
  colorSecondaryDarkMedium: AppThemeBase.colorSecondaryDarkMedium,

  /// colorSecondaryMedium
  colorSecondaryMedium: AppThemeBase.colorSecondaryMedium,

  /// colorSecondaryLight
  colorSecondaryLight: AppThemeBase.colorSecondaryLight,

  /// colorSecondaryLightest
  colorSecondaryLightest: AppThemeBase.colorSecondaryLightest,

  /// colorSecondaryLightmodeSuperlight
  colorSecondaryLightmodeSuperlight:
      AppThemeBase.colorSecondaryLightmodeSuperlight,

  /// colorTertiaryDark
  colorTertiaryDark: AppThemeBase.colorTertiaryDark,

  /// colorTertiaryMedium
  colorTertiaryMedium: AppThemeBase.colorTertiaryMedium,

  /// colorTertiaryLight
  colorTertiaryLight: AppThemeBase.colorTertiaryLight,

  /// colorNeutralLightmodeDarkest
  colorNeutralLightmodeDarkest: AppThemeBase.colorNeutralLightmodeDarkest,

  /// colorNeutralLightmodeDark
  colorNeutralLightmodeDark: AppThemeBase.colorNeutralLightmodeDark,

  /// colorNeutralLightmodeLight
  colorNeutralLightmodeLight: AppThemeBase.colorNeutralLightmodeLight,

  /// colorNeutralLightmodeLightest
  colorNeutralLightmodeLightest: AppThemeBase.colorNeutralLightmodeLightest,

  /// colorSystemErrorDark
  colorSystemErrorDark: AppThemeBase.colorSystemErrorDark,

  /// colorSystemErrorDefault
  colorSystemErrorDefault: AppThemeBase.colorSystemErrorDefault,

  /// colorSystemErrorLight
  colorSystemErrorLight: AppThemeBase.colorSystemErrorLight,

  /// colorBaseBackgroundCreditCardError
  colorBaseBackgroundCreditCardError:
      AppThemeBase.colorBaseBackgroundCreditCardError,

  /// colorInactiveSwitchDark
  colorInactiveSwitchDark: AppThemeBase.colorInactiveSwitchDark,

  /// gradientPrimary for dark theme
  gradientPrimaryDark: AppThemeBase.gradientPrimaryLight,

  /// gradientPrimary for light theme
  gradientPrimaryLight: AppThemeBase.gradientPrimaryDark,

  /// gradientDestak
  gradientDestakDark: AppThemeBase.gradientDestakLight,
  gradientDestakLight: AppThemeBase.gradientDestakDark,

  /// gradientDarkerToDark
  gradientDarkerToDark: AppThemeBase.gradientCreditCardStandard,

  /// gradientCardToDark
  gradientDarkerToDarkLight: AppThemeBase.gradientCreditCardPlatinum,

  /// gradientCardToDark
  gradientDarkerToDarkBlack: AppThemeBase.gradientCreditCardBlack,

  /// gradientDarkerToDarkStandard
  gradientDarkerToDarkStandard: AppThemeBase.gradientDarkerToDarkStandard,

  /// gradientDarkToDarker
  gradientDarkToDarker: AppThemeBase.gradientDarkToDarker,

  /// gradientRedToDark
  gradientRedToDark: AppThemeBase.gradientRedToDark,

  /// colorBaseBackgroundStandard
  colorBaseBackgroundStandard: AppThemeBase.colorBaseBackgroundStandard,

  /// gradientBackgroundStandard
  gradientBackgroundStandard: AppThemeBase.gradientBackgroundStandard,

  /// colorBaseBackgroundPlatinum
  colorBaseBackgroundPlatinum: AppThemeBase.colorBaseBackgroundPlatinum,

  /// gradientBackgroundPlatinum
  gradientBackgroundPlatinum: AppThemeBase.gradientBackgroundPlatinum,

  /// colorBaseBackgroundBlack
  colorBaseBackgroundBlack: AppThemeBase.colorBaseBackgroundBlack,

  /// gradientBackgroundBlack
  gradientBackgroundBlack: AppThemeBase.gradientBackgroundBlack,

  /// gradientBackgroundStandardPreviewCard
  gradientBackgroundStandardPreviewCard:
      AppThemeBase.gradientBackgroundStandardPreviewCard,

  /// gradientBackgroundPlatinumPreviewCard
  gradientBackgroundPlatinumPreviewCard:
      AppThemeBase.gradientBackgroundPlatinumPreviewCard,

  /// gradientBackgroundBlackPreviewCard
  gradientBackgroundBlackPreviewCard:
      AppThemeBase.gradientBackgroundBlackPreviewCard,

  /// Gradient for text field enabled border
  gradientEnabledLight: const LinearGradient(
    colors: [
      AppThemeBase.colorPrimaryLight,
      AppThemeBase.colorPrimaryLight,
    ],
  ),
  gradientEnabledDark: const LinearGradient(
    colors: [
      AppThemeBase.colorPrimarySuperlight,
      AppThemeBase.colorPrimarySuperlight,
    ],
  ),
  backgroundLinearGradientLight: const RadialGradient(
    colors: [
      AppThemeBase.colorPrimarySuperlight,
      AppThemeBase.colorPrimarySuperlight,
    ],
  ),
  backgroundLinearGradientDark: const RadialGradient(
    radius: 1.8,
    transform: GradientRotation(pi / 1),
    center: Alignment(1, 1),
    focalRadius: 1,
    colors: [
      Color(0xFF050922),
      Color(0xFF221F57),
    ],
  ),
);
