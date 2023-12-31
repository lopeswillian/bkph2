import 'package:apph2/base_app_module_routing.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/theme/app_theme_factory.dart';
import 'package:apph2/theme/theme.dart';
import 'package:apph2/views/login/login_viewmodel.dart';
import 'package:apph2/views/register/register_viewmodel.dart';
import 'package:flutter/material.dart' hide View;
import 'package:flutter_svg/svg.dart';

class FinallyRegister extends StatefulWidget {
  const FinallyRegister({super.key});

  @override
  State<FinallyRegister> createState() => _FinallyRegisterState();
}

class _FinallyRegisterState extends State<FinallyRegister> with View<LoginViewModel>{
  late LoginViewModel _loginViewModel;
  late RegisterViewModel _registerViewModel;

  @override
  void initState() {
    super.initState();
    _loginViewModel = DM.get<LoginViewModel>();
    _registerViewModel = DM.get<RegisterViewModel>();
    _loginViewModel.loginByRegister(_registerViewModel.state.tokenRegister);
    Future.delayed(const Duration(seconds: 3)).then((value) =>
        Nav.pushNamedAndRemoveUntil(BaseAppModuleRouting.root, (p0) => false));
  }

  @override
  void dispose(){
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Dimension.xxl.width
      ),
      color: Colors.white,
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/images/logo.svg',
            width: const Dimension(28.75).width,
            height: const Dimension(15.87).height,
          ),
          const Dimension(7.5).vertical,
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(
                fontSize: 18.fontSize
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'Parabéns!',
                  style: TextStyle(
                    color: context.colorScheme.colorPrimaryLight,
                    fontWeight: FontWeight.w700
                  ),
                ),
                TextSpan(
                  text: ' Seu cadastro foi realizado com sucesso!',
                  style: TextStyle(
                    color: context.colorScheme.colorPrimaryDarkest,
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
