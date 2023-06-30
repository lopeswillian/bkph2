import 'package:apph2/theme/theme.dart';
import 'package:flutter/material.dart';


///
/// Builder class to construct styles related to Typography.
///
abstract class TypographyBuilder {
  ///
  /// Creates the app default text styles, defined by our UX Team.
  ///
  static AppTextStyle buildAppTextStyle(
    TextTheme baseTheme,
    IForegroundColorPalette foreground,
  ) {
    return AppTextStyle(
      captionLight: baseTheme.bodySmall!.copyWith(
        fontWeight: AppFontWeight.light.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      caption: baseTheme.bodySmall!.copyWith(
        fontWeight: AppFontWeight.regular.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      captionMedium: baseTheme.bodySmall!.copyWith(
        fontWeight: AppFontWeight.medium.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      captionBold: baseTheme.bodySmall!.copyWith(
        fontWeight: AppFontWeight.bold.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      buttonLight: baseTheme.labelLarge!.copyWith(
        fontWeight: AppFontWeight.light.value,
        height: AppLineHeight.xs.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      button: baseTheme.labelLarge!.copyWith(
        fontWeight: AppFontWeight.regular.value,
        height: AppLineHeight.xs.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      buttonMedium: baseTheme.labelLarge!.copyWith(
        fontWeight: AppFontWeight.medium.value,
        height: AppLineHeight.xs.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      buttonBold: baseTheme.labelLarge!.copyWith(
        fontWeight: AppFontWeight.bold.value,
        height: AppLineHeight.xs.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      calloutLight: TextStyle(
        fontSize: AppFontSize.callout.value,
        fontWeight: AppFontWeight.light.value,
        color: foreground.active,
        height: AppLineHeight.md.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      callout: TextStyle(
        fontSize: AppFontSize.callout.value,
        fontWeight: AppFontWeight.regular.value,
        color: foreground.active,
        height: AppLineHeight.md.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      calloutMedium: TextStyle(
        fontSize: AppFontSize.callout.value,
        fontWeight: AppFontWeight.medium.value,
        color: foreground.active,
        height: AppLineHeight.md.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      calloutBold: TextStyle(
        fontSize: AppFontSize.callout.value,
        fontWeight: AppFontWeight.bold.value,
        color: foreground.active,
        height: AppLineHeight.md.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      body2Light: baseTheme.bodyMedium!.copyWith(
        fontSize: AppFontSize.body2.value,
        fontWeight: AppFontWeight.light.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      body2: baseTheme.bodyMedium!.copyWith(
        fontSize: AppFontSize.body2.value,
        fontWeight: AppFontWeight.regular.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      body2Medium: baseTheme.bodyMedium!.copyWith(
        fontSize: AppFontSize.body2.value,
        fontWeight: AppFontWeight.medium.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      body2Bold: baseTheme.bodyMedium!.copyWith(
        fontSize: AppFontSize.body2.value,
        fontWeight: AppFontWeight.bold.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      body1Light: baseTheme.bodyLarge!.copyWith(
        fontWeight: AppFontWeight.light.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      body1: baseTheme.bodyLarge!.copyWith(
        fontWeight: AppFontWeight.regular.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      body1Medium: baseTheme.bodyLarge!.copyWith(
        fontWeight: AppFontWeight.medium.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      body1Bold: baseTheme.bodyLarge!.copyWith(
        fontWeight: AppFontWeight.bold.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      h3Light: baseTheme.displaySmall!.copyWith(
        fontWeight: AppFontWeight.light.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      h3: baseTheme.displaySmall!.copyWith(
        fontWeight: AppFontWeight.regular.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      h3Medium: baseTheme.displaySmall!.copyWith(
        fontWeight: AppFontWeight.medium.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      h3Bold: baseTheme.displaySmall!.copyWith(
        fontWeight: AppFontWeight.bold.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      h2Light: baseTheme.displayMedium!.copyWith(
        fontWeight: AppFontWeight.light.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      h2: baseTheme.displayMedium!.copyWith(
        fontWeight: AppFontWeight.regular.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      h2Medium: baseTheme.displayMedium!.copyWith(
        fontWeight: AppFontWeight.medium.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      h2Bold: baseTheme.displayMedium!.copyWith(
        fontWeight: AppFontWeight.bold.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      h1Light: baseTheme.displayLarge!.copyWith(
        fontWeight: AppFontWeight.light.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      h1: baseTheme.displayLarge!.copyWith(
        fontWeight: AppFontWeight.regular.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      h1Medium: baseTheme.displayLarge!.copyWith(
        fontWeight: AppFontWeight.medium.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
      h1Bold: baseTheme.displayLarge!.copyWith(
        fontWeight: AppFontWeight.bold.value,
        fontFamily: appFontFamily,
        letterSpacing: 0,
      ),
    );
  }

  ///
  /// Builds a copy of the app's old [TextTheme].
  ///
  /// Was opted to kept the same TextTheme from old theming. There's some
  /// inconsistencies, like bodyText2 size defined with callout size. This is kept
  /// like that to avoid a huge refactor in the whole app.
  ///
  /// !!! This styles are deprecated !!!
  ///
  /// Please, use the ThemeExtension [AppTextStyle].
  /// To do so, use `context.text` helper method.
  ///
  static TextTheme buildTextTheme(Color textColor, Color invertedColor) =>
      TextTheme(
        titleMedium: TextStyle(
          fontSize: AppFontSize.body1.value,
          fontWeight: AppFontWeight.regular.value,
          color: textColor,
          height: AppLineHeight.sm.value,
        ),
        displayLarge: TextStyle(
          fontSize: AppFontSize.headline1.value,
          fontWeight: AppFontWeight.bold.value,
          color: textColor,
          height: AppLineHeight.sm.value,
        ),
        displayMedium: TextStyle(
          fontSize: AppFontSize.headline2.value,
          fontWeight: AppFontWeight.bold.value,
          color: textColor,
          height: AppLineHeight.sm.value,
        ),
        displaySmall: TextStyle(
          fontSize: AppFontSize.headline3.value,
          fontWeight: AppFontWeight.bold.value,
          color: textColor,
          height: AppLineHeight.sm.value,
        ),
        bodyLarge: TextStyle(
          fontSize: AppFontSize.body1.value,
          fontWeight: AppFontWeight.bold.value,
          color: textColor,
          height: AppLineHeight.sm.value,
        ),
        bodyMedium: TextStyle(
          fontSize: AppFontSize.callout.value,
          fontWeight: AppFontWeight.bold.value,
          color: textColor,
          height: AppLineHeight.sm.value,
        ),
        labelLarge: TextStyle(
          fontSize: AppFontSize.button.value,
          fontWeight: AppFontWeight.medium.value,
          color: invertedColor,
          height: AppLineHeight.sm.value,
        ),
        bodySmall: TextStyle(
          fontSize: AppFontSize.caption.value,
          fontWeight: AppFontWeight.bold.value,
          color: textColor,
          height: AppLineHeight.sm.value,
        ),
      );
}
