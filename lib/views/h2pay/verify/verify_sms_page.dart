import 'package:apph2/base_app_module_routing.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/theme/app_theme_factory.dart';
import 'package:apph2/theme/theme.dart';
import 'package:apph2/views/register/widgets/next_widget.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifySmsPage extends StatefulWidget {
  const VerifySmsPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _VerifySmsPageState createState() => _VerifySmsPageState();
}

class _VerifySmsPageState extends State<VerifySmsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const H2AppBar(
        title: Text('H2 Pay'),
        centerTitle: true,
      ),
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF166FED),
              Color(0xFF00092A),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(27),
              topRight: Radius.circular(27),
            ),
          ),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimension.sm.width),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return SingleChildScrollView(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight: constraints.maxHeight,
                        ),
                        child: Column(
                          children: [
                            const Dimension(9.375).vertical,
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: const Dimension(8.12).width,
                              ),
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  style: TextStyle(
                                    fontSize: 19.fontSize,
                                    height: 1.5,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text:
                                          'Informe o código que recebeu no número',
                                      style: TextStyle(
                                        color: context
                                            .colorScheme.colorPrimaryDarkest,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '\n(41) 987436504',
                                      style: TextStyle(
                                        color: context
                                            .colorScheme.colorPrimaryDarkest,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Dimension.xxxl.vertical,
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: const Dimension(8.12).width,
                              ),
                              child: PinCodeTextField(
                                appContext: context,
                                length: 4,
                                keyboardType: TextInputType.number,
                                pinTheme: PinTheme(
                                  selectedColor:
                                      context.colorScheme.colorPrimaryMedium,
                                  activeColor: AppThemeBase.colorSecondary04,
                                  inactiveColor: AppThemeBase.colorSecondary04,
                                  activeFillColor: Colors.white,
                                ),
                              ),
                            ),
                            Dimension.sm.vertical,
                            Text(
                              'Insira o código de 4 números',
                              style: context.textTheme.bodySmall!.copyWith(
                                  color: AppThemeBase.colorSecondary04,
                                  fontWeight: FontWeight.normal),
                            ),
                            Dimension.md.vertical,
                            TextButton(
                              child: Text(
                                'Não recebeu nenhum código? Reenviar',
                                style: TextStyle(
                                  color: context.colorScheme.colorPrimaryMedium,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: IntrinsicHeight(
                  child: Container(
                    color: Colors.white,
                    child: NextWidget(
                      title: 'Avançar',
                      action: (){
                        Nav.pushNamed(BaseAppModuleRouting.verifyTermsPage);
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}