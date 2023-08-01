import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/infraestructure/num_extension.dart';
import 'package:apph2/theme/theme.dart';
import 'package:apph2/views/rewards/rewards_state.dart';
import 'package:apph2/views/rewards/rewards_viewmodel.dart';
import 'package:flutter/material.dart' hide View;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RedemptionRescuePage extends StatefulWidget {
  final int rewardsId;
  const RedemptionRescuePage({
    Key? key,
    required this.rewardsId,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RedemptionRescuePageState createState() => _RedemptionRescuePageState();
}

class _RedemptionRescuePageState extends State<RedemptionRescuePage>
    with View<RewardsViewModel> {
  double _currentSliderValue = 0;

  @override
  void initState() {
    super.initState();
    viewModel.getRewardsCategoryDetail(widget.rewardsId);
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
            const Text('Prêmios'),
            Dimension.xxs.vertical,
            Text(
              'Resgate de Prêmos',
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
                    child: state.rewardDetails != null
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Dimension(4).vertical,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Image.asset(
                                      'assets/images/rewards_vip.png',
                                      width: const Dimension(116 / 8).width,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: AppThemeBase.colorSecondary02,
                                        ),
                                        padding: EdgeInsets.symmetric(
                                          horizontal:
                                              const Dimension(2.5).width,
                                          vertical:
                                              const Dimension(1.25).height,
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Valor: ',
                                                  style: context.text.caption,
                                                ),
                                                Text(
                                                  '${state.rewardDetails!.points} pts.',
                                                  style: context
                                                      .text.body1Medium
                                                      .copyWith(
                                                    fontSize: 25.fontSize,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Dimension(10 / 8).vertical,
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: AppThemeBase.colorSecondary02,
                                        ),
                                        padding: EdgeInsets.symmetric(
                                          horizontal:
                                              const Dimension(2.5).width,
                                          vertical:
                                              const Dimension(1.25).height,
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'Saldo: ',
                                                  style: context.text.caption,
                                                ),
                                                Text(
                                                  '600 pts.',
                                                  style: context
                                                      .text.body1Medium
                                                      .copyWith(
                                                    fontSize: 25.fontSize,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Dimension.md.vertical,
                              const Divider(),
                              Dimension.md.vertical,
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: state.rewardDetails!.title,
                                      style: context.text.body1Bold
                                          .copyWith(fontSize: 20.fontSize),
                                    ),
                                    WidgetSpan(
                                      alignment: PlaceholderAlignment.top,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: const Dimension(10 / 8).width,
                                        ),
                                        child: FaIcon(
                                          FontAwesomeIcons.solidSpade,
                                          color: const Color(0xFF166FED),
                                          size: const Dimension(15 / 8).value,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Dimension.md.vertical,
                              Text(
                                state.rewardDetails!.description,
                                style: context.text.caption,
                              ),
                              Dimension.md.vertical,
                              const Divider(),
                              Dimension.md.vertical,
                              if (state.rewardDetails!.isCashBack)
                                ...cashComponents()
                              else
                                Center(
                                  child: ContainedButton.small(
                                    enabled: false,
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.fontSize,
                                    ),
                                    text: "Resgatar Prêmio",
                                  ),
                                ),
                              Dimension.xl.vertical,
                            ],
                          )
                        : const Center(
                            child: Text('Tente novamente'),
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

  List<Widget> cashComponents() {
    return [
      Container(
        decoration: BoxDecoration(
            color: LightBackgroundColorPalette().solidBackground,
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        padding: EdgeInsets.symmetric(
          vertical: Dimension.sm.height,
          horizontal: Dimension.sm.width,
        ),
        child: Column(
          children: [
            Text(
              'Pontos a utilizar no resgate:',
              style: context.text.caption,
            ),
            Dimension.xxs.vertical,
            Text(
              _currentSliderValue.round().toString(),
              style: context.text.h1Bold.copyWith(
                fontSize: 60.fontSize,
                color: AppThemeBase.colorPrimaryLight,
              ),
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                  trackHeight: 2.0,
                  overlayShape: SliderComponentShape.noOverlay),
              child: Slider(
                thumbColor: AppThemeBase.colorPrimaryLight,
                activeColor: AppThemeBase.colorPrimaryLight,
                inactiveColor: AppThemeBase.colorPrimaryLightest,
                value: _currentSliderValue,
                max: 5056,
                label: _currentSliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value.roundToDouble();
                  });
                },
              ),
            ),
            Dimension.xxs.vertical,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    style: context.text.caption.copyWith(
                      fontSize: 10.fontSize,
                      color: const Color(0xffB9B9B9),
                    ),
                    children: const <TextSpan>[
                      TextSpan(
                        text: 'Mínimo: ',
                      ),
                      TextSpan(
                          text: '40',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: ' / '),
                      TextSpan(
                        text: 'Máximo: ',
                      ),
                      TextSpan(
                          text: '5056',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    style: context.text.caption.copyWith(
                      fontSize: 10.fontSize,
                    ),
                    children: <TextSpan>[
                      const TextSpan(
                        text: 'Valor em Ficha: ',
                      ),
                      TextSpan(
                        text: _currentSliderValue.toCurrency(),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppThemeBase.colorPrimaryLight),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      Dimension.md.vertical,
      Center(
        child: ContainedButton.small(
          onPressed: () {},
          textStyle: TextStyle(
            color: Colors.white,
            fontSize: 20.fontSize,
          ),
          text: "Confirmar Resgate",
        ),
      ),
    ];
  }
}
