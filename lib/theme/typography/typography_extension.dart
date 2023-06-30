import 'package:flutter/material.dart';

///
/// App text styles defined by our UX Team.
///
/// Each style has four variations: normal, light, medium and bold, accordingly
/// to it's FontWeight.
///
class AppTextStyle extends ThemeExtension<AppTextStyle> {
  /// Caption text style with FontWeight.light
  final TextStyle captionLight;

  /// Caption text style with FontWeight.normal
  final TextStyle caption;

  /// Caption text style with FontWeight.medium
  final TextStyle captionMedium;

  /// Caption text style with FontWeight.bold
  final TextStyle captionBold;

  /// Button text style with FontWeight.light
  final TextStyle buttonLight;

  /// Button text style with FontWeight.normal
  final TextStyle button;

  /// Button text style with FontWeight.medium
  final TextStyle buttonMedium;

  /// Button text style with FontWeight.bold
  final TextStyle buttonBold;

  /// Callout text style with FontWeight.light
  final TextStyle calloutLight;

  /// Callout text style with FontWeight.normal
  final TextStyle callout;

  /// Callout text style with FontWeight.medium
  final TextStyle calloutMedium;

  /// Callout text style with FontWeight.bold
  final TextStyle calloutBold;

  /// Default bodyMedium text style with FontWeight.light
  final TextStyle body2Light;

  /// Default bodyMedium text style with FontWeight.normal
  final TextStyle body2;

  /// Default bodyMedium with FontWeight.medium
  final TextStyle body2Medium;

  /// Default bodyMedium with FontWeight.bold
  final TextStyle body2Bold;

  /// Default bodyLarge with FontWeight.light
  final TextStyle body1Light;

  /// Default bodyLarge with FontWeight.normal
  final TextStyle body1;

  /// Default bodyLarge with FontWeight.medium
  final TextStyle body1Medium;

  /// Default bodyLarge with FontWeight.bold
  final TextStyle body1Bold;

  /// Default displaySmall with FontWeight.light
  final TextStyle h3Light;

  /// Default displaySmall with FontWeight.normal
  final TextStyle h3;

  /// Default displaySmall with FontWeight.medium
  final TextStyle h3Medium;

  /// Default displaySmall with FontWeight.bold
  final TextStyle h3Bold;

  /// Default displayMedium with FontWeight.light
  final TextStyle h2Light;

  /// Default displayMedium with FontWeight.normal
  final TextStyle h2;

  /// Default displayMedium with FontWeight.medium
  final TextStyle h2Medium;

  /// Default displayMedium with FontWeight.bold
  final TextStyle h2Bold;

  /// Default displayLarge with FontWeight.light
  final TextStyle h1Light;

  /// Default displayLarge with FontWeight.normal
  final TextStyle h1;

  /// Default displayLarge with FontWeight.medium
  final TextStyle h1Medium;

  /// Default displayLarge with FontWeight.bold
  final TextStyle h1Bold;

  /// Creates a [AppTextStyle]
  const AppTextStyle({
    required this.captionLight,
    required this.caption,
    required this.captionMedium,
    required this.captionBold,
    required this.buttonLight,
    required this.button,
    required this.buttonMedium,
    required this.buttonBold,
    required this.calloutLight,
    required this.callout,
    required this.calloutMedium,
    required this.calloutBold,
    required this.body2Light,
    required this.body2,
    required this.body2Medium,
    required this.body2Bold,
    required this.body1Light,
    required this.body1,
    required this.body1Medium,
    required this.body1Bold,
    required this.h3Light,
    required this.h3,
    required this.h3Medium,
    required this.h3Bold,
    required this.h2Light,
    required this.h2,
    required this.h2Medium,
    required this.h2Bold,
    required this.h1Light,
    required this.h1,
    required this.h1Medium,
    required this.h1Bold,
  });

  @override
  ThemeExtension<AppTextStyle> copyWith({
    TextStyle? captionLight,
    TextStyle? caption,
    TextStyle? captionMedium,
    TextStyle? captionBold,
    TextStyle? buttonLight,
    TextStyle? button,
    TextStyle? buttonMedium,
    TextStyle? buttonBold,
    TextStyle? calloutLight,
    TextStyle? callout,
    TextStyle? calloutMedium,
    TextStyle? calloutBold,
    TextStyle? body2Light,
    TextStyle? body2,
    TextStyle? body2Medium,
    TextStyle? body2Bold,
    TextStyle? body1Light,
    TextStyle? body1,
    TextStyle? body1Medium,
    TextStyle? body1Bold,
    TextStyle? h3Light,
    TextStyle? h3,
    TextStyle? h3Medium,
    TextStyle? h3Bold,
    TextStyle? h2Light,
    TextStyle? h2,
    TextStyle? h2Medium,
    TextStyle? h2Bold,
    TextStyle? h1Light,
    TextStyle? h1,
    TextStyle? h1Medium,
    TextStyle? h1Bold,
  }) {
    return AppTextStyle(
      captionLight: captionLight ?? this.captionLight,
      caption: caption ?? this.caption,
      captionMedium: captionMedium ?? this.captionMedium,
      captionBold: captionBold ?? this.captionBold,
      buttonLight: buttonLight ?? this.buttonLight,
      button: button ?? this.button,
      buttonMedium: buttonMedium ?? this.buttonMedium,
      buttonBold: buttonBold ?? this.buttonBold,
      calloutLight: calloutLight ?? this.calloutLight,
      callout: callout ?? this.callout,
      calloutMedium: calloutMedium ?? this.calloutMedium,
      calloutBold: calloutBold ?? this.calloutBold,
      body2Light: body2Light ?? this.body2Light,
      body2: body2 ?? this.body2,
      body2Medium: body2Medium ?? this.body2Medium,
      body2Bold: body2Bold ?? this.body2Bold,
      body1Light: body1Light ?? this.body1Light,
      body1: body1 ?? this.body1,
      body1Medium: body1Medium ?? this.body1Medium,
      body1Bold: body1Bold ?? this.body1Bold,
      h3Light: h3Light ?? this.h3Light,
      h3: h3 ?? this.h3,
      h3Medium: h3Medium ?? this.h3Medium,
      h3Bold: h3Bold ?? this.h3Bold,
      h2Light: h2Light ?? this.h2Light,
      h2: h2 ?? this.h2,
      h2Medium: h2Medium ?? this.h2Medium,
      h2Bold: h2Bold ?? this.h2Bold,
      h1Light: h1Light ?? this.h1Light,
      h1: h1 ?? this.h1,
      h1Medium: h1Medium ?? this.h1Medium,
      h1Bold: h1Bold ?? this.h1Bold,
    );
  }

  @override
  ThemeExtension<AppTextStyle> lerp(
    ThemeExtension<AppTextStyle>? other,
    double t,
  ) =>
      this;
}

///
/// Text theme extensions on [BuildContext]
///
extension ContextTextThemeExtension on BuildContext {
  ///
  /// App default text styles defined by our UX Team.
  ///
  /// Each style has four variations: normal, light, medium and bold,
  /// accordingly to it's FontWeight.
  ///
  /// Other modifications can be done using `copyWith` method.
  ///
  AppTextStyle get text => Theme.of(this).extension<AppTextStyle>()!;
}

///
/// Text style extensions on [TextStyle]
///
extension TextStyleExtension on TextStyle {
  ///
  ///Add underline decoration to the text
  ///
  TextStyle withUnderline([Offset? offset]) {
    return merge(
      TextStyle(
        shadows: [
          Shadow(
            color: color!,
            offset: offset ?? const Offset(0, -2),
          ),
        ],
        color: Colors.transparent,
        decoration: TextDecoration.underline,
        decorationColor: color!,
        decorationThickness: 1,
      ),
    );
  }
}
