import 'package:apph2/base_app_module_routing.dart';
import 'package:apph2/domain/entities/rewards_category.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/theme/theme.dart';
import 'package:apph2/theme/widgets/h2accordion.dart';
import 'package:apph2/theme/widgets/h2loading.dart';
import 'package:apph2/views/rewards/rewards_state.dart';
import 'package:apph2/views/rewards/rewards_viewmodel.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart' hide View;

class RewardsRedemptionPage extends StatefulWidget {
  const RewardsRedemptionPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RewardsRedemptionPageState createState() => _RewardsRedemptionPageState();
}

class _RewardsRedemptionPageState extends State<RewardsRedemptionPage>
    with View<RewardsViewModel> {
  @override
  void initState() {
    super.initState();
    viewModel.getRewardsGategories();
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
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(27),
            topRight: Radius.circular(27),
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
                          Stack(
                            alignment: Alignment.center,
                            children: [
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
                                          'Saldo: ',
                                          style: context.text.caption,
                                        ),
                                        Text(
                                          '${(state.userPoints?.rewardsPoints ?? 0).toStringAsFixed(0)} pts.',
                                          style:
                                              context.text.body1Medium.copyWith(
                                            fontSize: 25.fontSize,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: GestureDetector(
                                  onTap: () => {
                                    Nav.pushNamed(
                                      BaseAppModuleRouting.redemptionRescuePage,
                                      arguments: 585,
                                    )
                                  },
                                  child: Image.asset(
                                    'assets/images/cash_back.png',
                                    width: const Dimension(86 / 8).width,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Dimension.sm.vertical,
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  "assets/images/rewards_prizes.png",
                                ),
                              ),
                            ),
                            height: const Dimension(130 / 8).height,
                          ),
                          Dimension.md.vertical,
                          const Divider(),
                          const Dimension(2.5).vertical,
                          ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: state.listRewardsCategories.length,
                            itemBuilder: (context, index) => H2Accordion(
                              expanded: index == 0 ? true : false,
                              title: state
                                  .listRewardsCategories[index].accordionTitle,
                              icon:
                                  '''<svg width="15" height="19" viewBox="0 0 15 19" fill="none" xmlns="http://www.w3.org/2000/svg"><path id="Vector" d="M6.57099 0.264413C7.14327 -0.0881375 7.85771 -0.0881375 8.42999 0.264413L9.02779 0.635518C9.12985 0.698606 9.24649 0.732005 9.36678 0.728294L10.0666 0.709739C10.7337 0.694895 11.357 1.05858 11.6778 1.65606L12.0131 2.27951C12.0714 2.38714 12.1553 2.47249 12.261 2.53187L12.8734 2.87328C13.4602 3.19986 13.8175 3.83073 13.8029 4.51357L13.7846 5.22609C13.781 5.34856 13.8138 5.46731 13.8758 5.57122L14.2403 6.17983C14.5866 6.76247 14.5866 7.48983 14.2403 8.07247L13.8758 8.68108C13.8138 8.78499 13.781 8.90374 13.7846 9.02621L13.8029 9.73873C13.8175 10.4179 13.4602 11.0524 12.8734 11.379L12.261 11.7204C12.1553 11.7798 12.0714 11.8652 12.0131 11.9728L11.6778 12.5962C11.357 13.1937 10.7373 13.5574 10.0666 13.5426L9.36678 13.524C9.24649 13.5203 9.12985 13.5537 9.02779 13.6168L8.42999 13.9879C7.85771 14.3404 7.14327 14.3404 6.57099 13.9879L5.97319 13.6168C5.87113 13.5537 5.75448 13.5203 5.63419 13.524L4.93433 13.5426C4.26728 13.5574 3.64397 13.1937 3.3232 12.5962L2.98785 11.9728C2.92953 11.8652 2.84569 11.7798 2.73998 11.7204L2.1276 11.379C1.54074 11.0524 1.18352 10.4216 1.1981 9.73873L1.21633 9.02621C1.21997 8.90374 1.18717 8.78499 1.1252 8.68108L0.760688 8.07247C0.414403 7.48983 0.414403 6.76247 0.760688 6.17983L1.1252 5.57122C1.18717 5.46731 1.21997 5.34856 1.21633 5.22609L1.1981 4.51357C1.18352 3.83445 1.54074 3.19986 2.1276 2.87328L2.73998 2.53187C2.84569 2.47249 2.92953 2.38714 2.98785 2.27951L3.3232 1.65606C3.64397 1.05858 4.26363 0.694895 4.93433 0.709739L5.63419 0.728294C5.75448 0.732005 5.87113 0.698606 5.97319 0.635518L6.57099 0.264413ZM7.8249 1.27753C7.62807 1.15507 7.37655 1.15507 7.17972 1.27753L6.58192 1.64864C6.29031 1.83048 5.95132 1.92325 5.60868 1.91212L4.90882 1.89356C4.67553 1.88614 4.46047 2.01603 4.35112 2.22385L4.01577 2.85102C3.85174 3.15532 3.60387 3.40768 3.30497 3.57467L2.68895 3.91609C2.48482 4.03113 2.36089 4.25008 2.36453 4.48388L2.38276 5.1964C2.39005 5.54524 2.29892 5.88666 2.12396 6.18725L1.75945 6.79587C1.63916 6.99626 1.63916 7.25233 1.75945 7.45272L2.12396 8.06134C2.30257 8.35822 2.39369 8.70335 2.38276 9.05219L2.36453 9.76471C2.35724 10.0022 2.48482 10.2212 2.68895 10.3325L3.30133 10.6739C3.60022 10.8409 3.84809 11.0933 4.01212 11.3976L4.34747 12.021C4.46047 12.2288 4.67553 12.355 4.90517 12.3513L5.60503 12.3328C5.94767 12.3253 6.28302 12.4181 6.57828 12.5962L7.17607 12.9673C7.37291 13.0898 7.62442 13.0898 7.82126 12.9673L8.41905 12.5962C8.71066 12.4144 9.04966 12.3216 9.3923 12.3328L10.0922 12.3513C10.3254 12.3587 10.5405 12.2288 10.6499 12.021L10.9852 11.3976C11.1492 11.0933 11.3971 10.8409 11.696 10.6739L12.3084 10.3325C12.5125 10.2175 12.6364 9.99851 12.6328 9.76471L12.6146 9.05219C12.6073 8.70335 12.6984 8.36193 12.8734 8.06134L13.2379 7.45272C13.3582 7.25233 13.3582 6.99626 13.2379 6.79587L12.8734 6.18725C12.6948 5.89037 12.6036 5.54524 12.6146 5.1964L12.6328 4.48388C12.6401 4.24637 12.5125 4.02742 12.3084 3.91609L11.696 3.57467C11.3971 3.40768 11.1492 3.15532 10.9852 2.85102L10.6499 2.22385C10.5369 2.01603 10.3218 1.88985 10.0922 1.89356L9.3923 1.91212C9.04966 1.91954 8.71431 1.82677 8.41905 1.64864L7.82126 1.27753H7.8249ZM7.50049 5.04425C7.23243 5.04425 6.96699 5.098 6.71933 5.20244C6.47167 5.30688 6.24665 5.45996 6.0571 5.65294C5.86755 5.84591 5.71719 6.07501 5.61461 6.32715C5.51203 6.57929 5.45923 6.84953 5.45923 7.12244C5.45923 7.39535 5.51203 7.66559 5.61461 7.91773C5.71719 8.16987 5.86755 8.39896 6.0571 8.59194C6.24665 8.78492 6.47167 8.938 6.71933 9.04244C6.96699 9.14688 7.23243 9.20063 7.50049 9.20063C7.76855 9.20063 8.03399 9.14688 8.28164 9.04244C8.5293 8.938 8.75433 8.78492 8.94388 8.59194C9.13342 8.39896 9.28378 8.16987 9.38636 7.91773C9.48895 7.66559 9.54175 7.39535 9.54175 7.12244C9.54175 6.84953 9.48895 6.57929 9.38636 6.32715C9.28378 6.07501 9.13342 5.84591 8.94388 5.65294C8.75433 5.45996 8.5293 5.30688 8.28164 5.20244C8.03399 5.098 7.76855 5.04425 7.50049 5.04425ZM10.7082 7.12244C10.7082 7.98856 10.3702 8.81921 9.76867 9.43166C9.16711 10.0441 8.35122 10.3882 7.50049 10.3882C6.64975 10.3882 5.83387 10.0441 5.23231 9.43166C4.63075 8.81921 4.29279 7.98856 4.29279 7.12244C4.29279 6.25631 4.63075 5.42566 5.23231 4.81322C5.83387 4.20078 6.64975 3.85671 7.50049 3.85671C8.35122 3.85671 9.16711 4.20078 9.76867 4.81322C10.3702 5.42566 10.7082 6.25631 10.7082 7.12244ZM0.549272 16.3926L2.05106 12.7595C2.10573 12.8263 2.18228 12.9377 2.30257 13.1603C2.44837 13.4349 2.63427 13.6799 2.84933 13.8877L2.02554 15.8805L3.41432 15.669C3.64032 15.6356 3.86267 15.7358 3.98661 15.9325L4.76301 17.1423L5.71074 14.8489C5.77635 14.8823 5.86019 14.9305 5.96225 14.9936C6.21741 15.1532 6.49079 15.2682 6.77147 15.3387L5.41184 18.6304C5.328 18.8345 5.1421 18.9718 4.92704 18.9904C4.71198 19.0089 4.50421 18.9087 4.38757 18.7232L3.21384 16.9011L1.16894 17.2091C0.961169 17.2388 0.753398 17.1534 0.622174 16.9864C0.49095 16.8194 0.465434 16.5893 0.545627 16.3926H0.549272ZM9.58913 18.6341L8.22951 15.3424C8.51018 15.2682 8.78356 15.1532 9.03872 14.9973C9.14078 14.9342 9.22462 14.886 9.29023 14.8526L10.238 17.146L11.0144 15.9362C11.1383 15.7432 11.3643 15.6393 11.5867 15.6727L12.9754 15.8842L12.1516 13.8914C12.3667 13.6836 12.5526 13.4387 12.6984 13.164C12.8187 12.9414 12.8952 12.83 12.9499 12.7632L14.4517 16.3964C14.5319 16.593 14.5027 16.8194 14.3752 16.9901C14.2476 17.1608 14.0362 17.2462 13.8284 17.2128L11.7835 16.9048L10.6098 18.7306C10.4931 18.9162 10.2853 19.0164 10.0703 18.9978C9.85523 18.9793 9.66932 18.8382 9.58549 18.6378L9.58913 18.6341Z" fill="#CECECE"/></svg>''',
                              content: IntrinsicWidth(
                                child: Wrap(
                                  spacing: const Dimension(30 / 8).value,
                                  runSpacing: const Dimension(30 / 8).value,
                                  alignment: WrapAlignment.spaceBetween,
                                  children: [
                                    ...state.listRewardsCategories[index].prizes
                                        .map((item) {
                                      return prize(
                                          context: context, prize: item);
                                    }).toList()
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Dimension.xxxl.vertical,
                        ],
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

  Widget prize({
    required BuildContext context,
    required RewardsCategory prize,
  }) {
    return GestureDetector(
      onTap: () => {
        Nav.pushNamed(
          BaseAppModuleRouting.redemptionRescuePage,
          arguments: prize.id,
        )
      },
      child: SizedBox(
        width: const Dimension(149 / 8).width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: const Dimension(17.8).width,
              height: const Dimension(17.8).height,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  const Dimension(17.8).value,
                ),
                child: CachedNetworkImage(
                  fit: BoxFit.fitHeight,
                  repeat: ImageRepeat.noRepeat,
                  placeholder: (context, url) => Image.asset(
                    'assets/images/prize_h2.png',
                  ),
                  imageUrl: prize.bgUrl,
                  errorWidget: (context, url, error) => Image.asset(
                    'assets/images/prize_h2.png',
                  ),
                ),
              ),
            ),
            const Dimension(10 / 8).vertical,
            Text(
              prize.title,
              style: context.text.caption,
              textAlign: TextAlign.center,
            ),
            const Dimension(5 / 8).vertical,
            prize.isCashBack
                ? Text(
                    'Resgatar',
                    style: context.text.body2Bold.copyWith(
                        color: AppThemeBase.colorPrimaryLight,
                        fontStyle: FontStyle.italic),
                  )
                : Text(
                    '${prize.points} pts.',
                    style: context.text.body2Bold,
                  ),
          ],
        ),
      ),
    );
  }
}
