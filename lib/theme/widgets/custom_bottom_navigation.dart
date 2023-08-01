import 'package:apph2/theme/app_theme_base.dart';
import 'package:apph2/theme/dimension.dart';
import 'package:apph2/theme/typography/typography_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final List<BottomNavigationBarItem> items;
  final ValueChanged<int> onTap;
  final int selectedIndex;

  const CustomBottomNavigationBar({
    super.key,
    required this.items,
    required this.onTap,
    required this.selectedIndex,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        BottomNavigationBar(
          enableFeedback: false,
          backgroundColor: AppThemeBase.colorPrimaryDarkest,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xFFFFFFFF),
          selectedIconTheme: const IconThemeData(
            color: Color(0xFF146DED),
          ),
          selectedLabelStyle: TextStyle(
            fontSize: context.text.caption.fontSize,
            fontWeight: FontWeight.normal,
            color: const Color(0xFFFFFFFF),
          ),
          unselectedItemColor: const Color(0x99FFFFFF),
          items: widget.items,
          currentIndex: widget.selectedIndex,
          onTap: widget.onTap,
        ),
        Positioned(
          top: -20,
          left: (MediaQuery.of(context).size.width -
                  const Dimension(89.58 / 8).width) /
              2,
          child: Center(
            child: InkWell(
              onTap: () => widget.onTap(2),
              child: Container(
                padding: EdgeInsets.only(
                  top: Dimension.xs.height,
                  left: Dimension.md.width,
                  right: Dimension.md.width,
                ),
                decoration: const BoxDecoration(
                  color: AppThemeBase.colorPrimaryDarkest,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(9999.0),
                    topRight: Radius.circular(9999.0),
                  ),
                ),
                child: SvgPicture.string(
                  '''<svg width="41" height="40" viewBox="0 0 41 40" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="H2"><path d="M3.71262 13.5973C4.16794 12.3146 4.88595 11.0318 5.70027 9.83186C11.0415 2.39197 21.8116 0.422339 29.7709 5.47054C37.6427 10.5187 39.7267 20.6979 34.3854 28.2206C30.7691 33.2688 24.7011 35.8343 18.7294 35.4039L15.656 39.6825C23.7117 41.048 32.1263 37.9694 37.0123 31.2164C43.5269 22.0634 40.9963 9.57531 31.312 3.41816C21.6277 -2.74727 8.41468 -0.347305 1.9001 8.80567C1.17334 9.83186 0.542895 10.9408 1.33514e-05 12.058L3.71262 13.5973Z" fill="white"/><path d="M20.9576 31.006C13.4001 31.006 7.30473 25.3522 7.30473 18.3942C7.30473 11.4363 13.4001 5.78245 20.9576 5.78245C23.7763 5.78245 26.4188 6.5649 28.6033 7.95313C26.1457 6.1274 23.054 5 19.6804 5C11.6649 5 5.20835 11.2596 5.20835 19.0841C5.20835 26.9087 11.6737 33 19.6804 33C25.9608 33 31.4219 29.0877 33.3333 23.6106C31.237 27.9603 26.5069 31.006 20.9488 31.006H20.9576Z" fill="#166FED"/></g></svg>''',
                  width: 41,
                ),
              ),
            ),
          ),
        ),
        if (widget.selectedIndex != 2)
          Positioned(
            top: -2,
            left: MediaQuery.of(context).size.width *
                (widget.selectedIndex / widget.items.length),
            width: MediaQuery.of(context).size.width / widget.items.length,
            height: 4,
            child: Center(
              child: Container(
                width: const Dimension(6.51).width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
