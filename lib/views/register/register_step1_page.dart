import 'dart:async';

import 'package:apph2/base_app_module_routing.dart';
import 'package:apph2/domain/entities/cpf_params.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/theme/widgets/custom_text.dart';
import 'package:apph2/views/register/register_state.dart';
import 'package:apph2/views/register/register_viewmodel.dart';
import 'package:apph2/views/register/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../theme/theme.dart';

class RegisterStep1 extends StatefulWidget {
  const RegisterStep1({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _RegisterStep1State createState() => _RegisterStep1State();
}

class _RegisterStep1State extends ViewState<RegisterStep1, RegisterViewModel> {
  bool isKeyboardVisible = false;
  var cpfFormater = MaskTextInputFormatter(
    mask: '###.###.###-##',
    filter: {'#': RegExp(r'[0-9]')},
  );
  late StreamSubscription<bool> keyboardSubscription;

  @override
  void initState() {
    super.initState();

    var keyboardVisibilityController = KeyboardVisibilityController();
    keyboardSubscription =
        keyboardVisibilityController.onChange.listen((bool visible) {
      setState(() {
        isKeyboardVisible = visible;
      });
    });
  }

  @override
  void dispose() {
    keyboardSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelConsumer<RegisterViewModel, RegisterState>(
      viewModel: viewModel,
      listenWhen: (previous, current) => previous.error != current.error,
      listener: (context, state) => {},
      builder: _buildPage,
    );
  }

  Widget _buildPage(BuildContext context, RegisterState state) {
    return Scaffold(
      appBar: const H2AppBar(
        title: Text('Cadastro'),
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
                            const Dimension(8).vertical,
                            Image.asset(
                              'assets/images/register_image1.png',
                              width: const Dimension(39.25).width,
                              height: const Dimension(31.37).height,
                            ),
                            const Dimension(6.25).vertical,
                            const Divider(),
                            const Dimension(2.5).vertical,
                            Text(
                              'Bem-vindo ao nosso aplicativo! Para começar, por favor, insira seu CPF.',
                              style: context.text.body1,
                            ),
                            Dimension.xxl.vertical,
                            CustomTextFormField(
                              labelText: 'CPF',
                              inputFormatters: [cpfFormater],
                              hintText: '(Apenas números)',
                              errorMessage:
                                  state.error != '' ? state.error : null,
                              onChanged: (value) {
                                if (value.length == 14) {
                                  viewModel.getCpf(
                                    cpfParams: CpfParams(document: value),
                                  );
                                }
                              },
                            ),
                            const Dimension(25).vertical,
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Visibility(
                visible: !isKeyboardVisible,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: const Dimension(18).height,
                    color: Colors.white,
                    child: StepWidget(
                      enabled: state.document != null,
                      title: 'Avançar',
                      stepQuantity: 3,
                      onStep: 1,
                      action: () => Nav.pushNamed(
                        BaseAppModuleRouting.registerStep2,
                      ),
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
