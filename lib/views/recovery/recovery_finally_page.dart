import 'package:apph2/base_app_module_routing.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RecoveryFinallyPage extends StatefulWidget {
  const RecoveryFinallyPage({super.key});

  @override
  State<RecoveryFinallyPage> createState() => _RecoveryFinallyPageState();
}

class _RecoveryFinallyPageState extends State<RecoveryFinallyPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then(
      (value) => Nav.pushNamedAndRemoveUntil(
        BaseAppModuleRouting.root,
        (p0) => false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Dimension.md.width),
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
            Text(
              'Encaminhamos um e-mail com as informações para alteração de senha!',
              style: context.text.body1,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
