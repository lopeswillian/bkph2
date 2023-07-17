import 'package:apph2/theme/theme.dart';
import 'package:flutter/material.dart';

class CustomSwitchAntecipation extends StatefulWidget {
  final Function(int position) position;
  const CustomSwitchAntecipation({super.key, required this.position});

  @override
  State<CustomSwitchAntecipation> createState() =>
      _CustomSwitchAntecipationState();
}

class _CustomSwitchAntecipationState extends State<CustomSwitchAntecipation> {
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
                    "Em aberto",
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
                    "Vencidos",
                    style: context.text.caption.copyWith(
                      fontWeight: positionLocal == 2? FontWeight.w600: FontWeight.normal,
                      color: positionLocal == 2
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
