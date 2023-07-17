part of 'h2_app_bar.dart';

class _StandardAppBar extends H2AppBar {
  final VoidCallback? onBack;

  final bool forceBackButton;

  final H2LogoAppBarPosition logoPosition;

  final Widget? action;

  const _StandardAppBar({
    Key? key,
    this.onBack,
    this.forceBackButton = false,
    this.logoPosition = H2LogoAppBarPosition.leading,
    bool automaticallyImplyLeading = true,
    Widget? title,
    PreferredSizeWidget? bottom,
    Color? backgroundColor,
    bool centerTitle = false,
    Widget? flexibleSpace,
    this.action,
    double? scrolledUnderElevation,
  }) : super._(
          automaticallyImplyLeading: automaticallyImplyLeading,
          title: title,
          key: key,
          backgroundColor: backgroundColor,
          centerTitle: centerTitle,
          bottom: bottom,
          flexibleSpace: flexibleSpace,
          scrolledUnderElevation: scrolledUnderElevation,
        );

  @override
  Widget build(BuildContext context) {
    const h2Logo = H2Logo();
    final backButton =
        automaticallyImplyLeading && (Nav.canPop() || forceBackButton)
            ? CustomBackButton(
                onTap: onBack,
                color: context.colorScheme.onSurface,
              )
            : null;

    final logoOrBackButton = backButton ?? h2Logo;
    final actionOrBackButton = backButton ?? action;
    final leading = logoPosition == H2LogoAppBarPosition.leading
        ? logoOrBackButton
        : actionOrBackButton;
    // final trailing = logoPosition == H2LogoAppBarPosition.trailing
    //     ? [h2Logo]
    //     : [action ?? const SizedBox.shrink()];

    return AppBar(
      elevation: 0,
      leading: Padding(
        padding: EdgeInsets.only(
          left: Dimension.sm.width,
        ),
        child: leading,
      ),
      leadingWidth: leadingWidth?.responsiveWidth ??
          (backButton != null ? null : const Dimension(14).width),
      systemOverlayStyle: SystemUiOverlayStyle.light,
      backgroundColor: backgroundColor ?? context.theme.colorScheme.background,
      surfaceTintColor: context.theme.colorScheme.background,
      scrolledUnderElevation: scrolledUnderElevation,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF166FED),
              Color(0xFF00092A),
            ],
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            stops: [0, 1],
            transform: GradientRotation(3.14159),
          ),
        ),
      ),
      title: title,
      centerTitle: centerTitle,
      bottom: bottom,
      actions: [
        Container(
          height: double.infinity,
          padding: EdgeInsets.only(right: Dimension.lg.width),
          // child: Row(children: trailing),
          child: const LoginWidget(),
        ),
      ],
    );
  }
}
