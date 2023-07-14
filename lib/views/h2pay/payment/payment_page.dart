import 'package:apph2/base_app_module_routing.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/theme/app_theme_factory.dart';
import 'package:apph2/theme/theme.dart';
import 'package:apph2/theme/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: H2AppBar(
        title: Column(
          children: [
            const Text('Pagamentos'),
            Dimension.xxs.vertical,
            Text(
              'H2 Pay',
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
                            const Dimension(4).vertical,
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: AppThemeBase.colorSecondary02,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: const Dimension(2.5).width,
                                vertical: const Dimension(1.25).height,
                              ),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Valor da Quitação: ',
                                          style: context.text.caption,
                                        ),
                                        Text(
                                          'R\$23.000,00',
                                          style:
                                              context.text.body1Medium.copyWith(
                                            fontSize: 25.fontSize,
                                          ),
                                        )
                                      ],
                                    ),
                                    Text(
                                      'Atualizado dia 07/06/2023',
                                      style: context.text.captionLight.copyWith(
                                        color: const Color(0xFFBDBDBD),
                                      ),
                                    ),
                                  ]),
                            ),
                            Dimension.md.vertical,
                            const Divider(),
                            Dimension.md.vertical,
                            CustomTextFormField(
                              labelText: 'Valor que deseja pagar',
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: Dimension.sm.width,
                                vertical: Dimension.sm.width,
                              ),
                            ),
                            Dimension.sm.vertical,
                            Text(
                              'Filtrar por',
                              style: context.text.callout,
                            ),
                            GestureDetector(
                              onTap: (){
                                Nav.pushNamed(BaseAppModuleRouting.paymentAccountPage);
                              },
                              child: Text('Clica'),
                            ),
                            Dimension.xxs.vertical,
                            const Dimension(2.5).vertical,
                            const Divider(),
                            const Dimension(2.5).vertical,
                            detailPayments(context: context),
                            Dimension.sm.vertical,
                            detailPayments(context: context),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget detailPayments({
    required BuildContext context,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: context.colorScheme.colorPrimaryLightest,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: const Dimension(1.75).width,
        vertical: const Dimension(1.25).height,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Em aberto',
                style: context.text.captionBold.copyWith(
                  color: context.colorScheme.colorPrimaryLight,
                ),
              ),
              const Dimension(1).vertical,
              Text(
                'Torneio CPH',
                style: context.text.callout,
              ),
              const Dimension(1).vertical,
              Text(
                '25/05/2023  14:00',
                style: context.text.captionLight,
              )
            ],
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(
                fontSize: 18.fontSize,
                color: context.colorScheme.colorPrimaryLight,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'R\$',
                  style: TextStyle(fontSize: 10.fontSize),
                ),
                TextSpan(
                  text: ' 600,00',
                  style: TextStyle(
                    fontSize: 20.fontSize,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
