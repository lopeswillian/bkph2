import 'dart:async';

import 'package:apph2/base_app_module_routing.dart';
import 'package:apph2/domain/entities/register_params.dart';
import 'package:apph2/theme/widgets/custom_text.dart';
import 'package:apph2/views/register/register_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

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
  final String phone;
  final String gender;
  final String? complement;
  RegisterStep3Params({
    required this.nickName,
    required this.cep,
    required this.state,
    required this.city,
    required this.address,
    required this.district,
    required this.numberAddress,
    required this.phone,
    required this.gender,
    this.complement,
  });
}

class RegisterStep3 extends StatefulWidget {
  final RegisterStep3Params params;
  const RegisterStep3({
    Key? key,
    required this.params,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RegisterStep3State createState() => _RegisterStep3State();
}

class _RegisterStep3State extends State<RegisterStep3> {
  late RegisterViewModel registerViewModel;

  bool isKeyboardVisible = false;
  bool obscureText1 = true;
  bool obscureText2 = true;
  late final RegisterStep3Params params;
  final pass = TextEditingController();
  final confirmPass = TextEditingController();
  final email = TextEditingController();

  late StreamSubscription<bool> keyboardSubscription;

  @override
  void initState() {
    super.initState();
    params = widget.params;
    registerViewModel = DM.get<RegisterViewModel>();
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
                padding: EdgeInsets.only(
                  left: Dimension.sm.width,
                  right: Dimension.sm.width,
                  bottom:
                      isKeyboardVisible ? const Dimension(130 / 8).height : 0,
                ),
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
                              maxLength: 8,
                              hintText: '(de 6 a 8 dígitos)',
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
                              controller: confirmPass,
                              maxLength: 8,
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
              Align(
                alignment: Alignment.bottomCenter,
                child: IntrinsicHeight(
                  child: Container(
                    color: Colors.white,
                    child: StepWidget(
                      title: 'Avançar',
                      stepQuantity: 3,
                      onStep: 3,
                      action: () async {
                        await registerViewModel.register(
                          registerParams: RegisterParams(
                            nationality: 1,
                            name: registerViewModel.state.document!.name,
                            nickname: params.nickName,
                            gender: params.gender,
                            email: email.text,
                            cpf: registerViewModel.state.document!.document,
                            cellphone: '+55${params.phone}',
                            birthdate: DateFormat('dd/MM/yyy')
                                .format(
                                    registerViewModel.state.document!.birthdate)
                                .toString(),
                            zipcode: params.cep.replaceAll('.', ''),
                            address: params.address,
                            number: params.numberAddress,
                            district: params.district,
                            state: params.state,
                            city: params.city,
                            password: pass.text,
                            passwordConfirmation: confirmPass.text,
                            complement: params.complement,
                          ),
                        );
                        if (registerViewModel.state.error == '') {
                          Nav.pushNamed(
                            BaseAppModuleRouting.registerStepFinally,
                          );
                          return;
                        }
                        var snackBar = SnackBar(
                          content: Text(registerViewModel.state.error),
                          duration: const Duration(seconds: 2),
                        );
                        // ignore: use_build_context_synchronously
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
