import 'dart:math';

import 'package:flutter/material.dart';

import 'background_color_palette.dart';

///
/// Background color palette definition for Light theme.
///
class LightBackgroundColorPalette extends IBackgroundColorPalette {
  @override
  Color get solidSurface => const Color(0xffFFFFFF);

  @override
  Color get solidBackground => const Color(0xffF6F6F6);

  @override
  Gradient get background => LinearGradient(
        colors: [solidBackground, solidBackground],
      );

  @override
  Gradient get surface => LinearGradient(colors: [solidSurface, solidSurface]);

  @override
  Gradient get success => const SweepGradient(
        colors: [
          Color.fromRGBO(232, 234, 250, 0),
          Color.fromRGBO(209, 214, 242, 0.5539),
          Color.fromRGBO(123, 97, 255, 0.7),
          Color.fromRGBO(232, 234, 250, 0),
        ],
        stops: [-0.13, 0.15, 0.72, 0.99],
        startAngle: 3.2,
        center: FractionalOffset(-0.6, 0.68),
        transform: GradientRotation(pi / 1.35),
      );

  @override
  Gradient get error => const SweepGradient(
        colors: [
          Color.fromRGBO(232, 234, 250, 0),
          Color.fromRGBO(209, 214, 242, 0.79),
          Color(0xFFE23535),
          Color.fromRGBO(232, 234, 250, 0),
        ],
        stops: [0.0, 0.57, 0.72, 0.99],
        startAngle: 2.5,
        center: FractionalOffset(-0.6, 0.8),
        transform: GradientRotation(pi / 1.23),
      );
}
