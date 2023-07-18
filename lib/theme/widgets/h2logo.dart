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

  final String svgCode = '''
<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
 viewBox="0 0 470 100" style="enable-background:new 0 0 470 100;" xml:space="preserve">
<style type="text/css">
	.st0{fill:#FFFFFF;}
	.st1{fill:#166FED;}
</style>
<g>
	<path class="st0" style="fill:#FFFFFF;" d="M9.4,34.7c1-3.1,2.6-6.1,4.5-9C25.9,8,50.1,3.3,68.1,15.4c17.7,12,22.4,36.3,10.4,54.2
		c-8.2,12-21.8,18.1-35.3,17.1l-6.9,10.2c18.1,3.3,37.1-4.1,48.1-20.2c14.7-21.8,9-51.6-12.8-66.2S20,1.5,5.3,23.3
		c-1.6,2.4-3.1,5.1-4.3,7.7L9.4,34.7z"/>
	<path class="st0" style="fill:#FFFFFF;" d="M189.5,16.6h-15.7c-1,0-2.2,1-2.4,2l-4.5,16.9c-0.8,2-3.5,8.2-9.2,8.2c-3.7,0-7.7,0-11.8,0l0,0
		c-3.9,0-7.7,0-11.2,0c-5.3,0-5.5-4.1-5.3-5.9l5.1-19.2c0.4-1.2-0.2-2-1.4-2h-15.7c-1,0-2.2,1-2.4,2L99.4,76.5c-0.4,1.2,0.2,2,1.4,2
		h15.7c1,0,2.2-1,2.4-2l5.1-19.2c1-2.4,3.7-7.7,9-7.7c3.3,0,6.9,0,10.6,0l0,0c4.3,0,8.6,0,12.4,0c5.7,0,5.5,4.7,5.3,6.1l-5.5,20.8
		c-0.4,1.2,0.2,2,1.4,2H173c1,0,2.2-1,2.4-2L191,18.6C191.2,17.4,190.6,16.6,189.5,16.6z"/>
	<path class="st1" style="fill:#166FED;" d="M48.5,75.7c-16.9,0-30.6-13.2-30.6-29.6s13.7-29.6,30.6-29.6c6.3,0,12.2,1.8,17.1,5.1
		c-5.5-4.3-12.4-6.9-20-6.9c-17.9,0-32.4,14.7-32.4,33s14.5,32.6,32.4,32.6c14.1,0,26.3-9.2,30.6-22C71.5,68.6,60.9,75.7,48.5,75.7z
		"/>
	<path class="st0" style="fill:#FFFFFF;" d="M196.5,37.4c0,0,3.1-20.8,15.5-20.8c30.6,0,55.6,0,55.6,0s10,0.2,8.2,7.7c-2.4,9.4-3.5,20.4-13.5,23.6
		c-13.7,4.5-42.6,7.9-42.6,7.9s-14.1,0.8-14.3,4.7c-0.2,2.4,2.4,3.3,5.3,3.5c2.2,0.2,48.7,0,52.2,0l-4.3,14.5H192
		c0,0-6.5,0.4-3.9-10.4c1.6-6.5,4.3-16.3,4.3-16.3s1.2-6.1,11.4-7.3c10.4-1.2,38.1-5.5,38.1-5.5s8.6-0.2,12.2-5.1
		c3.7-4.9,1.2-5.9-1.6-5.9c-2.6,0.2-28.9,0-28.9,0s-3.7,0.2-5.1,3.1s-1.8,5.9-1.8,5.9L196.5,37.4z"/>
	<g>
		<path class="st1" style="fill:#166FED;" d="M330.6,54.8l-0.5,1.8c-1.8,6.7-3.5,12.8-10.3,17.5c-6.8,4.6-13.6,4.5-20.7,4.5c-16.7,0-28.7-0.8-22.7-23.3
			l4.3-15.9c5.4-20.3,17.1-23.3,35.2-23.3c16.9,0,24.3,1.7,19.7,20.2l-0.6,2.4H318l0.6-2.4c0.9-5.5-2.8-5.9-8.4-5.9
			c-9.3,0-11,2.9-13.4,11.6l-2.6,9.6c-2.5,9.2-3,12.7,6.8,12.7c6.8,0,10.2-0.5,12.1-7.7l0.5-1.8H330.6z"/>
		<path class="st1" style="fill:#166FED;" d="M346.9,62.2h20.9l-3.1,11.6h-34.3l13.4-50.2h13.4L346.9,62.2z"/>
		<path class="st1" style="fill:#166FED;" d="M425.2,23.7l-9,33.4c-3.6,13.4-10.9,17.1-25.6,17.1c-20.1,0-20.8-5.1-17.6-17.1l9-33.4h13.4l-8.9,33.2
			c-1.5,5.7,1.7,5.8,7.3,5.8c5.7,0,7.7-0.5,9.3-6.4l8.7-32.6H425.2z"/>
		<path class="st1" style="fill:#166FED;" d="M429.4,23.7h26.3c10,0,15.3,1.9,12.4,12.8c-1.7,6.4-4.1,10.5-11,11.6l-0.1,0.5c7.3,0.5,7.4,4.9,5.7,11.2
			c-3.3,12.3-9.5,14-20.1,14H416L429.4,23.7z M437.4,43.7h9.6c4.7,0,6-0.8,7.1-4.8c0.8-3,0.6-4.1-3.1-4.3h-11.2L437.4,43.7z
			 M432.3,62.9h10.1c4.3,0,6.4-1,7.5-5.1c1.1-4.1-0.3-4.7-4.6-4.7H435L432.3,62.9z"/>
	</g>
</g>
</svg>
''';

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
          SvgPicture.string(
            svgCode,
            width: const Dimension(10.73).width,
            height: const Dimension(2.32).height,
          ),
          // SvgPicture.asset(
          //   'assets/images/LogoH2Club_03.svg',
          //   width: const Dimension(10.73).width,
          //   height: const Dimension(2.32).height,
          // ),
        ],
      ),
    );
  }

  double get _angleSize => (size.fontSize * 0.25).ceilToDouble();
}
