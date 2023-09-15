// ignore_for_file: library_private_types_in_public_api

import 'dart:async';

import 'package:apph2/base_app_module_routing.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/theme/app_theme_factory.dart';
import 'package:apph2/theme/theme.dart';
import 'package:apph2/views/h2pay/verify/verify_state.dart';
import 'package:apph2/views/h2pay/verify/verify_viewmodel.dart';
import 'package:apph2/views/register/widgets/next_widget.dart';
import 'package:flutter/material.dart' hide View;
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifySmsPage extends StatefulWidget {
  const VerifySmsPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _VerifySmsPageState createState() => _VerifySmsPageState();
}

class _VerifySmsPageState extends State<VerifySmsPage>
    with View<VerifyViewModel> {
  TextEditingController pinCodeController = TextEditingController();
  late StreamSubscription<bool> keyboardSubscription;
  bool isKeyboardVisible = false;
  bool validSms = false;
  @override
  void initState() {
    super.initState();
    viewModel.getSmsCode();
    var keyboardVisibilityController = KeyboardVisibilityController();
    keyboardSubscription = keyboardVisibilityController.onChange.listen(
      (bool visible) {
        setState(() {
          isKeyboardVisible = visible;
        });
      },
    );
  }

  @override
  void dispose() {
    keyboardSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<VerifyViewModel, VerifyState>(
      viewModel: viewModel,
      buildWhen: (previous, current) =>
          previous.loading != current.loading,
      builder: (context, state) {
        return _buildPage(context, state);
      },
    );
  }

  Widget _buildPage(BuildContext context, VerifyState state) {
    return Scaffold(
      appBar: const H2AppBar(
        title: Text('H2 Club'),
        centerTitle: true,
      ),
      backgroundColor: Colors.transparent,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Container(
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
                    builder: (secondContext, constraints) {
                      return SingleChildScrollView(
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            minHeight: constraints.maxHeight,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom +
                                  120,
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
                                            color: context.colorScheme
                                                .colorPrimaryDarkest,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\n${viewModel.state.phone}',
                                          style: TextStyle(
                                            color: context.colorScheme
                                                .colorPrimaryDarkest,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Dimension.md.vertical,
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: const Dimension(8.12).width,
                                  ),
                                  child: PinCodeTextField(
                                    controller: pinCodeController,
                                    appContext: context,
                                    autoFocus: true,
                                    length: 4,
                                    keyboardType: TextInputType.number,
                                    pinTheme: PinTheme(
                                      selectedColor: context
                                          .colorScheme.colorPrimaryMedium,
                                      activeColor:
                                          AppThemeBase.colorSecondary04,
                                      inactiveColor:
                                          AppThemeBase.colorSecondary04,
                                      activeFillColor: Colors.white,
                                    ),
                                  ),
                                ),
                                Dimension.sm.vertical,
                                Text(
                                  'Insira o código de 4 números',
                                  style: context.textTheme.bodySmall!.copyWith(
                                    color: AppThemeBase.colorSecondary04,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Dimension.md.vertical,
                                TextButton(
                                  child: Text(
                                    'Não recebeu nenhum código? Reenviar',
                                    style: TextStyle(
                                      color: context
                                          .colorScheme.colorPrimaryMedium,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  onPressed: () {
                                    viewModel.getSmsCode();
                                  },
                                ),
                              ],
                            ),
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
                        action: () async {
                          validSms = await viewModel.validateSmsCode(pinCodeController.text);
                          if (!validSms) {
                            const snackBar = SnackBar(
                              content: Text('Código expirado ou inválido.'),
                              duration: Duration(seconds: 2),
                            );

                            // ignore: use_build_context_synchronously
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                            return;
                          }
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
      ),
    );
  }
}
