import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../dimension.dart';
import 'loading.dart';

class H2Loading extends StatefulWidget {
  const H2Loading({super.key});

  @override
  State<H2Loading> createState() => _H2LoadingState();
}

class _H2LoadingState extends State<H2Loading> with TickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _animationController.addListener(() => setState(() {}));
    _animationController.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          'assets/images/logo.svg',
          width: const Dimension(28.75).width,
        ),
        Positioned(
          top: const Dimension(8 / 8).height,
          left: const Dimension(8 / 8).width,
          child: SizedBox(
            width: const Dimension(61 / 8).width,
            height: const Dimension(61 / 8).height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RotationTransition(
                  turns: Tween(
                    begin: 0.0,
                    end: 1.0,
                  ).animate(_animationController),
                  child: GradientCircularProgressIndicator(
                    radius: const Dimension(28 / 8).width,
                    gradientColors: const [
                      Color(0x00146DED),
                      Color(0xFF146DED),
                    ],
                    strokeWidth: const Dimension(4 / 8).value,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
