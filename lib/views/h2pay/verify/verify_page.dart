import 'dart:async';
import 'package:apph2/base_app_module_routing.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/theme/theme.dart';
import 'package:apph2/theme/widgets/custom_text.dart';
import 'package:apph2/views/h2pay/verify/verify_viewmodel.dart';
import 'package:apph2/views/register/widgets/next_widget.dart';
import 'package:flutter/material.dart' hide View;
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class VerifyPage extends StatefulWidget {
  const VerifyPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _VerifyPageState createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> with View<VerifyViewModel>{
  bool isKeyboardVisible = false;
  double inputOffset = 0.0;
  final GlobalKey _blockFormKey = GlobalKey();

  late StreamSubscription<bool> keyboardSubscription;

  var phoneNumberFormatter = MaskTextInputFormatter(
    mask: '(##)#####-####',
    filter: {'#': RegExp(r'[0-9]')},
  );

  TextEditingController phoneController = TextEditingController();

  @override
  void initState() {
    super.initState();
    viewModel.getJobs();
    viewModel.getMonthlyIncome();
    viewModel.getTerm();
    var keyboardVisibilityController = KeyboardVisibilityController();
    keyboardSubscription = keyboardVisibilityController.onChange.listen(
      (bool visible) {
        setState(() {
          isKeyboardVisible = visible;
        });
      },
    );
  }

  @override
  void dispose() {
    keyboardSubscription.cancel();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const H2AppBar(
        title: Text('H2 Pay'),
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
                  padding: EdgeInsets.symmetric(horizontal: Dimension.sm.width),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom,
                          ),
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                              minHeight: constraints.maxHeight,
                            ),
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
                                const Dimension(2.5).vertical,
                                Text(
                                  'Vamos iniciar confirmando seu telefone',
                                  style: context.text.body1,
                                ),
                                Dimension.xxl.vertical,
                                CustomTextFormField(
                                  key: _blockFormKey,
                                  labelText: 'Número de Telefone',
                                  hintText: '(com DDD)',
                                  controller: phoneController,
                                  inputFormatters: [phoneNumberFormatter],
                                  keyboardType: TextInputType.number,
                                  onChanged: (value) {
                                    if (value.length == 14) {
                                      FocusScope.of(context).unfocus();
                                    }
                                  },
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
                Visibility(
                  visible: !isKeyboardVisible,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: IntrinsicHeight(
                      child: Container(
                        color: Colors.white,
                        child: NextWidget(
                          enabled: phoneController.text.length == 14,
                          title: 'Avançar',
                          action: () {
                            viewModel.setPhone(phoneController.text.replaceAll(RegExp(r'[^a-zA-Z0-9]'), ''));
                            Nav.pushNamed(BaseAppModuleRouting.verifySmsPage);
                          },
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
