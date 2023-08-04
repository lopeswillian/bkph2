import 'package:apph2/base_app_module_routing.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/infraestructure/num_extension.dart';
import 'package:apph2/theme/app_theme_factory.dart';
import 'package:apph2/theme/theme.dart';
import 'package:apph2/theme/widgets/custom_text.dart';
import 'package:apph2/theme/widgets/h2loading.dart';
import 'package:apph2/theme/widgets/money_format.dart';
import 'package:apph2/views/h2pay/payment/payment_state.dart';
import 'package:apph2/views/h2pay/payment/payment_viewmodel.dart';
import 'package:apph2/views/h2pay/payment/widgets/custom_switch_antecipation.dart';
import 'package:apph2/views/register/widgets/next_widget.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends ViewState<PaymentPage, PaymentViewModel> {
  int position = 0;
  final valueToPay = TextEditingController();

  switchPosition(int newPosition) {
    setState(() {
      position = newPosition;
    });
  }

  @override
  void initState() {
    super.initState();
    viewModel.loadAnticipationWithDischarge();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PaymentViewModel, PaymentState>(
      viewModel: viewModel,
      buildWhen: (previous, current) =>
          previous.loading != current.loading ||
          previous.valueToPay != current.valueToPay,
      builder: (context, state) {
        return (!state.loading)
            ? _buildPage(context, state)
            : const Scaffold(
                body: Center(
                  child: H2Loading(),
                ),
              );
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
                                          (state.anticipationWithDischarge
                                                      ?.discharge ??
                                                  0)
                                              .toCurrency(),
                                          style:
                                              context.text.body1Medium.copyWith(
                                            fontSize: 25.fontSize,
                                          ),
                                        )
                                      ],
                                    ),
                                  ]),
                            ),
                            Dimension.md.vertical,
                            const Divider(),
                            Dimension.md.vertical,
                            CustomTextFormField(
                              controller: valueToPay,
                              enabled:
                                  (state.anticipationWithDischarge?.discharge ??
                                          0) >
                                      0,
                              errorMessage: MoneyInputFormatter()
                                          .parseValue(valueToPay.text) >
                                      (state.anticipationWithDischarge
                                              ?.discharge ??
                                          0)
                                  ? 'Valor maior que a quitação'
                                  : null,
                              onChanged: (value) => {
                                viewModel.changeValueToPay(
                                    MoneyInputFormatter().parseValue(value))
                              },
                              inputFormatters: [
                                MoneyInputFormatter().maskFor(symbol: '')
                              ],
                              keyboardType:
                                  const TextInputType.numberWithOptions(),
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
                            Dimension.xxs.vertical,
                            CustomSwitchAntecipation(position: switchPosition),
                            Dimension.xxs.vertical,
                            const Dimension(2.5).vertical,
                            const Divider(),
                            const Dimension(2.5).vertical,
                            if (state.anticipationWithDischarge != null)
                              ...state
                                  .anticipationWithDischarge!.listAnticipation
                                  .where((element) {
                                    if (position == 1) {
                                      return [0, 1].contains(element.status);
                                    }
                                    if (position == 2) {
                                      return element.status == 4;
                                    }
                                    return true;
                                  })
                                  .map(
                                    (anticipation) => Column(
                                      children: [
                                        detailPayments(
                                          context: context,
                                          dateCreate: anticipation.dateCreate
                                              .toString(),
                                          status: anticipation.status,
                                          value: anticipation.valuePrincipal,
                                        ),
                                        Dimension.sm.vertical
                                      ],
                                    ),
                                  )
                                  .toList(),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Visibility(
                visible: valueToPay.text != '' &&
                    MoneyInputFormatter().parseValue(valueToPay.text) <=
                        (state.anticipationWithDischarge?.discharge ?? 0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: IntrinsicHeight(
                    child: Container(
                      color: Colors.white,
                      child: NextWidget(
                        title: 'Avançar',
                        action: () {
                          Nav.pushNamed(
                            BaseAppModuleRouting.paymentAccountPage,
                          );
                        },
                      ),
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

  String getTitleDetail(int status) {
    switch (status) {
      case 0:
      case 1:
        return 'Em aberto';
      case 2:
        return 'Pago';
      case 3:
        return 'Cancelada';
      case 4:
        return 'Vencido';
      default:
        return '';
    }
  }

  Widget detailPayments({
    required BuildContext context,
    required String dateCreate,
    required double value,
    required int status,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF1F7FF),
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
                getTitleDetail(status),
                style: context.text.captionBold.copyWith(
                  color: context.colorScheme.colorPrimaryLight,
                ),
              ),
              const Dimension(1).vertical,
              Text(
                dateCreate,
                style: context.text.captionLight,
              )
            ],
          ),
          Row(
            children: [
              Text(
                'R\$',
                style: TextStyle(
                  fontSize: 10.fontSize,
                  fontWeight: FontWeight.normal,
                  color: context.colorScheme.colorPrimaryLight,
                ),
              ),
              Text(
                ' ${value.toCurrency(symbol: '')}',
                style: TextStyle(
                  fontSize: 20.fontSize,
                  fontWeight: FontWeight.w600,
                  color: context.colorScheme.colorPrimaryLight,
                ),
              )
            ],
          ),
          // RichText(
          //   textAlign: TextAlign.center,
          //   text: TextSpan(
          //     style: TextStyle(
          //       fontSize: 18.fontSize,
          //       color: context.colorScheme.colorPrimaryLight,
          //     ),
          //     children: <TextSpan>[],
          //   ),
          // ),
        ],
      ),
    );
  }
}
