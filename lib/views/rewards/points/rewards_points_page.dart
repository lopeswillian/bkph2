import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/theme/theme.dart';
import 'package:apph2/views/rewards/points/widgets/custom_switch_point.dart';
import 'package:apph2/views/rewards/rewards_state.dart';
import 'package:apph2/views/rewards/rewards_viewmodel.dart';
import 'package:flutter/material.dart' hide View;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RewardsPointsPage extends StatefulWidget {
  const RewardsPointsPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RewardsPointsPageState createState() => _RewardsPointsPageState();
}

class _RewardsPointsPageState extends State<RewardsPointsPage>
    with View<RewardsViewModel> {
  int position = 0;
  final valueToPay = TextEditingController();

  switchPosition(int newPosition) {
    setState(() {
      position = newPosition;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RewardsViewModel, RewardsState>(
      viewModel: viewModel,
      buildWhen: (previous, current) => previous.loading != current.loading,
      builder: (context, state) {
        return (!state.loading)
            ? _buildPage(context, state)
            : const Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );
      },
    );
  }

  Widget _buildPage(BuildContext context, RewardsState state) {
    return Scaffold(
      appBar: H2AppBar(
        title: Column(
          children: [
            const Text('Pontos'),
            Dimension.xxs.vertical,
            Text(
              'Extrato de Pontos',
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
          child: Padding(
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
                        IntrinsicWidth(
                          child: Container(
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
                                        'Saldo: ',
                                        style: context.text.caption,
                                      ),
                                      Text(
                                        '600 pts.',
                                        style:
                                            context.text.body1Medium.copyWith(
                                          fontSize: 25.fontSize,
                                        ),
                                      )
                                    ],
                                  ),
                                ]),
                          ),
                        ),
                        Dimension.md.vertical,
                        const Divider(),
                        Dimension.md.vertical,
                        Text(
                          'Filtrar por',
                          style: context.text.callout,
                        ),
                        Dimension.xxs.vertical,
                        CustomSwitchPoint(position: switchPosition),
                        Dimension.xxs.vertical,
                        const Dimension(2.5).vertical,
                        const Divider(),
                        const Dimension(2.5).vertical,
                        detailPayments(
                          context: context,
                          dateCreate: '25/05/2023  14:00',
                          status: 2,
                          value: 2,
                        ),
                        Dimension.sm.vertical,
                        detailPayments(
                          context: context,
                          dateCreate: '25/05/2023  14:00',
                          status: 0,
                          value: 2,
                        ),
                        Dimension.sm.vertical,
                        detailPayments(
                          context: context,
                          dateCreate: '25/05/2023  14:00',
                          status: 1,
                          value: 2,
                        ),
                        // if (state.anticipationWithDischarge != null)
                        //   ...state
                        //       .anticipationWithDischarge!.listAnticipation
                        //       .where((element) {
                        //         if (position == 1) {
                        //           return [0, 1].contains(element.status);
                        //         }
                        //         if (position == 2) {
                        //           return element.status == 4;
                        //         }
                        //         return true;
                        //       })
                        //       .map(
                        //         (anticipation) => Column(
                        //           children: [
                        //             detailPayments(
                        //               context: context,
                        //               dateCreate: anticipation.dateCreate
                        //                   .toString(),
                        //               status: anticipation.status,
                        //               value: anticipation.valuePrincipal,
                        //             ),
                        //             Dimension.sm.vertical
                        //           ],
                        //         ),
                        //       )
                        //       .toList(),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  TemplateCard getTemplateDetail(int status) {
    switch (status) {
      case 0:
        return TemplateCard(
          bgColor: const Color(0xFFEAFCE2),
          title: 'Acumulado',
          titleColor: const Color(0xFF8FCD8E),
        );
      case 1:
        return TemplateCard(
          bgColor: const Color(0xFFF9DFDF),
          title: 'Resgatado',
          titleColor: const Color(0xFFD47C7C),
        );
      case 2:
      default:
        return TemplateCard(
          bgColor: const Color(0xFFDADADA),
          title: 'Expirado',
          titleColor: const Color(0xFF979797),
        );
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
        color: getTemplateDetail(status).bgColor,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(const Dimension(14 / 8).value),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                getTemplateDetail(status).title,
                style: context.text.captionBold.copyWith(
                  color: getTemplateDetail(status).titleColor,
                ),
              ),
              const Dimension(1).vertical,
              Text(
                'Bar & Restaurante (Curitiba)',
                style: context.text.callout,
              ),
              const Dimension(1).vertical,
              Row(
                children: [
                  Text(
                    dateCreate,
                    style: context.text.captionLight,
                  ),
                  const Dimension(10 / 8).horizontal,
                  const FaIcon(FontAwesomeIcons.personWalking),
                  const Dimension(10 / 8).horizontal,
                  Text(
                    dateCreate,
                    style: context.text.captionLight,
                  ),
                ],
              )
            ],
          ),
          Column(
            children: [
              Text(
                '600',
                style: TextStyle(
                  fontSize: 20.fontSize,
                  fontWeight: FontWeight.w600,
                  color: getTemplateDetail(status).titleColor,
                ),
              ),
              Text(
                'pts.',
                style: TextStyle(
                  fontSize: 10.fontSize,
                  fontWeight: FontWeight.normal,
                  color: getTemplateDetail(status).titleColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TemplateCard {
  Color bgColor;
  Color titleColor;
  String title;

  TemplateCard({
    required this.bgColor,
    required this.titleColor,
    required this.title,
  });
}
