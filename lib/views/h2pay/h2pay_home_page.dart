import 'package:apph2/base_app_module_routing.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/theme/app_theme_factory.dart';
import 'package:apph2/theme/theme.dart';
import 'package:apph2/theme/widgets/h2loading.dart';
import 'package:apph2/views/h2pay/h2pay_state.dart';
import 'package:apph2/views/h2pay/h2pay_viewmodel.dart';
import 'package:apph2/views/login/login_state.dart';
import 'package:apph2/views/login/login_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class H2PayHomePage extends StatefulWidget {
  const H2PayHomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _H2PayHomePageState createState() => _H2PayHomePageState();
}

class _H2PayHomePageState extends ViewState<H2PayHomePage, H2PayViewModel> {
  late LoginState userState;

  @override
  void initState() {
    super.initState();
    viewModel.loadCustomer();
    userState = DM.get<LoginViewModel>().state;
  }

  @override
  void dispose() {
    viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<H2PayViewModel, H2PayState>(
      viewModel: viewModel,
      buildWhen: (previous, current) {
        return previous.loading != current.loading;
      },
      builder: (context, state) {
        return state.loading
            ? const Center(child: H2Loading())
            : _buildPage(context, state);
      },
    );
  }

  Widget _buildPage(BuildContext context, H2PayState state) {
    if (state.customer == null || !state.customer!.h2PayActive) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimension.sm.width),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(),
            SvgPicture.asset(
              'assets/images/call_manager.svg',
              width: const Dimension(275.47 / 8).width,
            ),
            const Dimension(89 / 8).vertical,
            SizedBox(
              width: const Dimension(312 / 8).width,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(fontSize: 18.fontSize),
                  children: <TextSpan>[
                    const TextSpan(
                      text: 'Você não possui essa opção habilitada!',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: AppThemeBase.colorPrimaryLight),
                    ),
                    TextSpan(
                      text: ' Por favor entre em contato com seu gerente.',
                      style: TextStyle(
                        color: context.colorScheme.colorPrimaryDarkest,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    if (state.customer != null && !state.customer!.h2PayUser) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimension.sm.width),
        child: Column(
          children: [
            const Dimension(17.125).vertical,
            SvgPicture.asset(
              'assets/images/logo.svg',
              width: const Dimension(28.125).width,
              height: const Dimension(15.625).height,
            ),
            const Dimension(15.125).vertical,
            Text(
              'Para acessar o H2 PAY você precisa verificar sua conta',
              textAlign: TextAlign.center,
              style: context.text.body1,
            ),
            Dimension.md.vertical,
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: const Dimension(4).width,
              ),
              child: ContainedButton.large(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20.fontSize,
                ),
                onPressed: () {
                  Nav.pushNamed(BaseAppModuleRouting.verifyPage);
                },
                text: "Verifique agora",
              ),
            ),
          ],
        ),
      );
    }

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/images/bg_h2pay.png"),
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(27),
          topRight: Radius.circular(27),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: const Dimension(4.5).width,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Dimension.xl.vertical,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => {
                    Nav.pushNamed(BaseAppModuleRouting.hiringSumaryPage),
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppThemeBase.colorPrimarySuperlight,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x1A000000),
                          offset: Offset(0, 0),
                          blurRadius: 23,
                        ),
                      ],
                    ),
                    width: const Dimension(17.375).width,
                    height: const Dimension(19.5).height,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Dimension.xs.horizontal,
                            SvgPicture.string(
                                '''<svg width="61" height="54" viewBox="0 0 61 54" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="file-signature-duotone" clip-path="url(#clip0_740_8887)"><path id="Caminho 9" d="M40.6737 16.8757H27.1158C26.6705 16.8762 26.2294 16.7892 25.8178 16.6198C25.4063 16.4503 25.0324 16.2017 24.7175 15.8881C24.4026 15.5745 24.1529 15.2022 23.9827 14.7924C23.8125 14.3826 23.7252 13.9434 23.7257 13.5V0L40.6737 16.8757ZM58.2355 14.7341L59.7606 16.2527C60.5541 17.045 60.9997 18.1182 60.9997 19.2372C60.9997 20.3561 60.5541 21.4294 59.7606 22.2217L56.6469 25.3221L49.122 17.8345L52.2356 14.7341C53.0313 13.944 54.1092 13.5003 55.2329 13.5003C56.3567 13.5003 57.4345 13.944 58.2302 14.7341H58.2355ZM33.0363 33.8554L46.7212 20.2289L54.2422 27.7178L40.556 41.3337C40.1216 41.7677 39.5757 42.0744 38.978 42.2201L32.6117 43.8006C32.3277 43.8719 32.0299 43.8685 31.7476 43.791C31.4652 43.7134 31.2079 43.5642 31.0008 43.3579C30.7937 43.1517 30.6438 42.8955 30.5659 42.6143C30.488 42.3332 30.4846 42.0367 30.5562 41.7539L32.1435 35.4148C32.2923 34.8206 32.5999 34.2776 33.0337 33.8435L33.0363 33.8554Z" fill="url(#paint0_linear_740_8887)"/><path id="Caminho 10" opacity="0.4" d="M6.77895 0C4.9816 0.00174348 3.25836 0.713462 1.98744 1.97895C0.716522 3.24445 0.00175095 4.96032 0 6.75L0 47.25C0.00175095 49.0397 0.716522 50.7556 1.98744 52.021C3.25836 53.2865 4.9816 53.9983 6.77895 54H33.8948C35.6921 53.9983 37.4154 53.2865 38.6863 52.021C39.9572 50.7556 40.672 49.0397 40.6737 47.25V41.2178L40.5573 41.3337C40.1229 41.7677 39.577 42.0744 38.9793 42.2201L32.8353 43.7598C32.6325 43.8365 32.4173 43.8758 32.2004 43.8757H25.4214C25.1078 43.8774 24.8 43.792 24.5325 43.6292C24.2649 43.4663 24.0483 43.2324 23.9069 42.9537L22.981 41.0874C22.8957 40.9149 22.764 40.7694 22.6005 40.667C22.437 40.5647 22.2482 40.5096 22.0551 40.5079C21.8617 40.5082 21.6723 40.5628 21.5085 40.6653C21.3448 40.7677 21.2133 40.914 21.1292 41.0874L20.2033 42.9537C20.0524 43.2561 19.8137 43.5064 19.5181 43.6721C19.2226 43.8377 18.8839 43.9111 18.5459 43.8827C18.208 43.8543 17.8864 43.7255 17.623 43.5128C17.3595 43.3002 17.1663 43.0136 17.0684 42.6903L15.2788 36.8161L14.2404 40.2761C13.9256 41.3191 13.2816 42.2333 12.4038 42.8831C11.526 43.533 10.4613 43.8838 9.36752 43.8836H8.47336C8.02398 43.8836 7.593 43.7058 7.27523 43.3894C6.95747 43.073 6.77895 42.6439 6.77895 42.1964C6.77895 41.7489 6.95747 41.3198 7.27523 41.0034C7.593 40.687 8.02398 40.5092 8.47336 40.5092H9.34239C9.70688 40.5108 10.062 40.3943 10.3543 40.1775C10.6465 39.9606 10.8601 39.655 10.9627 39.3067L12.5407 34.0859C12.7147 33.5043 13.0726 32.9942 13.5612 32.6315C14.0498 32.2688 14.6429 32.0728 15.2523 32.0728C15.8617 32.0728 16.4549 32.2688 16.9435 32.6315C17.432 32.9942 17.7899 33.5043 17.9639 34.0859L19.1927 38.1569C19.7071 37.7304 20.3118 37.4254 20.9615 37.2646C21.6111 37.1037 22.2888 37.0913 22.9439 37.2283C23.5991 37.3652 24.2146 37.648 24.7444 38.0554C25.2742 38.4628 25.7046 38.9842 26.0034 39.5807L26.469 40.5026H30.875L32.1461 35.4187C32.295 34.8246 32.6026 34.2816 33.0363 33.8475L40.6737 26.2532V16.8757H27.1158C26.6707 16.876 26.2299 16.789 25.8186 16.6195C25.4073 16.4501 25.0335 16.2015 24.7188 15.8881C24.404 15.5747 24.1544 15.2026 23.9842 14.793C23.8141 14.3835 23.7267 13.9445 23.727 13.5013V0H6.77895Z" fill="url(#paint1_linear_740_8887)"/></g><defs><linearGradient id="paint0_linear_740_8887" x1="42.3627" y1="0" x2="42.3627" y2="43.8517" gradientUnits="userSpaceOnUse"><stop stop-color="#127FF9"/><stop offset="0.9999" stop-color="#12B4F9"/><stop offset="1" stop-color="#146DED" stop-opacity="0"/></linearGradient><linearGradient id="paint1_linear_740_8887" x1="20.3369" y1="0" x2="20.3369" y2="54" gradientUnits="userSpaceOnUse"><stop stop-color="#127FF9"/><stop offset="0.9999" stop-color="#12B4F9"/><stop offset="1" stop-color="#146DED" stop-opacity="0"/></linearGradient><clipPath id="clip0_740_8887"><rect width="61" height="54" fill="white"/></clipPath></defs></svg>'''),
                          ],
                        ),
                        Dimension.md.vertical,
                        Text(
                          'Contratação',
                          style: context.text.callout
                              .copyWith(fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () =>
                      {Nav.pushNamed(BaseAppModuleRouting.paymentPage)},
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppThemeBase.colorPrimarySuperlight,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x1A000000),
                          offset: Offset(0, 0),
                          blurRadius: 23,
                        ),
                      ],
                    ),
                    width: const Dimension(17.375).width,
                    height: const Dimension(19.5).height,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Dimension.xs.horizontal,
                            SvgPicture.string(
                                '''<svg width="72" height="57" viewBox="0 0 72 57" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="Frame" clip-path="url(#clip0_740_8883)"><g id="handshake-angle-duotone"><path id="Caminho 11" d="M24.1788 13.8444C21.9982 13.8443 19.8657 14.4804 18.0456 15.6737C16.2256 16.867 14.7981 18.565 13.9403 20.5571L10.572 28.3436L1.90096 36.9599C1.29659 37.5593 0.817104 38.2714 0.489956 39.0552C0.162808 39.839 -0.00558472 40.6792 -0.00558472 41.5278C-0.00558472 42.3764 0.162808 43.2166 0.489956 44.0004C0.817104 44.7842 1.29659 45.4963 1.90096 46.0958L10.9722 55.1097C11.5755 55.7103 12.292 56.1867 13.0808 56.5118C13.8696 56.8369 14.7152 57.0042 15.5691 57.0042C16.4231 57.0042 17.2687 56.8369 18.0575 56.5118C18.8463 56.1867 19.5628 55.7103 20.1661 55.1097L24.543 50.7605C24.647 50.7605 24.7524 50.7724 24.8564 50.7724H43.4297C44.9074 50.7721 46.3245 50.1886 47.3694 49.1503C48.4143 48.112 49.0015 46.7038 49.0019 45.2355C48.9997 44.6075 48.8938 43.9841 48.6884 43.3902H49.0019C50.0912 43.3911 51.1569 43.0744 52.0669 42.4792C52.9768 41.8841 53.6911 41.0367 54.1211 40.0421C54.5511 39.0476 54.678 37.9494 54.486 36.8839C54.2941 35.8183 53.7917 34.8321 53.0412 34.0475C54.6273 33.7387 56.0408 32.8539 57.0063 31.5658C57.9717 30.2777 58.4198 28.6786 58.2632 27.08C58.1067 25.4815 57.3567 23.9982 56.1594 22.9192C54.9622 21.8402 53.4035 21.2429 51.7872 21.2438H36.0007V28.6259C36.0007 30.0944 35.4136 31.5028 34.3686 32.5411C33.3237 33.5795 31.9064 34.1629 30.4286 34.1629C28.9507 34.1629 27.5335 33.5795 26.4885 32.5411C25.4435 31.5028 24.8564 30.0944 24.8564 28.6259V13.8444H24.1788Z" fill="url(#paint0_linear_740_8883)"/><path id="Caminho 12" opacity="0.4" d="M60.9118 29.1522C60.5677 29.4955 60.1587 29.768 59.7085 29.954C59.2582 30.1401 58.7755 30.2361 58.2878 30.2365H57.7649C58.188 29.2532 58.3593 28.1809 58.2633 27.1157C58.1673 26.0505 57.8071 25.0256 57.2149 24.1326C56.6227 23.2395 55.817 22.5063 54.8698 21.9985C53.9226 21.4907 52.8635 21.2241 51.7872 21.2226H36.0007V28.6047C36.0007 29.3319 35.8566 30.0519 35.5765 30.7236C35.2965 31.3954 34.8861 32.0058 34.3686 32.5199C33.8512 33.0341 33.237 33.4419 32.5609 33.7202C31.8849 33.9985 31.1603 34.1417 30.4286 34.1417C29.6968 34.1417 28.9723 33.9985 28.2962 33.7202C27.6202 33.4419 27.0059 33.0341 26.4885 32.5199C25.9711 32.0058 25.5606 31.3954 25.2806 30.7236C25.0006 30.0519 24.8564 29.3319 24.8564 28.6047V13.8444H24.9258C25.1851 11.8051 26.1843 9.92992 27.7361 8.57074C29.2879 7.21157 31.2855 6.46183 33.354 6.46222H47.237L51.8339 1.88896C52.4372 1.2884 53.1538 0.811942 53.9426 0.486859C54.7314 0.161775 55.577 -0.0055542 56.4309 -0.0055542C57.2849 -0.0055542 58.1304 0.161775 58.9192 0.486859C59.708 0.811942 60.4246 1.2884 61.0279 1.88896L70.0991 10.9029C70.7035 11.5024 71.1829 12.2144 71.5101 12.9983C71.8372 13.7821 72.0056 14.6223 72.0056 15.4709C72.0056 16.3194 71.8372 17.1597 71.5101 17.9435C71.1829 18.7273 70.7035 19.4393 70.0991 20.0388L60.9291 29.1509L60.9118 29.1522Z" fill="url(#paint1_linear_740_8883)"/></g></g><defs><linearGradient id="paint0_linear_740_8883" x1="29.1441" y1="13.8444" x2="29.1441" y2="57.0042" gradientUnits="userSpaceOnUse"><stop stop-color="#FF9C01"/><stop offset="1" stop-color="#FF7101"/></linearGradient><linearGradient id="paint1_linear_740_8883" x1="48.431" y1="-0.0055542" x2="48.431" y2="34.1417" gradientUnits="userSpaceOnUse"><stop stop-color="#FF9C01"/><stop offset="1" stop-color="#FF7101"/></linearGradient><clipPath id="clip0_740_8883"><rect width="72" height="57" fill="white"/></clipPath></defs></svg>'''),
                          ],
                        ),
                        Dimension.md.vertical,
                        Text(
                          'Pagamento',
                          style: context.text.callout
                              .copyWith(fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
