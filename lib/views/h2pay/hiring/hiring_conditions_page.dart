import 'package:apph2/base_app_module_routing.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/theme/app_theme_factory.dart';
import 'package:apph2/theme/theme.dart';
import 'package:apph2/views/register/widgets/next_widget.dart';
import 'package:flutter/material.dart';

class HiringConditionsPage extends StatefulWidget {
  const HiringConditionsPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HiringConditionsPageState createState() => _HiringConditionsPageState();
}

class _HiringConditionsPageState extends State<HiringConditionsPage> {
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
                              'Condições da Antecipação',
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
                                '''Cédula de crédito. H2 FINTECH, (qualificação), apresenta as Condições Gerais aplicáveis ao Crédito (“Condições Gerais”) disponibilizado para contratação em nossos canais eletrônicos (PLATAFORMA H2 FINTECH). O presente contrato tem por objeto o empréstimo pelo H2 FINTECH a quantia de R\$___ (___mil reais), cujo pagamento deverá ser realizado por meio de pagamento de uma única parcela com a devolução integral do valor mutuado, até o dia ___, sobre cujo valor incidirá juros de 1% (um por cento) ao mês, calculados pro-rata-die, até que ocorra o efetivo pagamento do valor total devido.
                                  Sobre o crédito concedido incidirão juros no valor de 1% (um por cento) ao mês, que serão devidos mensalmente por quanto não for pago o valor total do mútuo devido. As Condições Gerais abaixo, integram, para todos os fins, a contratação do Crédito para a sua utilização para financiar sua participação em torneios e campeonatos desportivos, cujo crédito será depositado diretamente na conta do promotor, agente ou organizador do evento desportivo. 
                                  1. Pagamento. Você deverá pagar à H2 FINTECH, em moeda corrente nacional, a quantia líquida, certa e exigível correspondente ao valor do crédito liberado em conta de favorecido indicado por Você, acrescido dos juros remuneratórios capitalizados mensalmente, à taxa contratada, e do Imposto sobre Operações Financeiras (IOF) e eventual seguro, se financiados. O pagamento pelo crédito tomado será realizado por Você por meio de transferência bancária ou pix, ou mediante cessão de créditos e valores disponíveis em seu favor ou de empresas da qual faça parte e detenha o poder de administração. 
                                  1.1.	Pela presente, Você se obriga a prover a(s) respectiva(s) conta(s) com recursos disponíveis e suficientes para débito das obrigações decorrentes desta operação, na data de sua exigibilidade. 
                                  1.2.	Tais débitos serão realizados com preferência em relação a qualquer outro débito pendente de realização.
                                  1.3.	Os juros remuneratórios informados na contratação incidirão sobre o valor do empréstimo liberado em conta acrescido do IOF e eventual seguro, se financiados, de forma capitalizada, desde a data da liberação do crédito até a data do vencimento da parcela. A H2 FINTECH disponibilizará a demonstração do saldo devedor sempre que Você solicitar. 
                                  1.4.	Se no ato da contratação Você optou pela prorrogação do pagamento, os juros referentes ao período serão pagos com a primeira parcela, ou financiados por todo o período do empréstimo, caso assim Você tenha solicitado.
                                  1.5.	Você deverá pagar todos os tributos e demais encargos relativos a esta contratação, inclusive aqueles que no futuro venham
                                  a ser exigidos e arcar com eventuais aumentos de alíquotas.
                                  2. Atraso no pagamento. Se Você atrasar o pagamento, sobre o valor da obrigação vencida incidirão: (i) juros remuneratórios à taxa contratada; (ii) multa de 2%; e (iii) juros moratórios de 1% ao mês, estes calculados sobre o valor da obrigação vencida acrescida da multa. Se a H2 FINTECH tiver que realizar a cobrança judicial ou extrajudicial de qualquer obrigação devida por você relativamente a esta operação, Você será responsável pelo pagamento das despesas daí decorrentes, inclusive eventuais honorários advocatícios arbitrados judicialmente. 
                                  3. Vencimento Antecipado. A H2 FINTECH poderá considerar vencida antecipadamente esta operação, caso em que será imediatamente exigível a totalidade da dívida e seus acessórios, além das hipóteses legais, se Você: a) atrasar o pagamento e/ou descumprir qualquer outra obrigação assumida na operação contratada ou em qualquer outro contrato mantido com a H2 FINTECH; b) vier a falecer; c) sofrer protesto cambiário ou tiver insolvência civil requerida; d) sofrer ação judicial, procedimento fiscal ou qualquer outra medida ou evento que possa alterar sua capacidade de pagamento e/ou colocar em risco o cumprimento das obrigações aqui assumidas; e) for incluído no Cadastro de Emitentes de Cheques sem Fundos (CCF) ou em qualquer outro órgão de proteção ao crédito.
                                  3.1. A não decretação imediata do vencimento antecipado não importará renúncia da H2 FINTECH ao direito de fazê-la posteriormente.
                                  4. Liquidação Antecipada. Na hipótese de liquidação antecipada (pagamento antecipado dos valores devidos), total ou parcial, da operação contratada à taxa prefixada, o valor presente do débito será calculado com a utilização da taxa de juros pactuada na contratação. Você poderá solicitar a liquidação antecipada da operação nos canais de atendimento disponibilizados pela H2 FINTECH.
                                  5. Autorizações. Você autoriza a H2 FINTECH a utilizar valores de outras contas de depósito e/ou conta salário de sua titularidade (individual ou conjunta), inclusive resgatar eventuais aplicações financeiras, atuais ou futuras, ou levantar junto aos organizadores dos eventos desportivos eventuais premiações a que Você faça jus diante de vitórias conquistadas ao longo das partidas, para efetuar os pagamentos aqui previstos, caso o saldo da sua conta corrente e/ou conta salário seja insuficiente para quitar as obrigações aqui previstas.
                                  6. Custo Efetivo Total (CET). Você tomou ciência, na data da contratação, dos fluxos considerados para o cálculo do CET da operação. Previamente à formalização da contratação nos canais eletrônicos o CET é devidamente informado a você.
                                  7. Disposições Finais
                                  7.1. Você deve manter atualizados, perante o H2 FINTECH, seus dados cadastrais e econômicos.

                                  7.2. Você poderá comunicar o SIM sobre questões referentes ao cumprimento das obrigações aqui assumidas, inclusive quanto a eventual alteração relevante de sua capacidade de pagamento, por meio dos canais de atendimento disponibilizados pelo H2 FINTECH.

                                  7.4. Você declara que a operação contratada é adequada às suas necessidades e está ciente de que a comparabilidade entre as diferentes operações de crédito pode ser consultada online.
                                  7.5. Você declara que os recursos decorrentes deste contrato não serão destinados a finalidades que possam causar danos sociais e/ou projetos em desacordo com a Política Nacional de Meio Ambiente prevista em Lei.
                                  7.6. As contratações realizadas por meios eletrônicos podem ser vulneráveis à ação de terceiros. Você sempre deve utilizar equipamentos com sistemas de segurança atualizados.
                                  7.7. Fica eleito o Foro Central da Comarca do Estado de São Paulo, ou do seu domicílio, para eventual discussão sobre as condições estabelecidas neste contrato.
                                  Você declara que leu previamente esta Cédula contrato e não tem nenhuma dúvida sobre o seu conteúdo e nem das autorizações que concedeu. Declara ainda que possui condições econômico-financeiras para pagar as obrigações assumidas sem comprometer o seu sustento e de seus dependentes.
                                  Este instrumento encontra-se registrado sob nº .... no ........º Oficial de Registro de Títulos e Documentos da Capital de São Paulo.
                                  ''',
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
                            value: true,
                            activeColor: AppThemeBase.colorPrimarySuperlight,
                            activeTrackColor: AppThemeBase.colorPrimaryMedium,
                            onChanged: (value) => {},
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
                      action: () {
                        Nav.pushNamed(BaseAppModuleRouting.hiringSmsPage);
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
