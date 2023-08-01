import 'dart:convert';

import 'package:apph2/base_app_module_routing.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/theme/app_theme_factory.dart';
import 'package:apph2/theme/theme.dart';
import 'package:apph2/theme/widgets/h2loading.dart';
import 'package:apph2/views/h2pay/payment/payment_state.dart';
import 'package:apph2/views/h2pay/payment/payment_viewmodel.dart';
import 'package:apph2/views/h2pay/payment/widgets/custom_send_document.dart';
import 'package:apph2/views/register/widgets/next_widget.dart';
import 'package:flutter/material.dart' hide View;
import 'package:image_picker/image_picker.dart';

class CompanyPaymentThirdPageArguments {
  final bool isClient;
  final bool isPerson;
  CompanyPaymentThirdPageArguments({
    required this.isClient,
    required this.isPerson,
  });
}

class CompanyPaymentThirdPage extends StatefulWidget {
  final CompanyPaymentThirdPageArguments arguments;
  const CompanyPaymentThirdPage({Key? key, required this.arguments})
      : super(key: key);

  bool get isClient => arguments.isClient;
  bool get isPerson => arguments.isPerson;

  @override
  // ignore: library_private_types_in_public_api
  _CompanyPaymentThirdPageState createState() =>
      _CompanyPaymentThirdPageState();
}

class _CompanyPaymentThirdPageState extends State<CompanyPaymentThirdPage>
    with View<PaymentViewModel> {
  bool accept = false;
  void captureImage({required bool isFront}) async {
    final ImagePicker picker = ImagePicker();
    final image = await picker.pickImage(
      source: ImageSource.camera,
      imageQuality: 80,
    );
    if (image != null) {
      final imageBytes = await image.readAsBytes();
      final base64Image = base64Encode(imageBytes);
      viewModel.addPaymentImg(isFront: isFront, base64Image: base64Image);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelConsumer<PaymentViewModel, PaymentState>(
      viewModel: viewModel,
      listenWhen: (previous, current) {
        return previous.loading != current.loading ||
            previous.paymentImgFront != current.paymentImgFront ||
            previous.paymentImgBack != current.paymentImgBack;
      },
      listener: (context, state) => {},
      builder: (context, state) {
        return state.loading
            ? const Scaffold(
                body: Center(child: H2Loading()),
              )
            : _buildPage(context, state);
      },
    );
  }

  Widget _buildPage(BuildContext context, PaymentState state) {
    return Scaffold(
      appBar: H2AppBar(
        title: Column(
          children: [
            const Text('Pagamentos'),
            Dimension.xxs.vertical,
            Text(
              'Pessoa Jurídica',
              style: TextStyle(fontSize: 12.fontSize),
            )
          ],
        ),
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
                  builder: (context, constraints) {
                    return SingleChildScrollView(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight: constraints.maxHeight,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Dimension.xl.vertical,
                            Text(
                              'Tire uma foto do cheque do seu ${widget.arguments.isClient ? 'cliente' : 'fornecedor'}',
                              style: TextStyle(
                                fontSize: 19.fontSize,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Dimension.md.vertical,
                            const Divider(),
                            Dimension.md.vertical,
                            _bankCheck(state)
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
                      topWidget: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Switch(
                            value: accept,
                            activeColor: AppThemeBase.colorPrimarySuperlight,
                            activeTrackColor: AppThemeBase.colorPrimaryMedium,
                            onChanged: (value) {
                              setState(() {
                                accept = value;
                              });
                            },
                          ),
                          Dimension.sm.horizontal,
                          Expanded(
                            child: Text(
                              'Declaro que o cheque enviado é verídico',
                              style: context.text.body2.copyWith(
                                color: context.colorScheme.colorPrimaryDarkest,
                              ),
                            ),
                          )
                        ],
                      ),
                      title: 'Informar pagamento',
                      enabled: state.paymentImgFront.isNotEmpty &&
                          state.paymentImgBack.isNotEmpty &&
                          accept,
                      action: () async {
                        await viewModel.sendPayment(getTypeOfPayer());
                        if (viewModel.state.error == '') {
                          Nav.pushNamed(
                            BaseAppModuleRouting.paymentFinishPage,
                          );
                          return;
                        }
                        const snackBar = SnackBar(
                          content: Text('Erro ao informar pagamento.'),
                          duration: Duration(seconds: 2),
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

  int getTypeOfPayer() {
    if (widget.isClient) {
      if (widget.isPerson) {
        return 3;
      }
      return 4;
    }

    if (widget.isPerson) {
      return 5;
    }
    return 6;
  }

  Widget _bankCheck(PaymentState state) {
    return Column(
      children: [
        CustomSendDocument(
          isFront: true,
          enabled: state.paymentImgFront != '',
          action: () => captureImage(isFront: true),
        ),
        Dimension.md.vertical,
        CustomSendDocument(
          isFront: false,
          enabled: state.paymentImgBack != '',
          action: () => captureImage(isFront: false),
        ),
      ],
    );
  }
}
