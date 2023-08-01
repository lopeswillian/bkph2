import 'package:apph2/theme/theme.dart';
import 'package:flutter/material.dart';

class CustomSwitchPoint extends StatefulWidget {
  final Function(int position) position;
  const CustomSwitchPoint({super.key, required this.position});

  @override
  State<CustomSwitchPoint> createState() =>
      _CustomSwitchPointState();
}

class _CustomSwitchPointState extends State<CustomSwitchPoint> {
  int positionLocal = 0;

  _changePositon(int p) {
    positionLocal = p;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: IntrinsicWidth(
        child: Container(
          decoration: const BoxDecoration(
            color: AppThemeBase.colorSecondary02,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  _changePositon(0);
                  widget.position(0);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: const Dimension(0.625).height,
                    horizontal: const Dimension(1.25).width,
                  ),
                  decoration: BoxDecoration(
                    color: positionLocal == 0
                        ? AppThemeBase.colorPrimaryLight
                        : null,
                  ),
                  child: Center(
                      child: Text(
                    "Todos",
                    style: context.text.caption.copyWith(
                      fontWeight: positionLocal == 0? FontWeight.w600: FontWeight.normal,
                      color: positionLocal == 0
                          ? Colors.white
                          : AppThemeBase.colorSecondary04
                    ),
                  )),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _changePositon(1);
                  widget.position(1);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: const Dimension(0.625).height,
                    horizontal: const Dimension(1.25).width,
                  ),
                  decoration: BoxDecoration(
                    color: positionLocal == 1
                        ? AppThemeBase.colorPrimaryLight
                        : null,
                  ),
                  child: Center(
                      child: Text(
                    "Acumulados",
                    style: context.text.caption.copyWith(
                      fontWeight: positionLocal == 1? FontWeight.w600: FontWeight.normal,
                      color: positionLocal == 1
                          ? Colors.white
                          : AppThemeBase.colorSecondary04,
                    ),
                  )),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _changePositon(2);
                  widget.position(2);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: const Dimension(0.625).height,
                    horizontal: const Dimension(1.25).width,
                  ),
                  decoration: BoxDecoration(
                    color: positionLocal == 2
                        ? AppThemeBase.colorPrimaryLight
                        : null,
                  ),
                  child: Center(
                      child: Text(
                    "Resgatados",
                    style: context.text.caption.copyWith(
                      fontWeight: positionLocal == 2? FontWeight.w600: FontWeight.normal,
                      color: positionLocal == 2
                          ? Colors.white
                          : AppThemeBase.colorSecondary04,
                    ),
                  )),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _changePositon(3);
                  widget.position(3);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: const Dimension(0.625).height,
                    horizontal: const Dimension(1.25).width,
                  ),
                  decoration: BoxDecoration(
                    color: positionLocal == 3
                        ? AppThemeBase.colorPrimaryLight
                        : null,
                  ),
                  child: Center(
                      child: Text(
                    "Expirados",
                    style: context.text.caption.copyWith(
                      fontWeight: positionLocal == 3? FontWeight.w600: FontWeight.normal,
                      color: positionLocal == 3
                          ? Colors.white
                          : AppThemeBase.colorSecondary04,
                    ),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
