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
  <?xml version="1.0" encoding="utf-8"?>
  <!-- Generator: Adobe Illustrator 27.8.1, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->
  <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
    viewBox="0 0 1920 575.8" style="enable-background:new 0 0 1920 575.8;" xml:space="preserve">
  <style type="text/css">
    .st0{fill:#FFFFFF;}
  </style>
  <g>
    <path class="st0" fill="#FFFFFF" d="M75.7,228c4-12,10.4-24,17.6-35.1c47.1-69.5,142.2-87.9,212.5-40.7c69.5,47.1,87.9,142.2,40.7,212.5
      c-32,47.1-85.5,71.1-138.2,67.1l-27.2,39.9c71.1,12.8,145.4-16,188.5-79.1c57.5-85.5,35.1-202.1-50.3-259.6S117.2,97.8,59.7,183.2
      c-6.4,9.6-12,20-16.8,30.4L75.7,228z"/>
    <path class="st0" fill="#FFFFFF" d="M781.8,156.9h-61.5c-4,0-8.8,4-9.6,8l-17.6,66.3c-3.2,8-13.6,32-35.9,32c-14.4,0-30.4,0-46.3,0l0,0
      c-15.2,0-30.4,0-43.9,0c-20.8,0-21.6-16-20.8-23.2l20-75.1c1.6-4.8-0.8-8-5.6-8h-61.5c-4,0-8.8,4-9.6,8l-60.7,226.9
      c-1.6,4.8,0.8,8,5.6,8h61.5c4,0,8.8-4,9.6-8l20-75.1c4-9.6,14.4-30.4,35.1-30.4c12.8,0,27.2,0,41.5,0l0,0c16.8,0,33.6,0,48.7,0
      c22.4,0,21.6,18.4,20.8,24L650,391.7c-1.6,4.8,0.8,8,5.6,8h61.5c4,0,8.8-4,9.6-8l60.7-226.9C788.2,160.1,785.8,156.9,781.8,156.9z"
      />
    <path class="st0" fill="#FFFFFF" d="M229,388.5c-66.3,0-119.8-51.9-119.8-115.8S162.7,156.9,229,156.9c24.8,0,47.9,7.2,67.1,20
      c-21.6-16.8-48.7-27.2-78.3-27.2c-70.3,0-127,57.5-127,129.4s56.7,127.8,127,127.8c55.1,0,103-35.9,119.8-86.3
      C319.3,360.6,277.8,388.5,229,388.5z"/>
    <path class="st0" fill="#FFFFFF" d="M809,238.4c0,0,12-81.5,60.7-81.5c119.8,0,218.1,0,218.1,0s39.1,0.8,32,30.4c-9.6,36.7-13.6,79.9-52.7,92.7
      c-53.5,17.6-167,31.2-167,31.2s-55.1,3.2-55.9,18.4c-0.8,9.6,9.6,12.8,20.8,13.6c8.8,0.8,190.9,0,204.5,0l-16.8,56.7H791.4
      c0,0-25.6,1.6-15.2-40.7c6.4-25.6,16.8-63.9,16.8-63.9s4.8-24,44.7-28.8c40.7-4.8,149.4-21.6,149.4-21.6s33.6-0.8,47.9-20
      c14.4-19.2,4.8-23.2-6.4-23.2c-10.4,0.8-113.4,0-113.4,0s-14.4,0.8-20,12c-5.6,11.2-7.2,23.2-7.2,23.2L809,238.4z"/>
    <g>
      <path class="st0" fill="#FFFFFF" d="M1334.8,306.6l-1.9,7.1c-7.1,26.3-13.7,50.1-40.5,68.4c-26.6,18-53.2,17.7-81.1,17.7
        c-65.5,0-112.5-3.2-88.9-91.2l16.7-62.3c21.3-79.6,67.1-91.2,137.8-91.2c66.1,0,95.2,6.7,77.1,79l-2.5,9.3h-66.1l2.5-9.3
        c3.5-21.5-11.1-23.1-33-23.1c-36.6,0-43.1,11.2-52.3,45.6l-10.1,37.6c-9.6,36-11.7,49.8,26.8,49.8c26.7,0,40-1.9,47.6-30.2
        l1.9-7.1H1334.8z"/>
      <path class="st0" fill="#FFFFFF" d="M1398.4,335.6h82l-12.2,45.6h-134.5l52.7-196.6h52.4L1398.4,335.6z"/>
      <path class="st0" fill="#FFFFFF" d="M1705.5,184.6l-35.1,131c-14,52.4-42.6,67.1-100.3,67.1c-78.6,0-81.7-19.9-69-67.1l35.1-131h52.4l-34.8,130
        c-6,22.3,6.5,22.5,28.6,22.5c22.3,0,30.4-1.8,36.6-24.9l34.2-127.6H1705.5z"/>
      <path class="st0" fill="#FFFFFF" d="M1722,184.6h103.3c39.1,0,60.2,7.3,48.6,50.3c-6.7,24.9-16,41.1-43.1,45.3l-0.6,2.1
        c28.6,1.8,28.9,19.4,22.3,44c-12.9,48.2-37.2,54.8-78.9,54.8h-104.3L1722,184.6z M1753.4,263.2h37.7c18.3,0,23.6-3.1,27.9-18.9
        c3.2-11.8,2.5-16.3-12-16.8h-44L1753.4,263.2z M1733.3,338.2h39.6c17,0,25.2-3.9,29.4-19.9c4.4-16.3-1-18.6-18.1-18.6h-40.6
        L1733.3,338.2z"/>
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
        ],
      ),
    );
  }

  double get _angleSize => (size.fontSize * 0.25).ceilToDouble();
}
