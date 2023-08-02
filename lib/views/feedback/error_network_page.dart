import 'package:apph2/theme/app_theme_factory.dart';
import 'package:apph2/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ErrorNetworkPage extends StatefulWidget {
  const ErrorNetworkPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ErrorNetworkPageState createState() => _ErrorNetworkPageState();
}

class _ErrorNetworkPageState extends State<ErrorNetworkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimension.xl.width),
            child: LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: constraints.maxHeight,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Dimension(31.75).vertical,
                        SvgPicture.asset(
                          'assets/images/wifi_error.svg',
                          width: const Dimension(292 / 8).width,
                        ),
                        const Dimension(9).vertical,
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: TextStyle(fontSize: 18.fontSize),
                            children: <TextSpan>[
                              const TextSpan(
                                text: 'Atenção!',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Color(0XFFDE506C),
                                ),
                              ),
                              TextSpan(
                                text:
                                    ' Verifique sua conexão e  tente novamente.',
                                style: TextStyle(
                                  color:
                                      context.colorScheme.colorPrimaryDarkest,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
