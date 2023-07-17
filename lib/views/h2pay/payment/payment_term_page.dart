import 'package:apph2/base_app_module_routing.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/theme/app_theme_factory.dart';
import 'package:apph2/theme/theme.dart';
import 'package:apph2/views/register/widgets/next_widget.dart';
import 'package:flutter/material.dart';

class PaymentTermPage extends StatefulWidget {
  const PaymentTermPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PaymentTermPageState createState() => _PaymentTermPageState();
}

class _PaymentTermPageState extends State<PaymentTermPage> {
  bool accept = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const H2AppBar(
        title: Text('Pagamentos'),
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
                              'Adiantamento à Antecipação',
                              style: TextStyle(fontSize: 19.fontSize),
                            ),
                            const Dimension(2.5).vertical,
                            Container(
                              decoration: BoxDecoration(
                                color: AppThemeBase.colorSecondary02,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: const Dimension(1.87).width,
                                vertical: const Dimension(1.25).height,
                              ),
                              child: Text(
                                '''Pelo presente instrumento particular, de um lado H2 FINTECH ..., doravante denominada simplesmente CREDOR, e de outro lado NOME DO CLIENTE (QUALIFICAÇÃO) E NOME DA PESSOA JURÍDICA (QUALIFICAÇÃO), doravante denominados individualmente como DEVEDOR e conjuntamente como DEVEDORES; Considerando que as partes firmaram cédula de crédito e pretendem aditá-la e complementá-la para indicar e incluir como devedor solidário a Pessoa Jurídica supra qualificada, sobre a qual o DEVEDOR tem poderes de representação; Considerando que a Pessoa Jurídica acima qualificada possui capacidade financeira para quitar a obrigação assumida pelo DEVEDOR, de forma que coloca sua responsabilidade patrimonial à disposição da totalidade da dívida contida na Cédula de Crédito, assumindo, assim, a condição de DEVEDOR solidário, independentemente de ordem nomeação; Considerando que a Pessoa Jurídica se declara ciente de todas as condições, taxa, juros e demais encargos que incidentes sobre a dívida assumida por meio da cédula de crédito firmada. As partes resolvem INCLUIR, independentemente de ordem de nomeação, como devedor solidário a Pessoa Jurídica supra qualificada e ratificam todas as demais cláusulas e condições do “Cédula de Crédito” ora alterado. E, assim, por estarem certas e contratadas, as Partes firmam este Instrumento, juntamente com a Sociedade, em 2 (duas) vias de igual teor e forma, para um só efeito, na presença de duas testemunhas.''',
                                style: context.textTheme.labelSmall,
                                textAlign: TextAlign.justify,
                              ),
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
                          Text(
                            'Concordar e Assinar',
                            style: context.text.body2.copyWith(
                              color: context.colorScheme.colorPrimaryDarkest,
                            ),
                          )
                        ],
                      ),
                      title: 'Avançar',
                      enabled: accept,
                      action: () {
                        Nav.pushNamed(BaseAppModuleRouting.companyPaymentPage);
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
