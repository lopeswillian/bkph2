import 'dart:convert';

import 'package:apph2/domain/entities/profile_info.dart';
import 'package:apph2/domain/entities/profile_update_params.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/theme/theme.dart';
import 'package:apph2/theme/widgets/custom_text.dart';
import 'package:apph2/theme/widgets/h2loading.dart';
import 'package:apph2/views/login/login_viewmodel.dart';
import 'package:apph2/views/profile/profile_state.dart';
import 'package:apph2/views/profile/profile_viewmodel.dart';
import 'package:flutter/material.dart' hide View;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with View<ProfileViewModel> {
  final _formKey = GlobalKey<FormState>();

  late String _selectedGender = '';
  static final List<String> _radioValues = [
    'f',
    'm',
  ];

  bool notifyScore = false;
  bool notifyRedemption = false;
  bool notifyPromotion = false;
  bool notifyCategory = false;
  final email = TextEditingController();
  final nickName = TextEditingController();
  final phone = TextEditingController();
  final cep = TextEditingController();
  final stateParam = TextEditingController();
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
    mask: '##.###-###',
    filter: {'#': RegExp(r'[0-9]')},
  );

  late LoginViewModel _loginViewModel;
  @override
  void initState() {
    super.initState();
    _loginViewModel = DM.get<LoginViewModel>();
    if (viewModel.state.profile != null) {
      setValuesOnController(viewModel.state.profile!);
    }
  }

  setValuesOnController(ProfileInfo profile) {
    _selectedGender = profile.gender;
    nickName.text = profile.nickname;
    email.text = profile.email;
    phone.text = phoneNumberFormatter.maskText(profile.ddd + profile.cellphone);
    cep.text = cepFormater.maskText(profile.zipCode);
    stateParam.text = profile.stateAbbreviation;
    city.text = profile.cityName;
    address.text = profile.address;
    district.text = profile.district;
    numberAddress.text = profile.number;
    complement.text = profile.complement;
    notifyScore = profile.notifyScore;
    notifyRedemption = profile.notifyRedemption;
    notifyPromotion = profile.notifyPromotion;
    notifyCategory = profile.notifyCategory;
    
  }

  logout() async {
    _loginViewModel.logout();
  }

  updateProfile() async {
    final user = viewModel.state.profile;
    if (user == null) return;

    await viewModel.updateProfile(
      params: ProfileUpdateParams(
        customerId: user.id.toString(),
        nickname: nickName.text,
        email: email.text,
        zipCode: cep.text,
        address: address.text,
        number: numberAddress.text,
        complement: complement.text,
        state: stateParam.text,
        city: city.text,
        district: district.text,
        gender: _selectedGender,
        notifyScore: notifyScore,
        notifyRedemption: notifyRedemption,
        notifyPromotion: notifyPromotion,
        notifyCategory: notifyCategory,
        cellphone: phone.text,
        ddd: user.ddd,
      ),
    );
    await _loginViewModel.updateProfile(viewModel.state.profile!);
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelConsumer<ProfileViewModel, ProfileState>(
      viewModel: viewModel,
      buildWhen: (previous, current) {
        return previous.loading != current.loading;
      },
      listenWhen: (previous, current) =>
          previous.profile != current.profile ||
          previous.error != current.error ||
          previous.updated != current.updated,
      listener: (context, state) {
        if (state.profile != null) {
          setValuesOnController(state.profile!);
        } else {
          logout();
        }

        if (state.error != '') {
          final snackBar = SnackBar(
            content: Text(state.error),
            duration: const Duration(seconds: 3),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }

        if (state.updated) {
          const snackBar = SnackBar(
            content: Text(
              'Perfil atualizado!',
              style: TextStyle(
                color: Color(0xFF0F594C),
              ),
            ),
            duration: Duration(seconds: 3),
            backgroundColor: Color(0xFFD1E7DD),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return state.loading
            ? const Scaffold(
                body: Center(
                  child: H2Loading(),
                ),
              )
            : _buildPage(context, state);
      },
    );
  }

  Widget _buildPage(BuildContext context, ProfileState state) {
    return Scaffold(
      appBar: H2AppBar.custom(
        backgroundColor: const Color(0xFFF5F5F5),
        title: Text(
          'Perfil',
          style: context.text.body1.copyWith(
            fontSize: 20.fontSize,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: Dimension.sm.width),
        color: const Color(0xFFF5F5F5),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Dimension.xl.vertical,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: const Dimension(12.5).width,
                          height: const Dimension(12.5).height,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                            child: FaIcon(
                              FontAwesomeIcons.user,
                            ),
                          ),
                        ),
                        Dimension.md.vertical,
                        Text(
                          state.profile!.name,
                          style: context.text.body2Bold,
                        ),
                        Dimension.xxs.vertical,
                        Text(
                          state.profile!.email,
                          style: context.text.caption.copyWith(
                            color: const Color(0xFFABABAB),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Dimension.xl.vertical,
                CustomTextFormField(
                  labelText: 'Nome Completo',
                  enabled: false,
                  initialValue: state.profile!.name,
                ),
                Dimension.sm.vertical,
                CustomTextFormField(
                  labelText: 'Data de Nascimento',
                  enabled: false,
                  initialValue: DateFormat('dd/MM/yyy')
                      .format(
                        DateTime.parse(
                          state.profile!.birthdate,
                        ),
                      )
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
                      return 'Digite seu celular';
                    }
                    return null;
                  },
                ),
                Dimension.sm.vertical,
                CustomTextFormField(
                  labelText: 'E-mail',
                  controller: email,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Digite seu email.';
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
                      return 'Digite seu Apelido';
                    }
                    return null;
                  },
                ),
                Dimension.sm.vertical,
                ..._radioValues
                    .map(
                      (value) => RadioListTile(
                        title: Text(
                          value == 'f' ? "Feminino" : "Masculino",
                          style: context.text.body2,
                        ),
                        dense: true,
                        contentPadding: EdgeInsets.zero,
                        visualDensity: const VisualDensity(
                          horizontal: VisualDensity.minimumDensity,
                          vertical: VisualDensity.minimumDensity,
                        ),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
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
                      return 'Digite seu cep';
                    }
                    return null;
                  },
                  onChanged: (value) async {
                    if (address.text != '') {
                      stateParam.text = '';
                      city.text = '';
                      address.text = '';
                      district.text = '';
                      setState(() {});
                    }

                    if (value.length == 10) {
                      String cep = value.replaceAll(RegExp(r'[^0-9]'), '');
                      String url = 'https://viacep.com.br/ws/$cep/json/';

                      http.Response response = await http.get(Uri.parse(url));

                      String responseData = response.body;

                      dynamic data = jsonDecode(responseData);

                      if (data['logradouro'] != null) {
                        stateParam.text = data['uf'];
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
                        controller: stateParam,
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
                        labelText: 'Número',
                        controller: numberAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Digite o número do seu endereço.';
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
                Dimension.xl.vertical,
                Text(
                  'Notificações',
                  textAlign: TextAlign.left,
                  style: context.text.calloutMedium,
                ),
                Dimension.md.vertical,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Switch(
                      value: notifyScore,
                      activeColor: AppThemeBase.colorPrimarySuperlight,
                      activeTrackColor: AppThemeBase.colorPrimaryMedium,
                      onChanged: (value) {
                        setState(() {
                          notifyScore = value;
                        });
                      },
                    ),
                    Dimension.sm.horizontal,
                    Text(
                      'Pontos',
                      style: context.text.caption,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Switch(
                      value: notifyCategory,
                      activeColor: AppThemeBase.colorPrimarySuperlight,
                      activeTrackColor: AppThemeBase.colorPrimaryMedium,
                      onChanged: (value) {
                        setState(() {
                          notifyCategory = value;
                        });
                      },
                    ),
                    Dimension.sm.horizontal,
                    Text(
                      'Categoria',
                      style: context.text.caption,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Switch(
                      value: notifyPromotion,
                      activeColor: AppThemeBase.colorPrimarySuperlight,
                      activeTrackColor: AppThemeBase.colorPrimaryMedium,
                      onChanged: (value) {
                        setState(() {
                          notifyPromotion = value;
                        });
                      },
                    ),
                    Dimension.sm.horizontal,
                    Text(
                      'Promoções',
                      style: context.text.caption,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Switch(
                      value: notifyRedemption,
                      activeColor: AppThemeBase.colorPrimarySuperlight,
                      activeTrackColor: AppThemeBase.colorPrimaryMedium,
                      onChanged: (value) {
                        setState(() {
                          notifyRedemption = value;
                        });
                      },
                    ),
                    Dimension.sm.horizontal,
                    Text(
                      'Resgate',
                      style: context.text.caption,
                    )
                  ],
                ),
                Dimension.xl.vertical,
                GestureDetector(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      updateProfile();
                      return;
                    }

                    const snackBar = SnackBar(
                      content: Text('Preencha todos os campos necessários'),
                      duration: Duration(seconds: 3),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: Dimension.xs.width,
                      vertical: Dimension.sm.height,
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 228, 241, 255),
                            ),
                          ),
                          onPressed: () {},
                          icon: const FaIcon(
                            FontAwesomeIcons.pen,
                            color: Color(0xFF127FF9),
                            size: 15,
                          ),
                        ),
                        Dimension.sm.horizontal,
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Salvar',
                                style: context.text.calloutMedium,
                              ),
                              Text(
                                'Salvar alterações realizadas.',
                                style: context.text.caption.copyWith(
                                  color: const Color(0xFFABABAB),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Dimension.xl.vertical,
                GestureDetector(
                  onTap: logout,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: Dimension.xs.width,
                      vertical: Dimension.sm.height,
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 228, 241, 255),
                            ),
                          ),
                          onPressed: () {},
                          icon: const FaIcon(
                            FontAwesomeIcons.rightFromBracket,
                            color: Color(0xFF127FF9),
                            size: 15,
                          ),
                        ),
                        Dimension.sm.horizontal,
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Deslogar',
                                style: context.text.calloutMedium,
                              ),
                              Text(
                                'Saia do aplicativo de forma segura',
                                style: context.text.caption.copyWith(
                                  color: const Color(0xFFABABAB),
                                ),
                              )
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const FaIcon(
                            FontAwesomeIcons.chevronRight,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Dimension.xl.vertical,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
