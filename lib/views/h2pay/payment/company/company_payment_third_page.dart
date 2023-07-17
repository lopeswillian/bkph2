import 'package:apph2/base_app_module_routing.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/theme/app_theme_factory.dart';
import 'package:apph2/theme/theme.dart';
import 'package:apph2/theme/widgets/custom_text.dart';
import 'package:apph2/views/h2pay/payment/widgets/custom_send_document.dart';
import 'package:apph2/views/register/widgets/next_widget.dart';
import 'package:flutter/material.dart';

class CompanyPaymentThirdPageArguments{
  final bool isClient;
  CompanyPaymentThirdPageArguments({required this.isClient});
}

class CompanyPaymentThirdPage extends StatefulWidget {
  final CompanyPaymentThirdPageArguments arguments;
  const CompanyPaymentThirdPage({Key? key, required this.arguments}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CompanyPaymentThirdPageState createState() => _CompanyPaymentThirdPageState();
}

class _CompanyPaymentThirdPageState extends State<CompanyPaymentThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  H2AppBar(
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
                              'Tire uma foto do cheque do seu ${widget.arguments.isClient?'cliente':'fornecedor'}',
                              style: TextStyle(
                                fontSize: 19.fontSize,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Dimension.md.vertical,
                            const Divider(),
                            Dimension.md.vertical,
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
                      topWidget: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Switch(
                            value: true,
                            activeColor: AppThemeBase.colorPrimarySuperlight,
                            activeTrackColor: AppThemeBase.colorPrimaryMedium,
                            onChanged: (value) => {},
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
                      action: () {
                        Nav.pushNamed(BaseAppModuleRouting.paymentTermPage);
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
        const CustomSendDocument(
          isFront: true,
        ),
        Dimension.md.vertical,
        const CustomSendDocument(
          isFront: false,
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
