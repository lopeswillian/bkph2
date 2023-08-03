import 'package:apph2/base_app_module_routing.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/infraestructure/num_extension.dart';
import 'package:apph2/theme/theme.dart';
import 'package:apph2/theme/widgets/custom_text.dart';
import 'package:apph2/theme/widgets/h2loading.dart';
import 'package:apph2/views/h2pay/h2pay_state.dart';
import 'package:apph2/views/h2pay/h2pay_viewmodel.dart';
import 'package:apph2/views/register/widgets/next_widget.dart';
import 'package:flutter/material.dart' hide View;

class HiringPage extends StatefulWidget {
  const HiringPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HiringPageState createState() => _HiringPageState();
}

class _HiringPageState extends State<HiringPage> with View<H2PayViewModel> {
  @override
  void initState() {
    super.initState();
    viewModel.getAnticipation();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<H2PayViewModel, H2PayState>(
      viewModel: viewModel,
      buildWhen: (previous, current) =>
          previous.customer != current.customer ||
          previous.loading != current.loading ||
          previous.anticipation != current.anticipation,
      builder: (context, state) {
        return state.loading
            ? const Scaffold(
                body: Center(
                  child: H2Loading(),
                ),
              )
            : _buildPage(context, state);
      },
    );
  }

  Widget _buildPage(BuildContext context, H2PayState state) {
    if ((state.anticipation == null)) {
      return Scaffold(
        appBar: H2AppBar(
          title: Column(
            children: [
              const Text('Contratação'),
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
              child: Center(
                child: Text(
                  'Você ainda não possui antecipação disponível para assinatura.',
                  textAlign: TextAlign.center,
                  style: context.text.body1,
                ),
              )),
        ),
      );
    }
    return Scaffold(
      appBar: H2AppBar(
        title: Column(
          children: [
            const Text('Contratação'),
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
                            Dimension.xl.vertical,
                            Text(
                              'Sumário da Antecipação',
                              style: TextStyle(
                                fontSize: 19.fontSize,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Dimension.md.vertical,
                            const Divider(),
                            Dimension.md.vertical,
                            CustomTextFormField(
                              labelText: 'Prazo de Pagamento',
                              initialValue:
                                  state.anticipation!.paymentDescription,
                              enabled: false,
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: Dimension.sm.width,
                                vertical: Dimension.sm.width,
                              ),
                            ),
                            Dimension.sm.vertical,
                            CustomTextFormField(
                              labelText: 'Finalidade do Crédito',
                              initialValue: state.anticipation?.useType ?? '',
                              enabled: false,
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: Dimension.sm.width,
                                vertical: Dimension.sm.width,
                              ),
                            ),
                            Dimension.sm.vertical,
                            CustomTextFormField(
                              labelText: 'Valor',
                              initialValue:
                                  state.anticipation?.valuePoker.toCurrency(),
                              enabled: false,
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: Dimension.sm.width,
                                vertical: Dimension.sm.width,
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
                      title: 'Aceitar',
                      action: () {
                        Nav.pushNamed(BaseAppModuleRouting.hiringConditionsPage,
                            arguments: state.anticipation!.term);
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
