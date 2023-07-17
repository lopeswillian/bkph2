import 'dart:convert';

import 'package:apph2/base_app_module_routing.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/theme/theme.dart';
import 'package:apph2/theme/widgets/custom_text.dart';
import 'package:apph2/views/h2pay/payment/payment_state.dart';
import 'package:apph2/views/h2pay/payment/payment_viewmodel.dart';
import 'package:apph2/views/h2pay/payment/widgets/custom_send_document.dart';
import 'package:apph2/views/h2pay/payment/widgets/custom_switch_payment.dart';
import 'package:apph2/views/register/widgets/next_widget.dart';
import 'package:flutter/material.dart' hide View;
import 'package:image_picker/image_picker.dart';

class PersonPaymentPage extends StatefulWidget {
  const PersonPaymentPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PersonPaymentPageState createState() => _PersonPaymentPageState();
}

class _PersonPaymentPageState extends State<PersonPaymentPage>
    with View<PaymentViewModel> {
  int position = 0;

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

  _getPage() {
    switch (position) {
      case 1:
        viewModel.setPaymentType(position + 1);
        return _ted();
      case 2:
        viewModel.setPaymentType(position + 1);
        return _bankCheck(viewModel.state);
      case 0:
      default:
        viewModel.setPaymentType(1);
        return _pix();
    }
  }

  switchPosition(int newPosition) {
    setState(() {
      position = newPosition;
    });
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
                body: Center(child: CircularProgressIndicator()),
              )
            : _buildPage(context, state);
      },
    );
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
                              'Dados para pagamento',
                              style: TextStyle(
                                fontSize: 19.fontSize,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Dimension.md.vertical,
                            const Divider(),
                            Dimension.md.vertical,
                            Text(
                              'Escolha a forma de pagamento',
                              style: context.text.body2,
                            ),
                            Dimension.sm.vertical,
                            CustomSwitchPayment(position: switchPosition),
                            const Dimension(3.125).vertical,
                            const Divider(),
                            const Dimension(3.125).vertical,
                            _getPage()
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
                      title: position == 0 ? 'Concluir' : 'Informar pagamento',
                      action: () async {
                        await viewModel.sendPayment(1);
                        if (viewModel.state.error == '') {
                          Nav.pushNamed(
                            BaseAppModuleRouting.paymentFinishPage,
                          );
                          return;
                        }
                        const snackBar = SnackBar(
                          content: Text('Erro ao informar pagamento'),
                          duration: Duration(seconds: 2), // Duração do Snackbar
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

  Widget _ted() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Dados para pagamentos com TED',
          style: context.text.body2,
        ),
        Dimension.sm.vertical,
        const CustomTextFormField(
          labelText: 'Banco',
          enabled: false,
          initialValue: '(033) Santander',
        ),
        const Dimension(2.5).vertical,
        Row(
          children: [
            const Flexible(
              child: CustomTextFormField(
                enabled: false,
                labelText: 'Agência',
                initialValue: '0120',
              ),
            ),
            const Dimension(2.5).horizontal,
            const Flexible(
              child: CustomTextFormField(
                enabled: false,
                labelText: 'Conta',
                initialValue: '13.004.059-1',
              ),
            ),
          ],
        ),
        const Dimension(2.5).vertical,
        const CustomTextFormField(
          enabled: false,
          labelText: 'Favorecido',
          initialValue: 'H2 Fintech',
        )
      ],
    );
  }

  Widget _pix() {
    return Column(
      children: [
        CustomTextFormField(
          contentPadding: EdgeInsets.symmetric(
            horizontal: Dimension.sm.width,
            vertical: Dimension.sm.width,
          ),
          controller: null,
          onChanged: (String cb) {},
          initialValue: "00020101021226640014br.gov.bcb.pix...",
          labelText: 'Chave PIX QRCode',
          enabled: false,
        ),
        const Dimension(2.5).vertical,
        Container(
          padding: EdgeInsets.all(const Dimension(1.25).value),
          decoration: BoxDecoration(
            border: Border.all(
              color: AppThemeBase.colorPrimaryLight,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Text(
            "Copiar código Pix",
            style: context.text.body2Medium.copyWith(
              color: AppThemeBase.colorPrimaryLight,
            ),
          ),
        ),
        Dimension.md.vertical,
        Container(
          padding: EdgeInsets.all(Dimension.sm.value),
          decoration: const BoxDecoration(
            color: AppThemeBase.colorSecondary02,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  style: context.text.callout,
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'Usuário,',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: AppThemeBase.colorPrimaryDarkest,
                      ),
                    ),
                    TextSpan(
                      text:
                          ' para realizar o pagamento, siga os passos a seguir:',
                    )
                  ],
                ),
              ),
              Dimension.md.vertical,
              Text(
                "1. Abra o aplicativo do seu banco",
                style: context.text.callout,
              ),
              Text(
                "2. Acesse a opção de Pix",
                style: context.text.callout,
              ),
              Text(
                "3. Copie o código pix e informe-o na opção Pix Copia e Cola",
                style: context.text.callout,
              ),
            ],
          ),
        )
      ],
    );
  }
}
