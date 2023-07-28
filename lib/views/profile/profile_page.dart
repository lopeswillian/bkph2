import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/theme/theme.dart';
import 'package:apph2/theme/widgets/custom_text.dart';
import 'package:apph2/views/login/login_state.dart';
import 'package:apph2/views/login/login_viewmodel.dart';
import 'package:flutter/material.dart' hide View;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with View<LoginViewModel> {
  @override
  void initState() {
    super.initState();
  }

  logout() async {
    viewModel.logout();
  }

  @override
  Widget build(BuildContext context) {
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
      body: ViewModelBuilder<LoginViewModel, LoginState>(
        viewModel: viewModel,
        buildWhen: (previous, current) => previous.user != current.user,
        builder: (context, state) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: Dimension.sm.width),
            color: const Color(0xFFF5F5F5),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Dimension.xl.vertical,
                  Container(
                    width: const Dimension(12.5).width,
                    height: const Dimension(12.5).height,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.photo,
                    ),
                  ),
                  Dimension.md.vertical,
                  Text(
                    state.user!.name,
                    style: context.text.body1Bold,
                  ),
                  Dimension.xxs.vertical,
                  Text(
                    state.user!.email,
                    style: context.text.caption.copyWith(
                      color: const Color(0xFFABABAB),
                    ),
                  ),
                  Dimension.md.vertical,
                  CustomTextFormField(
                    labelText: 'Nome Completo',
                    enabled: false,
                    initialValue: state.user!.name,
                  ),
                  Dimension.md.vertical,
                  CustomTextFormField(
                    labelText: 'Data de Nascimento',
                    enabled: false,
                    initialValue: state.user!.birthdate,
                  ),
                  Dimension.md.vertical,
                  CustomTextFormField(
                    labelText: 'CPF',
                    enabled: false,
                    initialValue: state.user!.cpf,
                  ),
                  Dimension.md.vertical,
                  CustomTextFormField(
                    labelText: 'Apelido',
                    enabled: false,
                    initialValue: state.user!.nickname,
                  ),
                  Dimension.md.vertical,
                  CustomTextFormField(
                    labelText: 'Telefone Celular',
                    enabled: false,
                    initialValue: state.user!.cellphone,
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
          );
        },
      ),
    );
  }
}
