import 'package:apph2/base_app_module_routing.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/theme/app_theme_factory.dart';
import 'package:apph2/theme/theme.dart';
import 'package:apph2/theme/widgets/h2loading.dart';
import 'package:apph2/views/h2pay/h2pay_viewmodel.dart';
import 'package:apph2/views/h2pay/payment/payment_state.dart';
import 'package:apph2/views/h2pay/payment/payment_viewmodel.dart';
import 'package:apph2/views/register/widgets/next_widget.dart';
import 'package:flutter/material.dart' hide View;
import 'package:pin_code_fields/pin_code_fields.dart';

class HiringSmsPage extends StatefulWidget {
  const HiringSmsPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HiringSmsPageState createState() => _HiringSmsPageState();
}

class _HiringSmsPageState extends State<HiringSmsPage>
    with View<PaymentViewModel> {
  late H2PayViewModel h2payViewModel;
  TextEditingController pinCodeController = TextEditingController();

  @override
  void initState() {
    super.initState();
    h2payViewModel = DM.get<H2PayViewModel>();
    h2payViewModel.getSmsCode();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PaymentViewModel, PaymentState>(
      viewModel: viewModel,
      buildWhen: (previous, current) {
        return previous.loading != current.loading ||
            previous.error != current.error;
      },
      builder: (context, state) {
        return state.loading
            ? const Scaffold(
                body: Center(child: H2Loading()),
              )
            : _buildPage(context, state);
      },
    );
  }

  @override
  void dispose() {
    pinCodeController.dispose();
    super.dispose();
  }

  Widget _buildPage(BuildContext context, PaymentState state) {
    return Scaffold(
      appBar: const H2AppBar(
        title: Text('H2 Pay'),
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
                padding: EdgeInsets.symmetric(horizontal: Dimension.sm.width),
                child: LayoutBuilder(
                  builder: (contextLayout, constraints) {
                    return SingleChildScrollView(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight: constraints.maxHeight,
                        ),
                        child: Column(
                          children: [
                            const Dimension(9.375).vertical,
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: const Dimension(4.25).width,
                              ),
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  style: TextStyle(
                                    fontSize: 19.fontSize,
                                    height: 1.5,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text:
                                          'Para confirmar as condições, informe o código que recebeu no número',
                                      style: TextStyle(
                                        color: context
                                            .colorScheme.colorPrimaryDarkest,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          '\n ${h2payViewModel.state.customer!.cellphone}',
                                      style: TextStyle(
                                        color: context
                                            .colorScheme.colorPrimaryDarkest,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Dimension.xxxl.vertical,
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: const Dimension(8.12).width,
                              ),
                              child: PinCodeTextField(
                                appContext: context,
                                autoFocus: true,
                                autoDisposeControllers: false,
                                length: 4,
                                controller: pinCodeController,
                                keyboardType: TextInputType.number,
                                pinTheme: PinTheme(
                                  selectedColor:
                                      context.colorScheme.colorPrimaryMedium,
                                  activeColor: AppThemeBase.colorSecondary04,
                                  inactiveColor: AppThemeBase.colorSecondary04,
                                  activeFillColor: Colors.white,
                                ),
                              ),
                            ),
                            Dimension.sm.vertical,
                            Text(
                              'Insira o código de 4 números',
                              style: context.textTheme.bodySmall!.copyWith(
                                  color: AppThemeBase.colorSecondary04,
                                  fontWeight: FontWeight.normal),
                            ),
                            Dimension.md.vertical,
                            TextButton(
                              child: Text(
                                'Não recebeu nenhum código? Reenviar',
                                style: TextStyle(
                                  color: context.colorScheme.colorPrimaryMedium,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              onPressed: () {
                                h2payViewModel.getSmsCode();
                              },
                            ),
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
                    child: NextWidget(
                      title: 'Avançar',
                      action: () async {
                        bool signed = false;
                        bool codeIsvalid = h2payViewModel.state.validSmsCode;

                        if (!codeIsvalid) {
                          final isValidCode =
                              await h2payViewModel.validateSmsCode(
                            pinCodeController.text,
                          );
                          codeIsvalid = isValidCode;
                        }

                        if (codeIsvalid) {
                          final signResponse =
                              await viewModel.signAnticipation();
                          if (signResponse.error == '') {
                            signed = true;
                          }
                        }

                        if (signed && codeIsvalid) {
                          Nav.pushNamed(
                            BaseAppModuleRouting.hiringFinishPage,
                          );
                          return;
                        }

                        final snackBar = SnackBar(
                          content: codeIsvalid
                              ? Text(state.error)
                              : const Text('Código expirado ou inválido.'),
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
