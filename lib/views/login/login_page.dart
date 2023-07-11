import 'package:apph2/base_app_module_routing.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/theme/app_theme_factory.dart';
import 'package:apph2/theme/theme.dart';
import 'package:apph2/theme/widgets/custom_text.dart';
import 'package:apph2/views/login/login_state.dart';
import 'package:apph2/views/login/login_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ViewState<LoginPage, LoginViewModel> {
  @override
  Widget build(BuildContext context) {
    return ViewModelConsumer<LoginViewModel, LoginState>(
      viewModel: viewModel,
      listenWhen: (previous, current) => previous.error != previous.error,
      listener: (context, state) => {},
      builder: _buildPage,
    );
  }

  Widget _buildPage(BuildContext context, LoginState state) {
    final identifier = TextEditingController();
    final password = TextEditingController();
    return Column(
      children: [
        Container(
          color: Colors.transparent,
          height: 1,
        ),
        SvgPicture.asset(
          'assets/images/login_image.svg',
          width: const Dimension(65).width, //520
          height: const Dimension(36.75).height, //294,
        ),
        Dimension.xxl.vertical,
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Dimension.sm.width,
          ),
          child: Column(
            children: [
              CustomTextFormField(
                controller: identifier,
                labelText: 'E-mail ou CPF',
                contentPadding: EdgeInsets.symmetric(
                  horizontal: Dimension.sm.width,
                  vertical: Dimension.sm.width,
                ),
              ),
              Dimension.sm.vertical,
              CustomTextFormField(
                obscureText: true,
                controller: password,
                labelText: 'Senha',
                suffixAction: const IconButton(
                  onPressed: null,
                  icon: Icon(Icons.visibility),
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: Dimension.sm.width,
                  vertical: Dimension.sm.width,
                ),
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Nav.pushNamed(BaseAppModuleRouting.recovery);
                    },
                    style: ButtonStyle(
                      padding:
                          MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
                        (Set<MaterialState> states) {
                          return EdgeInsets.only(left: Dimension.sm.width);
                        },
                      ),
                      alignment: Alignment.centerLeft,
                      foregroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.disabled)) {
                            return Colors.grey;
                          }
                          return context.colorScheme.colorPrimaryLight;
                        },
                      ),
                    ),
                    child: const Text(
                      'Esqueci minha senha',
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              Dimension.xl.vertical,
              ContainedButton.large(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20.fontSize,
                ),
                // onPressed: () {
                //   final loginParams = LoginParams(
                //     identifier: identifier.text,
                //     password: password.text,
                //   );
                //   viewModel.login(
                //     loginParams: loginParams,
                //   );
                // },
                onPressed: () => Nav.pushNamed(
                  BaseAppModuleRouting.hiringSumaryPage,
                ),
                text: "Entrar",
              ),
              Dimension.sm.vertical,
              GhostButton.large(
                expanded: true,
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20.fontSize,
                ),
                onPressed: () => Nav.pushNamed(
                  BaseAppModuleRouting.registerStep1.completePath,
                ),
                text: 'Cadastrar',
              ),
              Dimension.xxl.vertical
            ],
          ),
        ),
      ],
    );
  }
}