import 'package:apph2/theme/theme.dart';
import 'package:flutter/material.dart';

class CustomSwitchPayment extends StatefulWidget {
  final Function(int position) position;
  const CustomSwitchPayment({super.key, required this.position});

  @override
  State<CustomSwitchPayment> createState() => _CustomSwitchPaymentState();
}

class _CustomSwitchPaymentState extends State<CustomSwitchPayment> {
  int positionLocal = 0;

  _changePositon(int p) {
    positionLocal = p;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: Dimension.sm.height,
        horizontal: const Dimension(2.5).width,
      ),
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: AppThemeBase.colorPrimaryLightest,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              _changePositon(0);
              widget.position(0);
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: Dimension.sm.height,
                horizontal: const Dimension(2.5).width,
              ),
              decoration: BoxDecoration(
                color:
                    positionLocal == 0 ? AppThemeBase.colorPrimaryInDark : null,
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Center(
                  child: Text(
                "Pix",
                style: context.text.body1.copyWith(
                  fontWeight: FontWeight.w600,
                  color: positionLocal == 0
                      ? Colors.white
                      : AppThemeBase.colorPrimaryInDark,
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
                vertical: Dimension.sm.height,
                horizontal: const Dimension(2.5).width,
              ),
              decoration: BoxDecoration(
                color:
                    positionLocal == 1 ? AppThemeBase.colorPrimaryInDark : null,
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Center(
                  child: Text(
                "TED",
                style: context.text.body1.copyWith(
                  fontWeight: FontWeight.w600,
                  color: positionLocal == 1
                      ? Colors.white
                      : AppThemeBase.colorPrimaryInDark,
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
                vertical: Dimension.sm.height,
                horizontal: const Dimension(2.5).width,
              ),
              decoration: BoxDecoration(
                color:
                    positionLocal == 2 ? AppThemeBase.colorPrimaryInDark : null,
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Center(
                  child: Text(
                "Cheque",
                style: context.text.body1.copyWith(
                  fontWeight: FontWeight.w600,
                  color: positionLocal == 2
                      ? Colors.white
                      : AppThemeBase.colorPrimaryInDark,
                ),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
