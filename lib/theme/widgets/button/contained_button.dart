import 'package:apph2/theme/app_theme_factory.dart';
import 'package:apph2/theme/dimension.dart';
import 'package:flutter/material.dart';

///
/// Custom Contained Button
///
class ContainedButton extends StatelessWidget {
  ///
  /// Button label text.
  ///
  final String? text;

  ///
  /// Callback method.
  ///
  final VoidCallback? onPressed;

  ///
  /// Enable/disable button.
  ///
  final bool enabled;

  ///
  /// Override default button style
  ///
  final ButtonStyle? style;

  ///
  /// Show loading
  ///
  final bool loading;

  ///
  /// Child instead Text
  ///
  final Widget? child;

  /// The minimum height of the button
  final double? minimumHeight;

  /// Whether the button can fill the entire width or not
  final bool expand;

  ///
  //Set a custom text stle to the [ContainedButton]
  final TextStyle? textStyle;

  ///
  ///Set a custom icon on end of [ContainedButton]
  final Widget? trailing;

  ///
  ///Set a custom padding to [ContainedButton]
  final EdgeInsets? padding;

  ///
  /// Creates a CustomContainedButton
  ///
  const ContainedButton._(
      {Key? key,
      this.text,
      this.enabled = true,
      this.onPressed,
      this.style,
      this.loading = false,
      this.minimumHeight,
      this.child,
      this.textStyle,
      this.expand = true,
      this.trailing,
      this.padding})
      : assert(
          text != null || child != null,
          'Required text or child parameters',
        ),
        super(key: key);

  ///
  /// Creates a small sized ContainedButton
  ///
  factory ContainedButton.small({
    String? text,
    VoidCallback? onPressed,
    bool enabled = true,
    ButtonStyle? style,
    Widget? child,
    TextStyle? textStyle,
  }) {
    return ContainedButton._(
      text: text,
      onPressed: onPressed,
      enabled: enabled,
      minimumHeight: 28.0,
      textStyle: textStyle,
      style: style ??
          ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 16.0,
            ),
          ),
      child: child,
    );
  }

  ///
  /// Creates a large sized ContainedButton
  ///
  factory ContainedButton.large({
    String? text,
    VoidCallback? onPressed,
    bool enabled = true,
    ButtonStyle? style,
    bool loading = false,
    Widget? child,
    TextStyle? textStyle,
    bool expand = true,
    double? minimumHeight,
    Widget? trailing,
    EdgeInsets? padding,
  }) {
    return ContainedButton._(
      text: text,
      onPressed: onPressed,
      enabled: enabled,
      style: style,
      loading: loading,
      textStyle: textStyle,
      expand: expand,
      minimumHeight: minimumHeight,
      trailing: trailing,
      padding: padding,
      child: child,
    );
  }

  /// Function to organize the display of the child button
  Widget _childButton(BuildContext context) {
    if (child == null) {
      return Text(
        text!,
        style: textStyle ?? context.textTheme.bodyMedium,
      );
    }

    return child!;
  }

  Widget _withIcon(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text!,
          style: textStyle,
        ),
        trailing!,
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final btnContent = AnimatedSwitcher(
      duration: const Duration(milliseconds: 400),
      child: _childButton(context),
    );
    return Container(
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.all(Radius.circular(const Dimension(0.75).height)),
        gradient: const LinearGradient(
          colors: [
            Color(0xFF127FF9),
            Color(0xFF0D56BE),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: ElevatedButton(
        onPressed: enabled ? onPressed : null,
        style: style ??
            context.theme.elevatedButtonTheme.style!.copyWith(
              foregroundColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.disabled)) {
                    return Colors.white.withOpacity(0.5);
                  }
                  return Colors.white;
                },
              ),
              padding: MaterialStateProperty.resolveWith<EdgeInsets?>(
                (Set<MaterialState> states) {
                  return padding ??
                      EdgeInsets.only(
                        top: Dimension.sm.height,
                        bottom: Dimension.sm.height,
                        left: Dimension.md.width,
                        right: Dimension.md.width,
                      );
                },
              ),
              backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.disabled)) {
                    return Colors.transparent;
                  }
                  return Colors.transparent;
                },
              ),
            ),
        child: trailing != null
            ? _withIcon(context)
            : expand
                ? Center(child: btnContent)
                : btnContent,
      ),
    );
  }
}
