import 'dart:async';

import 'package:apph2/base_app_module_routing.dart';
import 'package:apph2/theme/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_svg/svg.dart';

import '../../infraestructure/utils.dart';
import '../../theme/theme.dart';
import 'widgets/step_widget.dart';

class RegisterStep3Params {
  final String nickName;
  final String cep;
  final String state;
  final String city;
  final String address;
  final String district;
  final String numberAddress;
  RegisterStep3Params({
    required this.nickName,
    required this.cep,
    required this.state,
    required this.city,
    required this.address,
    required this.district,
    required this.numberAddress,
  });
}

class RegisterStep3 extends StatefulWidget {
  final RegisterStep3Params params;
  const RegisterStep3({Key? key, required this.params}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RegisterStep3State createState() => _RegisterStep3State();
}

class _RegisterStep3State extends State<RegisterStep3> {
  bool isKeyboardVisible = false;
  bool obscureText1 = true;
  bool obscureText2 = true;
  final pass = TextEditingController();
  final confirmPass = TextEditingController();
  final email = TextEditingController();

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
    return Scaffold(
      appBar: const H2AppBar(
        centerTitle: true,
        title: Text('Cadastro'),
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
                            const Dimension(4.62).vertical,
                            SvgPicture.asset(
                              'assets/images/register_image2.svg',
                              width: const Dimension(39.25).width,
                              height: const Dimension(31.37).height,
                            ),
                            const Dimension(4.33).vertical,
                            const Divider(),
                            const Dimension(2.5).vertical,
                            Text(
                              'Estamos quase lá! Agora escolha um e-mail e uma senha segura.',
                              style: context.text.body1,
                            ),
                            Dimension.md.vertical,
                            CustomTextFormField(
                              controller: email,
                              labelText: 'E-mail',
                              keyboardType: TextInputType.emailAddress,
                            ),
                            Dimension.md.vertical,
                            CustomTextFormField(
                              obscureText: obscureText1,
                              controller: pass,
                              labelText: 'Criar Senha',
                              hintText: '(de 6 a 8 dígitos)',
                              keyboardType: TextInputType.number,
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    obscureText1 = !obscureText1;
                                  });
                                },
                                icon: Icon(
                                  obscureText1
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                              ),
                            ),
                            Dimension.md.vertical,
                            CustomTextFormField(
                              obscureText: obscureText2,
                              labelText: 'Confirmar Senha',
                              keyboardType: TextInputType.number,
                              controller: confirmPass,
                              errorMessage: pass.text != confirmPass.text &&
                                      confirmPass.text != ''
                                  ? 'Senhas não coincidem.'
                                  : null,
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    obscureText2 = !obscureText2;
                                  });
                                },
                                icon: Icon(
                                  obscureText2
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                              ),
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
                      title: 'Avançar',
                      stepQuantity: 3,
                      onStep: 3,
                      action: () => Nav.pushNamed(
                        BaseAppModuleRouting.registerStepFinally,
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
