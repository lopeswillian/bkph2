import 'package:apph2/theme/app_theme_base.dart';
import 'package:apph2/theme/dimension.dart';
import 'package:apph2/theme/typography/typography_extension.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final List<BottomNavigationBarItem> items;
  final ValueChanged<int> onTap;
  final int selectedIndex;

  CustomBottomNavigationBar(
      {required this.items, required this.onTap, required this.selectedIndex});

  @override
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
          backgroundColor: AppThemeBase.colorPrimaryDarkest,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xFFFFFFFF),
          selectedIconTheme: const IconThemeData(
            color: Color(0xFF146DED), // Cor do ícone selecionado
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
