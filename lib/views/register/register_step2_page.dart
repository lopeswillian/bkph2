import 'dart:async';
import 'dart:convert';

import 'package:apph2/theme/widgets/custom_text.dart';
import 'package:apph2/views/register/register_step3_page.dart';
import 'package:apph2/views/register/register_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:intl/intl.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:http/http.dart' as http;

import '../../base_app_module_routing.dart';
import '../../infraestructure/utils.dart';
import '../../theme/theme.dart';
import 'widgets/step_widget.dart';

class RegisterStep2 extends StatefulWidget {
  const RegisterStep2({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _RegisterStep2State createState() => _RegisterStep2State();
}

class _RegisterStep2State extends State<RegisterStep2> {
  bool isKeyboardVisible = false;
  final _formKey = GlobalKey<FormState>();
  late RegisterViewModel registerViewModel;
  late String _selectedGender = '';
  static final List<String> _radioValues = [
    'f',
    'm',
  ];

  final nickName = TextEditingController();
  final phone = TextEditingController();
  final cep = TextEditingController();
  final state = TextEditingController();
  final city = TextEditingController();
  final address = TextEditingController();
  final district = TextEditingController();
  final numberAddress = TextEditingController();
  final complement = TextEditingController();

  var phoneNumberFormatter = MaskTextInputFormatter(
    mask: '(##)#####-####',
    filter: {'#': RegExp(r'[0-9]')},
  );

  var cepFormater = MaskTextInputFormatter(
    mask: '#####-###',
    filter: {'#': RegExp(r'[0-9]')},
  );

  late StreamSubscription<bool> keyboardSubscription;

  @override
  void initState() {
    super.initState();

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
        title: Text('Cadastro'),
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
                          child: Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                Dimension.md.vertical,
                                Text(
                                  'Ótimo! Agora precisamos de algumas informações pessoais para criar sua conta.',
                                  style: context.text.body1,
                                ),
                                Dimension.xl.vertical,
                                CustomTextFormField(
                                  labelText: 'Nome Completo',
                                  enabled: false,
                                  initialValue:
                                      registerViewModel.state.document!.name,
                                ),
                                Dimension.sm.vertical,
                                CustomTextFormField(
                                  labelText: 'Data de Nascimento',
                                  enabled: false,
                                  initialValue: DateFormat('dd/MM/yyy')
                                      .format(registerViewModel
                                          .state.document!.birthdate)
                                      .toString(),
                                ),
                                Dimension.sm.vertical,
                                CustomTextFormField(
                                  controller: phone,
                                  inputFormatters: [phoneNumberFormatter],
                                  keyboardType: TextInputType.phone,
                                  labelText: 'Telefone Celular',
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Digite seu celular.';
                                    }
                                    return null;
                                  },
                                ),
                                Dimension.sm.vertical,
                                CustomTextFormField(
                                  controller: nickName,
                                  labelText: 'Apelido',
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Digite seu apelido.';
                                    }
                                    return null;
                                  },
                                ),
                                Dimension.sm.vertical,
                                ..._radioValues
                                    .map(
                                      (value) => RadioListTile(
                                        title: Text(
                                          value == 'f'
                                              ? "Feminino"
                                              : "Masculino",
                                          style: context.text.body2,
                                        ),
                                        dense: true,
                                        contentPadding: EdgeInsets.zero,
                                        visualDensity: const VisualDensity(
                                          horizontal:
                                              VisualDensity.minimumDensity,
                                          vertical:
                                              VisualDensity.minimumDensity,
                                        ),
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        value: value,
                                        groupValue: _selectedGender,
                                        onChanged: (newValue) {
                                          setState(() {
                                            _selectedGender = newValue!;
                                          });
                                        },
                                      ),
                                    )
                                    .toList(),
                                Dimension.sm.vertical,
                                CustomTextFormField(
                                  inputFormatters: [cepFormater],
                                  labelText: 'CEP',
                                  keyboardType: TextInputType.number,
                                  controller: cep,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Digite seu cep.';
                                    }
                                    return null;
                                  },
                                  onChanged: (value) async {
                                    if (address.text != '') {
                                      state.text = '';
                                      city.text = '';
                                      address.text = '';
                                      district.text = '';
                                      setState(() {});
                                    }
      
                                    if (value.length == 10) {
                                      String cep = value.replaceAll(
                                          RegExp(r'[^0-9]'), '');
                                      String url =
                                          'https://viacep.com.br/ws/$cep/json/';
      
                                      http.Response response =
                                          await http.get(Uri.parse(url));
      
                                      String responseData = response.body;
      
                                      dynamic data = jsonDecode(responseData);
      
                                      if (data['logradouro'] != null) {
                                        state.text = data['uf'];
                                        city.text = data['localidade'];
                                        address.text = data['logradouro'];
                                        district.text = data['bairro'];
                                        setState(() {});
                                      }
                                    }
                                  },
                                ),
                                Visibility(
                                  visible: address.text != '',
                                  child: Column(
                                    children: [
                                      Dimension.sm.vertical,
                                      CustomTextFormField(
                                        enabled: false,
                                        labelText: 'Estado',
                                        controller: state,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Insira seu cep novamente.';
                                          }
                                          return null;
                                        },
                                      ),
                                      Dimension.sm.vertical,
                                      CustomTextFormField(
                                        enabled: false,
                                        labelText: 'Cidade',
                                        controller: city,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Insira seu cep novamente.';
                                          }
                                          return null;
                                        },
                                      ),
                                      Dimension.sm.vertical,
                                      CustomTextFormField(
                                        enabled: false,
                                        labelText: 'Bairro',
                                        controller: district,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Insira seu cep novamente.';
                                          }
                                          return null;
                                        },
                                      ),
                                      Dimension.sm.vertical,
                                      CustomTextFormField(
                                        enabled: false,
                                        labelText: 'Endereço',
                                        controller: address,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Insira seu cep novamente.';
                                          }
                                          return null;
                                        },
                                      ),
                                      Dimension.sm.vertical,
                                      CustomTextFormField(
                                        labelText: 'Numero',
                                        controller: numberAddress,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Digite o numero do seu endereço.';
                                          }
                                          return null;
                                        },
                                      ),
                                      Dimension.sm.vertical,
                                      CustomTextFormField(
                                        labelText: 'Complemento',
                                        controller: complement,
                                      ),
                                    ],
                                  ),
                                ),
                                const Dimension(25).vertical,
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
                      child: StepWidget(
                        title: 'Avançar',
                        stepQuantity: 3,
                        onStep: 2,
                        action: () {
                          if (_formKey.currentState!.validate()) {
                            Nav.pushNamed(
                              BaseAppModuleRouting.registerStep3,
                              arguments: RegisterStep3Params(
                                nickName: nickName.text,
                                cep: cep.text,
                                state: state.text,
                                city: city.text,
                                address: address.text,
                                district: district.text,
                                numberAddress: numberAddress.text,
                                phone: phone.text,
                                gender: _selectedGender,
                                complement: complement.text,
                              ),
                            );
                            return;
                          }
      
                          const snackBar = SnackBar(
                            content:
                                Text('Preencha todos os campos necessários'),
                            duration: Duration(seconds: 3),
                          );
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
      ),
    );
  }
}
