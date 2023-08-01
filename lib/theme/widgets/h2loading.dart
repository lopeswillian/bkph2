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
        SizedBox(
          width: const Dimension(230 / 8).width,
          height: const Dimension(127 / 8).height,
          child: SvgPicture.asset('assets/images/logo.svg'),
        ),
        Positioned(
          top: 10.5,
          left: 10.5,
          child: RotationTransition(
            turns: Tween(begin: 0.0, end: 1.0).animate(_animationController),
            child: GradientCircularProgressIndicator(
              radius: const Dimension(29 / 8).value,
              gradientColors: const [
                Color(0x00146DED),
                Color(0xFF146DED),
              ],
              strokeWidth: 4,
            ),
          ),
        ),
      ],
    );
  }
}
