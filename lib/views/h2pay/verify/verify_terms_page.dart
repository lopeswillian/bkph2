// ignore_for_file: library_private_types_in_public_api

import 'package:apph2/base_app_module_routing.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/theme/app_theme_factory.dart';
import 'package:apph2/theme/theme.dart';
import 'package:apph2/views/h2pay/verify/verify_viewmodel.dart';
import 'package:apph2/views/register/widgets/next_widget.dart';
import 'package:flutter/material.dart' hide View;

class VerifyTermsPage extends StatefulWidget {
  const VerifyTermsPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _VerifyTermsPageState createState() => _VerifyTermsPageState();
}

class _VerifyTermsPageState extends State<VerifyTermsPage>
    with View<VerifyViewModel> {
  bool accept = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const H2AppBar(
        title: Text('H2 Club'),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Dimension.xl.vertical,
                            Text(
                              'Termos e Condições',
                              style: TextStyle(fontSize: 19.fontSize),
                            ),
                            const Dimension(2.5).vertical,
                            Container(
                              decoration: BoxDecoration(
                                color: AppThemeBase.colorSecondary02,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: const Dimension(1.87).width,
                                vertical: const Dimension(1.25).height,
                              ),
                              child: Text(
                                viewModel.state.termsCondition?.content ?? '',
                                style: context.textTheme.labelSmall,
                                textAlign: TextAlign.justify,
                              ),
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
                      topWidget: Row(
                        children: [
                          Switch(
                            value: accept,
                            activeColor: AppThemeBase.colorPrimarySuperlight,
                            activeTrackColor: AppThemeBase.colorPrimaryMedium,
                            onChanged: (value) {
                              setState(() {
                                accept = value;
                              });
                            },
                          ),
                          Dimension.sm.horizontal,
                          Expanded(
                            child: Text(
                              'Declaro que li e concordo com os termos de uso acima.',
                              style: context.text.body2.copyWith(
                                color: context.colorScheme.colorPrimaryDarkest,
                              ),
                            ),
                          )
                        ],
                      ),
                      title: 'Avançar',
                      enabled: accept,
                      action: () {
                        Nav.pushNamed(
                          BaseAppModuleRouting.verifyComplementPage,
                        );
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
