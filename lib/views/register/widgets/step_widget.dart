import 'package:apph2/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StepWidget extends StatelessWidget {
  final String title;
  final VoidCallback? action;
  final bool withNextArrow;
  final int stepQuantity;
  final int onStep;
  final bool enabled;

  const StepWidget({
    Key? key,
    this.action,
    required this.title,
    required this.stepQuantity,
    required this.onStep,
    this.withNextArrow = true,
    this.enabled = true
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Dimension.sm.width,
        vertical: Dimension.md.height,
      ),
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: List.generate(
                stepQuantity,
                (index) => Padding(
                  padding:
                      EdgeInsets.only(right: const Dimension(1.25).width),
                  child: Container(
                    width: const Dimension(5.5).width,
                    height: const Dimension(0.375).width,
                    decoration: BoxDecoration(
                      color: onStep > index
                          ? AppThemeBase.colorPrimaryLight
                          : const Color(0xFFE5E5E5),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Dimension(2.5).vertical,
            ContainedButton.large(
              text: 'Avançar',
              enabled: enabled,
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 20.fontSize,
              ),
              onPressed: () => {
                action!()
              },
              padding: EdgeInsets.only(
                right: const Dimension(1.375).width,
                left: const Dimension(2.5).width,
                top: Dimension.sm.height,
                bottom: Dimension.sm.height,
              ),
              trailing: SvgPicture.asset(
                'assets/icons/arrow_next.svg',
                width: const Dimension(1.4).width,
                height: const Dimension(2.62).height,
              ),
            )
          ],
        ),
      ),
    );
  }
}
