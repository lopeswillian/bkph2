import 'package:apph2/domain/entities/user_statement_info.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/theme/theme.dart';
import 'package:apph2/theme/widgets/h2loading.dart';
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
  void initState() {
    super.initState();
    viewModel.getUserStatement();
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
                  child: H2Loading(),
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
                                        '${(state.userPoints?.rewardsPoints??0).toStringAsFixed(0)} pts.',
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
                        if (state.listUserStatement.isEmpty)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Não há lançamentos.',
                                textAlign: TextAlign.center,
                                style: context.text.callout,
                              )
                            ],
                          )
                        else
                          ...mapStatement(
                              state.listUserStatement.where((element) {
                            if (position == 1) {
                              return element.type == 'a';
                            }
                            if (position == 2) {
                              return element.type == 'r';
                            }
                            if (position == 3) {
                              return element.type == 'x';
                            }
                            return true;
                          }).toList()),
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

  List<Widget> mapStatement(List<UserStatementInfo> listStatement) {
    if (listStatement.isEmpty) {
      return [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Não há lançamentos.',
              textAlign: TextAlign.center,
              style: context.text.callout,
            )
          ],
        )
      ];
    }

    return listStatement
        .map(
          (statement) => Column(
            children: [
              detailPayments(context: context, statement: statement),
              Dimension.sm.vertical
            ],
          ),
        )
        .toList();
  }

  TemplateCard getTemplateDetail(String type) {
    switch (type) {
      case 'a':
        return TemplateCard(
          bgColor: const Color(0xFFEAFCE2),
          title: 'Acumulado',
          titleColor: const Color(0xFF8FCD8E),
        );
      case 'r':
        return TemplateCard(
          bgColor: const Color(0xFFF9DFDF),
          title: 'Resgatado',
          titleColor: const Color(0xFFD47C7C),
        );
      case 'c':
        return TemplateCard(
          bgColor: const Color(0xFFDADADA),
          title: 'Cancelado',
          titleColor: const Color(0xFF979797),
        );
      case 'e':
        return TemplateCard(
          bgColor: const Color(0xFFDADADA),
          title: 'Extornado',
          titleColor: const Color(0xFF979797),
        );
      case 'x':
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
    required UserStatementInfo statement,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: getTemplateDetail(statement.type).bgColor,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(const Dimension(14 / 8).value),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      getTemplateDetail(statement.type).title,
                      style: context.text.captionBold.copyWith(
                        color: getTemplateDetail(statement.type).titleColor,
                      ),
                    ),
                    const Dimension(1).vertical,
                    Text(
                      statement.description,
                      maxLines: 1,
                      style: context.text.callout,
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Column(
                  children: [
                    Text(
                      statement.rewardsPoints.toStringAsFixed(0).toString(),
                      style: TextStyle(
                        fontSize: 20.fontSize,
                        fontWeight: FontWeight.w600,
                        color: getTemplateDetail(statement.type).titleColor,
                      ),
                    ),
                    Text(
                      'pts.',
                      style: TextStyle(
                        fontSize: 10.fontSize,
                        fontWeight: FontWeight.normal,
                        color: getTemplateDetail(statement.type).titleColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Dimension(1).vertical,
          Row(
            children: [
              Text(
                statement.formattedDate,
                style: context.text.captionLight,
              ),
              const Dimension(10 / 8).horizontal,
              if (statement.dateCountingEnd != null) ...[
                const FaIcon(FontAwesomeIcons.personWalking),
                const Dimension(10 / 8).horizontal,
                Text(
                  statement.dateCountingEnd!,
                  style: context.text.captionLight,
                ),
              ]
            ],
          )
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
