import 'package:apph2/theme/app_theme_factory.dart';
import 'package:apph2/theme/responsive/responsive_extension.dart';
import 'package:flutter/material.dart';

///
/// Custom OutlinedButton.
///
class GhostButton extends StatelessWidget {
  ///
  /// Button text label.
  ///
  final String text;

  ///
  /// On tap button callback method.
  ///
  final VoidCallback? onPressed;

  ///
  /// Enable/disable button. Default true
  ///
  final bool enabled;

  ///
  /// Custom font size. Use [GhostButton.small] or [GhostButton.large] to use
  /// predefined font sizes.
  ///
  final double? fontSize;

  ///
  ///  Button padding. Defaults to [outlinedButtonTheme.padding]
  ///
  final EdgeInsetsGeometry? padding;

  ///
  /// The properties [leading], [text] and [trailing] are located in a [Row].
  /// If true, the [Row.mainAxisSize] is set to [MainAxisSize.max]. Otherwise,
  /// [MainAxisSize.min] is used.
  ///
  final bool expanded;

  /// The color and weight of the button's outline.
  ///
  /// This value is combined with [shape] to create a shape decorated
  /// with an outline.
  final MaterialStateProperty<BorderSide?>? side;

  /// The shape of the button's underlying [Material].
  ///
  /// This shape is combined with [side] to create a shape decorated
  /// with an outline.
  final MaterialStateProperty<OutlinedBorder?>? shape;

  /// The elevation of the button's [Material].
  final MaterialStateProperty<double?>? elevation;

  /// List of Widgets placed BEFORE the [text]
  final List<Widget> leading;

  /// List of Widgets placed AFTER the [text]
  final List<Widget> trailing;

  /// If non-null, the style to use for this button text. Defaults to
  /// [context.textTheme.labelLarge] with [FontWeight.bold].
  ///
  /// Important: This style will be merged with local colors and font size.
  final TextStyle? textStyle;

  ///
  /// Show loading
  ///
  final bool loading;

  ///
  /// Creates a [GhostButton]
  ///
  const GhostButton._({
    Key? key,
    required this.text,
    required this.fontSize,
    required this.expanded,
    this.enabled = true,
    this.padding,
    this.onPressed,
    this.side,
    this.shape,
    this.elevation,
    this.leading = const [],
    this.trailing = const [],
    this.textStyle,
    this.loading = false,
  }) : super(key: key);

  ///
  /// Creates a [GhostButton] with small text size (12)
  ///
  factory GhostButton.small({
    required String text,
    VoidCallback? onPressed,
    Key? key,
    bool enabled = true,
    EdgeInsetsGeometry? padding,
    bool expanded = false,
    MaterialStateProperty<BorderSide?>? side,
    MaterialStateProperty<OutlinedBorder?>? shape,
    MaterialStateProperty<double?>? elevation,
    List<Widget> leading = const [],
    List<Widget> trailing = const [],
    TextStyle? textStyle,
    bool loading = false,
  }) {
    return GhostButton._(
      key: key,
      text: text,
      onPressed: onPressed,
      fontSize: 12.fontSize,
      enabled: enabled,
      padding: padding,
      expanded: expanded,
      side: side,
      shape: shape,
      elevation: elevation,
      leading: leading,
      trailing: trailing,
      textStyle: textStyle,
      loading: loading,
    );
  }

  ///
  /// Creates a [GhostButton] with large text size (14)
  ///
  factory GhostButton.large({
    required String text,
    VoidCallback? onPressed,
    Color? backgroundColor,
    Key? key,
    bool enabled = true,
    EdgeInsetsGeometry? padding,
    bool expanded = false,
    MaterialStateProperty<BorderSide?>? side,
    MaterialStateProperty<OutlinedBorder?>? shape,
    MaterialStateProperty<double?>? elevation,
    List<Widget> leading = const [],
    List<Widget> trailing = const [],
    TextStyle? textStyle,
    bool loading = false, 
    double? fontSize,
  }) {
    return GhostButton._(
      key: key,
      text: text,
      onPressed: onPressed,
      fontSize: fontSize ?? 20.fontSize,
      enabled: enabled,
      padding: padding,
      expanded: expanded,
      side: side,
      shape: shape,
      elevation: elevation,
      leading: leading,
      trailing: trailing,
      textStyle: textStyle,
      loading: loading,
    );
  }

  ///
  /// Creates a [GhostButton] with small text size (12) and an icon at
  /// trailing position
  ///
  factory GhostButton.smallTrailingIcon({
    required String text,
    required Widget icon,
    VoidCallback? onPressed,
    Key? key,
    bool enabled = true,
    EdgeInsetsGeometry? padding,
    bool expanded = false,
    MaterialStateProperty<BorderSide?>? side,
    MaterialStateProperty<OutlinedBorder?>? shape,
    MaterialStateProperty<double?>? elevation,
    TextStyle? textStyle,
    bool loading = false,
  }) {
    return GhostButton._(
      key: key,
      text: text,
      onPressed: onPressed,
      fontSize: 12.fontSize,
      enabled: enabled,
      padding: padding,
      expanded: expanded,
      side: side,
      shape: shape,
      elevation: elevation,
      trailing: [icon],
      textStyle: textStyle,
      loading: loading,
    );
  }

  ///
  /// Creates a [GhostButton] with large text size (14) and an icon at
  /// trailing position
  ///
  factory GhostButton.largeTrailingIcon({
    required String text,
    required Widget icon,
    VoidCallback? onPressed,
    Key? key,
    bool enabled = true,
    EdgeInsetsGeometry? padding,
    bool expanded = false,
    MaterialStateProperty<BorderSide?>? side,
    MaterialStateProperty<OutlinedBorder?>? shape,
    MaterialStateProperty<double?>? elevation,
    FontWeight? fontWeight,
    TextStyle? textStyle,
    bool loading = false,
  }) {
    return GhostButton._(
      key: key,
      text: text,
      onPressed: onPressed,
      fontSize: 14.fontSize,
      enabled: enabled,
      padding: padding,
      expanded: expanded,
      side: side,
      shape: shape,
      elevation: elevation,
      trailing: [icon],
      textStyle: textStyle,
      loading: loading,
    );
  }

  @override
  Widget build(BuildContext context) {
    final defaultTextStyle = context.textTheme.labelLarge?.copyWith(
      fontWeight: context.textTheme.fontWeightBold,
    );

    final btnContent = AnimatedSwitcher(
      duration: const Duration(milliseconds: 400),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: expanded ? MainAxisSize.max : MainAxisSize.min,
        children: [
          if (leading.isNotEmpty) ...leading,
          Flexible(
            child: Text(
              text,
              style: (textStyle ?? defaultTextStyle)?.copyWith(
                fontSize: fontSize,
                color: buttonLabelColor(enabled: enabled, context: context),
              ),
            ),
          ),
          if (trailing.isNotEmpty) ...trailing,
        ],
      ),
    );

    return OutlinedButton(
      onPressed: enabled ? onPressed : null,
      style: context.theme.outlinedButtonTheme.style?.copyWith(
        padding: padding != null
            ? MaterialStateProperty.all(padding)
            : context.theme.outlinedButtonTheme.style?.padding,
        side: side,
        shape: shape,
        elevation: elevation,
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
      ),
      child: expanded ? Center(child: btnContent) : btnContent,
    );
  }

  ///
  /// Function to get button label/border color
  ///
  Color buttonLabelColor({
    required bool enabled,
    required BuildContext context,
  }) {
    if (enabled) {
      if (context.colorScheme.isDarkTheme) {
        return context.colorScheme.colorPrimarySuperlight;
      }
      return context.colorScheme.colorPrimaryLight;
    }
    return context.colorScheme.colorNeutralLightmodeLight;
  }
}
