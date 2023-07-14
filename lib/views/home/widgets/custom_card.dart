import 'package:apph2/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCardType {
  final List<Color> colors;
  final List<double> stops;

  CustomCardType({
    required this.colors,
    required this.stops,
  });
}

class CustomCard extends StatelessWidget {
  final String title;
  final String name;
  final String number;
  final int type;

  const CustomCard({
    Key? key,
    required this.title,
    required this.name,
    required this.number,
    required this.type,
  }) : super(key: key);

  CustomCardType getColor(int type) {
    switch (type) {
      case 5:
      case 9:
        return CustomCardType(
          colors: const [
            Color(0xFF0078FF),
            Color(0xFF127FF9),
            Color(0xFF00092A),
          ],
          stops: [0.0, 0.2, 1.2],
        );
      case 6:
      case 10:
        return CustomCardType(
          colors: const [
            Color(0xFFAD7836),
            Color(0xFF6C4B1E),
          ],
          stops: [0.0, 1.2],
        );
      case 7:
      case 11:
        return CustomCardType(
          colors: const [
            Color(0xFFAAABAE),
            Color(0xFF66686D),
          ],
          stops: [0.0, 1.2],
        );
      case 12:
      case 14:
      case 15:
      case 16:
        return CustomCardType(
          colors: [
            const Color(0xFF000000).withOpacity(0.9),
            const Color(0xFF494949),
          ],
          stops: [0.0, 1],
        );
      default:
        return CustomCardType(
          colors: const [
            Color(0xFF0078FF),
            Color(0xFF127FF9),
            Color(0xFF00092A),
          ],
          stops: [0.0, 0.2, 1.2],
        );
    }
  }

  Color? getBorder(int number) {
    switch (number) {
      case 14:
        return const Color(0xFFDCAC01);
      case 15:
        return const Color(0xFF0899D7);
      case 16:
        return const Color(0xFF01D0AA);
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: const Dimension(42.375).width,
      height: const Dimension(24.75).height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [...getColor(type).colors],
          stops: [...getColor(type).stops],
        ),
        border: Border.all(
          color: getBorder(type) ?? Colors.transparent,
          width: getBorder(type) != null ? 2 : 0,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -150,
              child: ClipOval(
                child: Container(
                  width: const Dimension(43).width,
                  height: const Dimension(30).height,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.1),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: -150,
              left: -150,
              child: ClipOval(
                child: Container(
                  width: const Dimension(43).width,
                  height: const Dimension(30).height,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.1),
                  ),
                ),
              ),
            ),
            Positioned(
              top: const Dimension(4).value,
              right: 27,
              child: SvgPicture.asset(
                'assets/images/logo_card.svg',
                width: const Dimension(7).width,
                height: const Dimension(3.87).height,
              ),
            ),
            Container(
              padding: EdgeInsets.all(
                const Dimension(4).value,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Dimension.sm.vertical,
                      Text(
                        title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    number,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
