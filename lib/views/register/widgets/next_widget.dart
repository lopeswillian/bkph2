import 'package:apph2/theme/theme.dart';
import 'package:flutter/material.dart';

class NextWidget extends StatelessWidget {
  final String title;
  final VoidCallback? action;
  final bool withNextArrow;
  final Widget? topWidget;

  const NextWidget({
    Key? key,
    this.action,
    required this.title,
    this.withNextArrow = false,
    this.topWidget,
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
            if (topWidget != null) topWidget!,
            if (topWidget != null) const Dimension(3.75).vertical,
            ContainedButton.large(
              onPressed: () => {action!()},
              padding: EdgeInsets.only(
                right: const Dimension(1.375).width,
                left: const Dimension(2.5).width,
                top: Dimension.sm.height,
                bottom: Dimension.sm.height,
              ),
              child:  Row(
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.fontSize,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
