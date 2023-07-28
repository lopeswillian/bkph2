import 'dart:async';

import 'package:apph2/base_app_module_routing.dart';
import 'package:apph2/domain/entities/recovery_params.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/theme/widgets/custom_text.dart';
import 'package:apph2/views/recovery/recovery_state.dart';
import 'package:apph2/views/recovery/recovery_viewmodel.dart';
import 'package:apph2/views/register/widgets/next_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_svg/svg.dart';

import '../../theme/theme.dart';

class RecoveryPage extends StatefulWidget {
  const RecoveryPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _RecoveryPageState createState() => _RecoveryPageState();
}

class _RecoveryPageState extends ViewState<RecoveryPage, RecoveryViewModel> {
  bool isKeyboardVisible = false;
  final identifier = TextEditingController();

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
    return ViewModelConsumer<RecoveryViewModel, RecoveryState>(
      viewModel: viewModel,
      listenWhen: (previous, current) => previous.loading != current.loading,
      listener: (context, state) {
        if (state.error == '' && state.success) {
          Nav.pushNamed(BaseAppModuleRouting.recoveryFinally);
          return;
        }
      },
      builder: _buildPage,
    );
  }

  Widget _buildPage(BuildContext context, RecoveryState state) {
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
          child: Stack(
            children: [
              Padding(
                padding:  EdgeInsets.only(bottom: isKeyboardVisible?120:0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: Dimension.sm.width),
                        child: Column(
                          children: [
                            const Dimension(8).vertical,
                            SvgPicture.asset(
                              'assets/images/bg_recovery.svg',
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
                            CustomTextFormField(
                              controller: identifier,
                              keyboardType: TextInputType.emailAddress,
                              labelText: 'E-mail',
                              errorMessage:
                                  state.error != '' ? 'E-mail inexistente' : null,
                            ),
                            const Dimension(8.5).vertical,
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: IntrinsicHeight(
                  child: Container(
                    color: Colors.white,
                    child: NextWidget(
                      title: 'Enviar',
                      action: () {
                        final recoveryParams = RecoveryParams(
                          identifier: identifier.text,
                        );
                        viewModel.recovery(recoveryParams: recoveryParams);
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
