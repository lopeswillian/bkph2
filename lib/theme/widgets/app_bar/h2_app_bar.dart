import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/theme/app_theme_factory.dart';
import 'package:apph2/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

part 'custom_h2_app_bar.dart';
part 'standard_app_bar.dart';

/// Where the logo should be placed inside [H2AppBar]
enum H2LogoAppBarPosition {
  /// Leading position
  leading,

  /// Trailing position
  trailing,
}

/// The Definition of H2AppBar
abstract class H2AppBar extends StatelessWidget implements PreferredSizeWidget {
  /// Default [H2AppBar] height
  static const defaultHeight = 60.0;

  const H2AppBar._({
    Key? key,
    this.leading,
    this.automaticallyImplyLeading = true,
    this.title,
    this.actions,
    this.flexibleSpace,
    this.bottom,
    this.elevation,
    this.scrolledUnderElevation,
    this.shadowColor,
    this.surfaceTintColor,
    this.shape,
    this.backgroundColor,
    this.foregroundColor,
    this.iconTheme,
    this.actionsIconTheme,
    this.primary = true,
    this.centerTitle,
    this.excludeHeaderSemantics = false,
    this.titleSpacing,
    this.toolbarOpacity = 1.0,
    this.bottomOpacity = 1.0,
    this.toolbarHeight,
    this.leadingWidth,
    this.toolbarTextStyle,
    this.titleTextStyle,
    this.systemOverlayStyle = SystemUiOverlayStyle.dark,
  }) : super(key: key);

  final Widget? leading;

  /// Controls whether we should try to imply the leading widget if null.
  ///
  /// If true and [leading] is null, automatically try to deduce what the leading
  /// widget should be. If false and [leading] is null, leading space is given to [title].
  /// If leading widget is not null, this parameter has no effect.
  final bool automaticallyImplyLeading;

  final Widget? title;

  final List<Widget>? actions;

  final Widget? flexibleSpace;

  final PreferredSizeWidget? bottom;

  final double? elevation;

  final double? scrolledUnderElevation;

  final Color? shadowColor;

  final Color? surfaceTintColor;

  final ShapeBorder? shape;

  final Color? backgroundColor;

  final Color? foregroundColor;

  final IconThemeData? iconTheme;

  final IconThemeData? actionsIconTheme;

  final bool primary;

  /// Whether the title should be centered.
  ///
  /// If this property is null, then [AppBarTheme.centerTitle] of
  /// [ThemeData.appBarTheme] is used. If that is also null, then value is
  /// adapted to the current [TargetPlatform].
  final bool? centerTitle;

  /// Whether the title should be wrapped with header [Semantics].
  ///
  /// Defaults to false.
  final bool excludeHeaderSemantics;

  final double? titleSpacing;

  final double toolbarOpacity;

  final double bottomOpacity;

  @override
  Size get preferredSize => Size.fromHeight(
        toolbarHeight ?? defaultHeight + (bottom?.preferredSize.height ?? 0),
      );

  final double? toolbarHeight;

  /// Defines the width of [leading] widget.
  ///
  /// By default, the value of `leadingWidth` is 56.0.
  final double? leadingWidth;

  final TextStyle? toolbarTextStyle;

  final TextStyle? titleTextStyle;

  final SystemUiOverlayStyle? systemOverlayStyle;

  /// Creates a [H2AppBar] with all the default settings
  const factory H2AppBar({
    Key? key,
    VoidCallback? onBack,
    bool forceBackButton,
    H2LogoAppBarPosition logoPosition,
    Widget? action,
    bool automaticallyImplyLeading,
    Widget? title,
    PreferredSizeWidget? bottom,
    Color? backgroundColor,
    bool centerTitle,
    Widget? flexibleSpace,
    double? scrolledUnderElevation,
  }) = _StandardAppBar;

  /// Creates a [H2AppBar] with a menu icon to the trailing position.
  factory H2AppBar.withMenuAction({
    Key? key,

    /// Override the default [RightMenuButton] onTap method
    VoidCallback? onTapMenu,
    bool forceBackButton = false,
    VoidCallback? onBack,
    Widget? title,
    H2LogoAppBarPosition logoPosition = H2LogoAppBarPosition.leading,
    Color backgroundColor = Colors.transparent,
    bool centerTitle = true,
    bool automaticallyImplyLeading = true,
    PreferredSizeWidget? bottom,
    Widget? flexibleSpace,
  }) =>
      H2AppBar(
        key: key,
        onBack: onBack,
        logoPosition: logoPosition,
        forceBackButton: forceBackButton,
        title: title,
        backgroundColor: backgroundColor,
        centerTitle: centerTitle,
        automaticallyImplyLeading: automaticallyImplyLeading,
        bottom: bottom,
        flexibleSpace: flexibleSpace,
      );

  /// Creates a [H2AppBar] for alternative layouts.
  const factory H2AppBar.custom({
    Widget? leading,
    bool automaticallyImplyLeading,
    Widget? title,
    List<Widget>? actions,
    Widget? flexibleSpace,
    PreferredSizeWidget? bottom,
    IconThemeData? iconTheme,
    IconThemeData? actionsIconTheme,
    double? elevation,
    double? scrolledUnderElevation,
    Color? shadowColor,
    Color? surfaceTintColor,
    ShapeBorder? shape,
    Color? backgroundColor,
    Color? foregroundColor,
    TextTheme? textTheme,
    bool primary,
    bool? centerTitle,
    bool excludeHeaderSemantics,
    double? titleSpacing,
    double toolbarOpacity,
    double bottomOpacity,
    double? toolbarHeight,
    double? leadingWidth,
    TextStyle? toolbarTextStyle,
    TextStyle? titleTextStyle,
    SystemUiOverlayStyle? systemOverlayStyle,
  }) = _CustomAppBar;
}
