import 'package:apph2/base_app_module_routing.dart';
import 'package:apph2/domain/entities/entities.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/theme/app_theme_factory.dart';
import 'package:apph2/theme/theme.dart';
import 'package:apph2/theme/widgets/custom_text.dart';
import 'package:apph2/views/login/login_state.dart';
import 'package:apph2/views/login/login_viewmodel.dart';
import 'package:flutter/material.dart' hide View;
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with View<LoginViewModel> {
  final identifier = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel, LoginState>(
      viewModel: viewModel,
      buildWhen: (previous, current) =>
          previous.error != current.error ||
          previous.loading != current.loading,
      builder: (context, state) {
        return state.loading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : _buildPage(context, state);
      },
    );
  }

  Widget _buildPage(BuildContext context, LoginState state) {
    Future.delayed(const Duration(seconds: 2)).then((value) {
      if (state.error != '') {
        viewModel.clearError();
      }
    });
    return Column(
      children: [
        SvgPicture.asset(
          'assets/images/login_image.svg',
          width: const Dimension(46.875).width,
          height: const Dimension(26.25).height,
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
                autoFocus: true,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: Dimension.sm.width,
                  vertical: Dimension.sm.width,
                ),
              ),
              Dimension.sm.vertical,
              SizedBox(
                child: Column(
                  children: [
                    CustomTextFormField(
                      obscureText: true,
                      controller: password,
                      labelText: 'Senha',
                      suffixAction: const IconButton(
                        onPressed: null,
                        icon: Icon(Icons.visibility),
                      ),
                      errorMessage:
                          state.error != '' ? 'Senha incorreta' : null,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: Dimension.sm.width,
                        vertical: Dimension.sm.width,
                      ),
                    ),
                    Visibility(
                      child: state.error != ''
                          ? const SizedBox.shrink()
                          : Row(
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Nav.pushNamed(
                                      BaseAppModuleRouting.recovery,
                                    );
                                  },
                                  style: ButtonStyle(
                                    visualDensity: VisualDensity.compact,
                                    padding: MaterialStateProperty.resolveWith<
                                        EdgeInsetsGeometry>(
                                      (Set<MaterialState> states) {
                                        return EdgeInsets.only(
                                          left: Dimension.sm.width,
                                          top: 0,
                                        );
                                      },
                                    ),
                                    alignment: Alignment.centerLeft,
                                    foregroundColor: MaterialStateProperty
                                        .resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                        if (states
                                            .contains(MaterialState.disabled)) {
                                          return Colors.grey;
                                        }
                                        return context
                                            .colorScheme.colorPrimaryLight;
                                      },
                                    ),
                                  ),
                                  child: Text(
                                    'Esqueci minha senha',
                                    style: context.text.caption.copyWith(
                                      color:
                                          context.colorScheme.colorPrimaryLight,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                    ),
                  ],
                ),
              ),
              Dimension.xl.vertical,
              ContainedButton.large(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20.fontSize,
                ),
                onPressed: () {
                  final loginParams = LoginParams(
                    identifier: identifier.text,
                    password: password.text,
                  );
                  viewModel.login(
                    loginParams: loginParams,
                  );
                },
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
