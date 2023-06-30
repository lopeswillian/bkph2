import 'package:apph2/theme/dimension.dart';
import 'package:apph2/theme/responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

///
/// H2Logo Widget
///
class H2Logo extends StatelessWidget {
  /// H2Logo size
  /// Defaults 45, the size is used with
  /// the responsive util
  final double size;

  /// H2Logo color
  /// Defaults to the theme primary
  final Color? color;

  /// Angle color
  final Color? angleColor;

  /// Creates new instance of [H2Logo]
  const H2Logo({
    Key? key,
    this.size = 45,
    this.color,
    this.angleColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _h2Logo(context);
  }

  ///
  /// H2 logo
  ///
  Widget _h2Logo(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: size.fontSize,
        maxHeight: size.fontSize + _angleSize + 8.fontSize,
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset(
              'assets/images/logo_header.svg',
              width: const Dimension(10.73).width, //520
              height: const Dimension(2.32).height, //294,
            ),
        ],
      ),
    );
  }

  double get _angleSize => (size.fontSize * 0.25).ceilToDouble();
}
