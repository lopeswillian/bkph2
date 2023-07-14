import 'package:apph2/base_app_module_routing.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/theme/theme.dart';
import 'package:apph2/theme/widgets/custom_text.dart';
import 'package:apph2/views/h2pay/payment/widgets/custom_send_document.dart';
import 'package:apph2/views/h2pay/payment/widgets/custom_switch_payment.dart';
import 'package:apph2/views/register/widgets/next_widget.dart';
import 'package:flutter/material.dart';

class PersonPaymentPage extends StatefulWidget {
  const PersonPaymentPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PersonPaymentPageState createState() => _PersonPaymentPageState();
}

class _PersonPaymentPageState extends State<PersonPaymentPage> {
  @override
  Widget build(BuildContext context) {
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
                            CustomSwitchPayment(position: (_) {}),
                            const Dimension(3.125).vertical,
                            const Divider(),
                            const Dimension(3.125).vertical,
                            // _pix()
                            // _ted()
                            _bankCheck()
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
                      title: 'Concluir',
                      action: () {
                        Nav.pushNamed(BaseAppModuleRouting.paymentFinishPage);
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

  Widget _bankCheck() {
    return  Column(
      children: [
        const CustomSendDocument(),
        Dimension.md.vertical,
        const CustomSendDocument(),
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
          initialValue: '(033) Santander',
        ),
        const Dimension(2.5).vertical,
        Row(
          children: [
            const Flexible(
              child: CustomTextFormField(
                labelText: 'Agência',
                initialValue: '0120',
              ),
            ),
            const Dimension(2.5).horizontal,
            const Flexible(
              child: CustomTextFormField(
                labelText: 'Conta',
                initialValue: '13.004.059-1',
              ),
            ),
          ],
        ),
        const Dimension(2.5).vertical,
        const CustomTextFormField(
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
