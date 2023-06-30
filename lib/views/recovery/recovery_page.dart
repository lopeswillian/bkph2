import 'dart:async';

import 'package:apph2/base_app_module_routing.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

import '../../theme/theme.dart';

class RecoveryPage extends StatefulWidget {
  const RecoveryPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _RecoveryPageState createState() => _RecoveryPageState();
}

class _RecoveryPageState extends State<RecoveryPage> {
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
        title: Text('Recuperar Senha'),
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimension.sm.width),
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
                      Dimension.md.vertical,
                      Text(
                        'Insira seu endereço de e-mail associado à sua conta.',
                        style: context.text.body1,
                      ),
                      Dimension.md.vertical,
                      const TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'E-mail',
                        ),
                      ),
                      const Dimension(8.5).vertical,
                      ContainedButton.large(
                        text: 'Enviar',
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20.fontSize,
                        ),
                        onPressed: () => Nav.pushNamed(
                          BaseAppModuleRouting.registerStep2,
                        ),
                        padding: EdgeInsets.only(
                          right: const Dimension(1.375).width,
                          left: const Dimension(2.5).width,
                          top: Dimension.sm.height,
                          bottom: Dimension.sm.height,
                        ),
                      ),
                      Dimension.xxxl.vertical
                    ],
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
