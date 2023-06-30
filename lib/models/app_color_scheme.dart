import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_color_scheme.freezed.dart';

/// Base color scheme extension model.
@freezed
class AppColorScheme with _$AppColorScheme {
  ///
  /// Factory for base color scheme extension model [AppColorScheme]
  ///
  const factory AppColorScheme({
    required Color colorPrimaryDarkest,
    required Color colorPrimaryDark,
    required Color colorPrimaryMedium,
    required Color colorPrimaryLight,
    required Color colorPrimaryLightest,
    required Color colorPrimarySuperlight,
    required Color colorSecondaryDarkest,
    required Color colorSecondaryDark,
    required Color colorSecondaryDarkMedium,
    required Color colorSecondaryMedium,
    required Color colorSecondaryLight,
    required Color colorSecondaryLightest,
    required Color colorSecondaryLightmodeSuperlight,
    required Color colorTertiaryDark,
    required Color colorTertiaryMedium,
    required Color colorTertiaryLight,
    required Color colorNeutralLightmodeDarkest,
    required Color colorNeutralLightmodeDark,
    required Color colorNeutralLightmodeLight,
    required Color colorNeutralLightmodeLightest,
    required Color colorSystemErrorDark,
    required Color colorSystemErrorDefault,
    required Color colorSystemErrorLight,
    required Color colorBaseBackgroundCreditCardError,
    required Color colorInactiveSwitchDark,
    required Gradient gradientPrimaryLight,
    required Gradient gradientPrimaryDark,
    required Gradient gradientDestakLight,
    required Gradient gradientDestakDark,
    required Gradient gradientDarkerToDark,
    required Gradient gradientDarkerToDarkLight,
    required Gradient gradientDarkerToDarkBlack,
    required Gradient gradientDarkerToDarkStandard,
    required Gradient gradientDarkToDarker,
    required Color colorBaseBackgroundStandard,
    required Gradient gradientBackgroundStandard,
    required Color colorBaseBackgroundPlatinum,
    required Gradient gradientBackgroundPlatinum,
    required Color colorBaseBackgroundBlack,
    required Gradient gradientBackgroundBlack,
    required Gradient gradientBackgroundStandardPreviewCard,
    required Gradient gradientBackgroundPlatinumPreviewCard,
    required Gradient gradientBackgroundBlackPreviewCard,
    required Gradient gradientEnabledLight,
    required Gradient gradientEnabledDark,
    required Gradient gradientRedToDark,
    required RadialGradient backgroundLinearGradientLight,
    required RadialGradient backgroundLinearGradientDark,
  }) = _AppColorScheme;
}
