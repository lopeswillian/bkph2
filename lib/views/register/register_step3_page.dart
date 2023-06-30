import 'dart:async';

import 'package:apph2/base_app_module_routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_svg/svg.dart';

import '../../infraestructure/utils.dart';
import '../../theme/theme.dart';
import 'widgets/step_widget.dart';

class RegisterStep3 extends StatefulWidget {
  const RegisterStep3({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _RegisterStep3State createState() => _RegisterStep3State();
}

class _RegisterStep3State extends State<RegisterStep3> {
  bool isKeyboardVisible = false;

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
                            const TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'CPF',
                                hintText: '(Apenas números)',
                              ),
                            ),
                            Dimension.md.vertical,
                            const TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Criar Senha',
                                hintText: '(de 6 a 8 dígitos)',
                                suffixIcon: IconButton(
                                  onPressed: null,
                                  icon: Icon(Icons.visibility),
                                ),
                              ),
                            ),
                            Dimension.md.vertical,
                            const TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Confirmar Senha',
                                suffixIcon: IconButton(
                                  onPressed: null,
                                  icon: Icon(Icons.visibility),
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
