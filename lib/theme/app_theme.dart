import 'package:apph2/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

///
/// New theming definitions.
///
/// Defines the default Light and Dark themes.
///
class AppTheme {
  AppTheme._();

  static final AppTheme _instance = AppTheme._();
  static IColorPalette? _lightColorPalette;
  static IColorPalette? _darkColorPalette;

  /// Current [AppTheme] singleton instance
  static AppTheme get instance => _instance;

  ThemeData? _lightTheme;
  ThemeData? _darkTheme;

  ///
  /// Current Light theme definition
  ///
  ThemeData get lightTheme {
    _lightTheme ??= builder(
      colorPalette: lightColorPalette,
      invertedForeground: DarkForeground(),
      brightness: Brightness.light,
      backgroundColor: Colors.white,
      foregroundColor: Colors.white,
    );
    return _lightTheme!;
  }

  set lightTheme(ThemeData value) {
    _lightTheme = value;
  }

  ///
  /// Current Dark theme definition
  ///
  ThemeData get darkTheme {
    _darkTheme ??= builder(
      colorPalette: darkColorPalette,
      invertedForeground: LightForeground(),
      brightness: Brightness.dark,
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
    );

    return _darkTheme!;
  }

  set darkTheme(ThemeData value) {
    _darkTheme = value;
  }

  /// Returns the current [IColorPalette] implementation for light theme
  IColorPalette get lightColorPalette {
    _lightColorPalette ??= LightColorPalette();
    return _lightColorPalette!;
  }

  /// Returns the current [IColorPalette] implementation for dark theme
  IColorPalette get darkColorPalette {
    _darkColorPalette ??= DarkColorPalette();
    return _darkColorPalette!;
  }

  ///
  /// Builds a theme, based on the provided colors.
  ///
  ThemeData builder({
    required IColorPalette colorPalette,
    required IForegroundColorPalette invertedForeground,
    required Brightness brightness,

    /// These colors are under revision by the UX team.
    /// They'll see how to put these colors inside our palette.
    /// We're using white(#fff) and dark(#000) by default.
    required Color backgroundColor,
    required Color foregroundColor,
  }) {
    final foreground = colorPalette.foreground;

    /// Uses old text theme just to get the base definition of some styles.
    final textTheme = TypographyBuilder.buildTextTheme(
      foreground.active,
      invertedForeground.active,
    );

    final appTextStyle =
        TypographyBuilder.buildAppTextStyle(textTheme, foreground);

    return ThemeData(
      useMaterial3: true,
      fontFamily: appFontFamily,
      primaryColor: colorPalette.primary,
      brightness: brightness,
      scaffoldBackgroundColor: colorPalette.backgroundPalette.solidSurface,
      cardColor: colorPalette.backgroundPalette.solidSurface,
      canvasColor: Colors.transparent,
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: foreground.active,
      ),
      extensions: [
        appTextStyle,
      ],
      iconTheme: IconThemeData(
        color: foreground.active,
        size: AppFontSize.button.value,
      ),
      appBarTheme: AppBarTheme(
        elevation: 0,
        titleTextStyle: appTextStyle.calloutMedium.copyWith(
          height: AppLineHeight.xs.value,
          color: Colors.white,
          fontSize: 20.fontSize,
        ),
        systemOverlayStyle: brightness == Brightness.dark
            ? SystemUiOverlayStyle.light
            : SystemUiOverlayStyle.dark,
        iconTheme: IconThemeData(color: foreground.active),
      ),
      dividerColor: foreground.disabled,
      dividerTheme: DividerThemeData(
        space: 0,
        color: foreground.detail,
      ),
      checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStateProperty.all(
          colorPalette.backgroundPalette.solidSurface,
        ),
        fillColor: MaterialStateProperty.all(foreground.active),
        side: BorderSide(color: foreground.disabled, width: 1.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(Dimension.xxs.value)),
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.all(AppThemeBase.colorPrimaryMedium),
        overlayColor: MaterialStateProperty.all(foreground.disabled),
      ),
      disabledColor: foreground.soft,
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: const BorderSide(
              width: 1.0, color: AppThemeBase.colorNeutralLightmodeLightest),
          borderRadius: BorderRadius.circular(Dimension.xs.value),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              width: 1.0, color: AppThemeBase.colorNeutralLightmodeLightest),
          borderRadius: BorderRadius.circular(Dimension.xs.value),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1.0,
            color: AppThemeBase.colorPrimaryLight,
          ),
          borderRadius: BorderRadius.circular(Dimension.xs.value),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1.0, color: foreground.soft),
          borderRadius: BorderRadius.circular(Dimension.xs.value),
        ),
        labelStyle: TextStyle(
            color: AppThemeBase.colorPrimaryDark,
            fontWeight: AppFontWeight.regular.value,
            fontSize: AppFontSize.body2.value,
            height: AppLineHeight.sm.value,
            fontFamily: 'Roboto'),
        hintStyle: TextStyle(
            color: foreground.disabled,
            fontWeight: AppFontWeight.regular.value,
            fontSize: AppFontSize.body2.value,
            height: AppLineHeight.sm.value,
            fontFamily: 'Roboto'),
        helperStyle: TextStyle(
            color: foreground.active,
            fontWeight: AppFontWeight.regular.value,
            fontSize: AppFontSize.caption.value,
            height: AppLineHeight.xs.value,
            fontFamily: 'Roboto'),
        errorStyle: TextStyle(
            color: colorPalette.deepOrange,
            fontWeight: AppFontWeight.regular.value,
            fontSize: AppFontSize.caption.value,
            height: AppLineHeight.xs.value,
            fontFamily: 'Roboto'),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          alignment: Alignment.center,
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(
              vertical: Dimension.sm.height,
              horizontal: Dimension.xl.width,
            ),
          ),
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.disabled)) {
              return colorPalette.base[200];
            }

            return colorPalette.base[900];
          }),
          foregroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.disabled)) {
              return foreground.disabled;
            }

            return invertedForeground.active;
          }),
          textStyle: MaterialStateProperty.all(
            appTextStyle.buttonMedium.copyWith(fontFamily: 'Roboto'),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          alignment: Alignment.center,
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(
              vertical: Dimension.sm.height,
              horizontal: Dimension.xl.width,
            ),
          ),
          textStyle: MaterialStateProperty.all(
            appTextStyle.buttonMedium.copyWith(fontFamily: 'Roboto'),
          ),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          side: MaterialStateProperty.all(
            const BorderSide(color: AppThemeBase.colorPrimaryLight, width: 1),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          alignment: Alignment.center,
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(
              horizontal: Dimension.xs.width,
              vertical: Dimension.xs.height,
            ),
          ),
          textStyle: MaterialStateProperty.resolveWith((states) {
            return appTextStyle.buttonMedium.copyWith(
              color: states.contains(MaterialState.disabled)
                  ? foreground.soft
                  : foreground.active,
            );
          }),
        ),
      ),
      textTheme: TypographyBuilder.buildTextTheme(
        AppThemeBase.colorPrimaryDarkest,
        AppThemeBase.colorPrimaryLightest,
      ),
      scrollbarTheme: const ScrollbarThemeData().copyWith(
        thumbColor: MaterialStateProperty.all(colorPalette.secondary[200]!),
        thumbVisibility: MaterialStateProperty.all(true),
        radius: Radius.circular(Dimension.md.value),
        thickness: MaterialStateProperty.all(Dimension.xxs.width),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: Colors.transparent,
        padding: EdgeInsets.zero,
        labelPadding: EdgeInsets.symmetric(
          vertical: Dimension.xs.height,
          horizontal: Dimension.sm.width,
        ),
        shape: StadiumBorder(
          side: BorderSide(color: colorPalette.base[200]!),
        ),
        showCheckmark: false,
        labelStyle: appTextStyle.calloutMedium.copyWith(
          /// Figma has 1.5 as line height. With this setting in Flutter,
          /// the text renders decentralized. Changed to 1.0 to fix this.
          height: AppLineHeight.xs.value,
        ),
        selectedColor: foreground.active,
      ),
      tabBarTheme: TabBarTheme(
        labelPadding: EdgeInsets.symmetric(horizontal: Dimension.sm.width),
        dividerColor: Colors.transparent,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(32),
          ),
        ),
        backgroundColor: brightness == Brightness.dark
            ? colorPalette.base.shade200
            : colorPalette.backgroundPalette.solidSurface,
      ),
      colorScheme: ColorScheme(
        primary: foreground.active,
        primaryContainer: foregroundColor,
        secondary: colorPalette.primary[700]!,
        secondaryContainer: colorPalette.primary[700]!,
        surface: colorPalette.backgroundPalette.solidSurface,
        background: colorPalette.backgroundPalette.solidSurface,
        error: colorPalette.deepOrange,
        shadow: Colors.transparent,
        onPrimary: colorPalette.backgroundPalette.solidSurface,
        onSecondary: foreground.active,
        onSurface: foreground.active,
        onBackground: foreground.active,
        onError: colorPalette.backgroundPalette.solidSurface,
        brightness: brightness,
      ),
    );
  }
}

/// App theme extensions on [ThemeData]
extension AppThemeExtension on ThemeData {
  /// Returns the inverted theme implementation, based on current theme brightness.
  /// Example: If current theme is light, the dark theme implementation will be returned.
  ThemeData get inverted => colorScheme.brightness == Brightness.dark
      ? AppTheme.instance.lightTheme
      : AppTheme.instance.darkTheme;
}
