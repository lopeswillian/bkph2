import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/theme/dimension.dart';
import 'package:apph2/theme/responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

///
/// Custom back button with default icon
///
class CustomBackButton extends StatelessWidget {
  /// On Tap back button. Default behavior is [Nav.maybePop()]
  final VoidCallback? onTap;

  /// It Defines the icon's color
  final Color? color;

  /// Creates a [CustomBackButton]
  const CustomBackButton({
    Key? key,
    this.onTap,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap ?? () async => await Nav.maybePop(),
      iconSize: 18.fontSize,
      color: color,
      splashRadius: 22.fontSize,
      icon: SvgPicture.asset(
        'assets/icons/arrow_back.svg',
        width: const Dimension(1.4).width,
        height: const Dimension(2.62).height,
      ),
    );
  }
}
