import 'package:apph2/domain/entities/rewards_category.dart';
import 'package:apph2/domain/entities/user_points_info.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/infraestructure/num_extension.dart';
import 'package:apph2/theme/theme.dart';
import 'package:apph2/theme/widgets/h2loading.dart';
import 'package:apph2/views/rewards/rewards_state.dart';
import 'package:apph2/views/rewards/rewards_viewmodel.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
  int cashbackSelectedValue = 0;

  @override
  void initState() {
    super.initState();
    viewModel.getRewardsCategoryDetail(widget.rewardsId);
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelConsumer<RewardsViewModel, RewardsState>(
      viewModel: viewModel,
      buildWhen: (previous, current) => previous.loading != current.loading,
      listener: (context, state) {
        if (state.successReedem != '') {
          final snackBar = SnackBar(
            content: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Parabéns!',
                      style: TextStyle(
                        color: Color(0xFF0F594C),
                      ),
                    ),
                    Dimension.xs.vertical,
                    Text('Seu prêmio foi resgatado com sucesso.',
                        style: context.text.caption.copyWith(
                          color: const Color(0xFF0F594C),
                        )),
                  ],
                ),
              ],
            ),
            duration: const Duration(seconds: 3),
            backgroundColor: const Color(0xFFD1E7DD),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
        if (state.error != '') {
          final snackBar = SnackBar(
            content: Text(state.error),
            duration: const Duration(seconds: 2),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
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
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(27),
              topRight: Radius.circular(27),
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
                                      child: SizedBox(
                                        width: const Dimension(14.5).width,
                                        height: const Dimension(14.5).height,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            const Dimension(14.5).value,
                                          ),
                                          child: CachedNetworkImage(
                                            fit: BoxFit.fitHeight,
                                            repeat: ImageRepeat.noRepeat,
                                            imageUrl:
                                                state.rewardDetails!.bgUrl,
                                            placeholder: (context, url) =>
                                                Image.asset(
                                              'assets/images/prize_h2.png',
                                            ),
                                            errorWidget:
                                                (context, error, stackTrace) {
                                              return Image.asset(
                                                'assets/images/prize_h2.png',
                                              );
                                            },
                                          ),
                                        ),
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
                                            color:
                                                AppThemeBase.colorSecondary02,
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
                                            color:
                                                AppThemeBase.colorSecondary02,
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
                                                    '${(state.userPoints?.rewardsPoints ?? 0).toStringAsFixed(0)} pts.',
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
                                  ...cashComponents(
                                    state.rewardDetails!,
                                    state.userPoints!,
                                  )
                                else if (state.rewardDetails!.fixedValue)
                                  ...pointsWithMoney(
                                    state.rewardDetails!,
                                    state.userPoints!,
                                  )
                                else
                                  Center(
                                    child: ContainedButton.small(
                                      enabled: state.rewardDetails!.minPoints ==
                                              null ||
                                          state.userPoints!.rewardsPoints >=
                                              state.rewardDetails!.minPoints!,
                                      style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty
                                            .resolveWith<Color?>(
                                          (Set<MaterialState> states) {
                                            if (states.contains(
                                                MaterialState.disabled)) {
                                              return const Color(0xFFC6C6C6);
                                            }
                                            return Colors.transparent;
                                          },
                                        ),
                                      ),
                                      onPressed: () {
                                        viewModel.reedemPrize(
                                          prizeId: widget.rewardsId,
                                          value: 0,
                                          points: state.rewardDetails!.points,
                                        );
                                      },
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
      ),
    );
  }

  double changeSlider({
    required double value,
    required double userValue,
    required double prizePoints,
  }) {
    if (value > userValue) return userValue;
    return value;
  }

  List<Widget> pointsWithMoney(
    RewardsCategory prize,
    UserPointsInfo userPoints,
  ) {
    return [
      Container(
        decoration: BoxDecoration(
          color: LightBackgroundColorPalette().solidBackground,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
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
                overlayShape: SliderComponentShape.noOverlay,
              ),
              child: Slider(
                thumbColor: AppThemeBase.colorPrimaryLight,
                activeColor: AppThemeBase.colorPrimaryLight,
                inactiveColor: AppThemeBase.colorPrimaryLightest,
                value: _currentSliderValue,
                max: prize.maxPoints?.toDouble() ?? prize.points.toDouble(),
                label: _currentSliderValue.round().toString(),
                onChanged: (double value) {
                  final newValue = changeSlider(
                    prizePoints: prize.points.toDouble(),
                    userValue: userPoints.rewardsPoints,
                    value: value,
                  );
                  setState(() {
                    _currentSliderValue = newValue;
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
                    children: <TextSpan>[
                      const TextSpan(
                        text: 'Mínimo: ',
                      ),
                      TextSpan(
                        text: prize.minPoints?.toString() ?? 0.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      if (prize.maxPoints != null) ...[
                        const TextSpan(text: ' / '),
                        const TextSpan(
                          text: 'Máximo: ',
                        ),
                        TextSpan(
                          text: prize.maxPoints?.toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]
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
                        text: 'Pagar diferença de: ',
                      ),
                      TextSpan(
                        text: ((prize.points - _currentSliderValue) *
                                prize.valuePoint!)
                            .toCurrency(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppThemeBase.colorPrimaryLight,
                        ),
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
          enabled: _currentSliderValue >= (prize.minPoints ?? 0) &&
              userPoints.rewardsPoints >= (prize.minPoints ?? 0),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.disabled)) {
                  return const Color(0xFFC6C6C6);
                }
                return Colors.transparent;
              },
            ),
          ),
          onPressed: () {
            viewModel.reedemPrize(
              prizeId: widget.rewardsId,
              points: _currentSliderValue.round(),
              receiptDifference:
                  (prize.points - _currentSliderValue.round()) != 0,
              value: (prize.points - _currentSliderValue.round()) *
                  prize.valuePoint!,
            );
          },
          textStyle: TextStyle(
            color: Colors.white,
            fontSize: 20.fontSize,
          ),
          text: "Confirmar Resgate",
        ),
      ),
    ];
  }

  List<Widget> cashComponents(
    RewardsCategory prize,
    UserPointsInfo userPoints,
  ) {
    return [
      if (prize.cashbackObject != null) ...[
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Para qual aplicativo você deseja realizar o resgate?',
              style: context.text.caption,
            ),
            Dimension.xs.vertical,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (prize.cashbackObject!.poker != null) ...[
                  Row(
                    children: [
                      Radio(
                        visualDensity: const VisualDensity(
                          horizontal: VisualDensity.minimumDensity,
                          vertical: VisualDensity.minimumDensity,
                        ),
                        value: 2,
                        groupValue: cashbackSelectedValue,
                        onChanged: (newValue) {
                          setState(() {
                            cashbackSelectedValue = newValue!;
                          });
                        },
                      ),
                      Text('SUPREMA', style: context.text.callout)
                    ],
                  ),
                  Dimension.md.horizontal,
                ],
                if (prize.cashbackObject!.cacheta != null)
                  Row(
                    children: [
                      Radio(
                        visualDensity: const VisualDensity(
                          horizontal: VisualDensity.minimumDensity,
                          vertical: VisualDensity.minimumDensity,
                        ),
                        value: 3,
                        groupValue: cashbackSelectedValue,
                        onChanged: (newValue) {
                          setState(() {
                            cashbackSelectedValue = newValue!;
                          });
                        },
                      ),
                      Text(
                        'CACHETA',
                        style: context.text.callout,
                      )
                    ],
                  )
              ],
            ),
            Dimension.md.vertical,
          ],
        ),
      ] else ...[
        Text(
          'Procure um gerente mais próximo para habilitar o resgate.',
          style: context.text.body1,
          textAlign: TextAlign.center,
        ),
        Dimension.md.vertical,
      ],
      Container(
        decoration: BoxDecoration(
          color: LightBackgroundColorPalette().solidBackground,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
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
                overlayShape: SliderComponentShape.noOverlay,
              ),
              child: Slider(
                thumbColor: AppThemeBase.colorPrimaryLight,
                activeColor: AppThemeBase.colorPrimaryLight,
                inactiveColor: AppThemeBase.colorPrimaryLightest,
                value: _currentSliderValue,
                max: prize.maxPoints?.toDouble() ?? userPoints.rewardsPoints,
                label: _currentSliderValue.round().toString(),
                onChanged: (double value) {
                  final newValue = changeSlider(
                    prizePoints:
                        prize.maxPoints?.toDouble() ?? userPoints.rewardsPoints,
                    userValue: userPoints.rewardsPoints,
                    value: value,
                  );
                  setState(() {
                    _currentSliderValue = newValue;
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
                    children: <TextSpan>[
                      const TextSpan(
                        text: 'Mínimo: ',
                      ),
                      TextSpan(
                        text: prize.minPoints?.toString() ?? 0.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      if (prize.maxPoints != null) ...[
                        const TextSpan(text: ' / '),
                        const TextSpan(
                          text: 'Máximo: ',
                        ),
                        TextSpan(
                          text: prize.maxPoints?.toString() ??
                              userPoints.rewardsPoints.toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]
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
                        text: (_currentSliderValue.round() * prize.valuePoint!)
                            .toCurrency(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppThemeBase.colorPrimaryLight,
                        ),
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
          enabled: _currentSliderValue.round() >= (prize.minPoints ?? 0) &&
              userPoints.rewardsPoints >= (prize.minPoints ?? 0) &&
              cashbackSelectedValue != 0,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.disabled)) {
                  return const Color(0xFFC6C6C6);
                }
                return Colors.transparent;
              },
            ),
          ),
          onPressed: () {
            viewModel.reedemPrize(
              prizeId: widget.rewardsId,
              points: _currentSliderValue.round(),
              value: 0,
              clubId: cashbackSelectedValue == 2
                  ? prize.cashbackObject!.poker!.clubId
                  : prize.cashbackObject!.cacheta!.clubId,
              idApp: cashbackSelectedValue,
              unityId: cashbackSelectedValue == 2
                  ? prize.cashbackObject!.poker!.unitId
                  : prize.cashbackObject!.cacheta!.unitId,
            );
          },
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
