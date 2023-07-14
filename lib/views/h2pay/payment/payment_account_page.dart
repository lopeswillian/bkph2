import 'package:apph2/base_app_module_routing.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/theme/app_theme_factory.dart';
import 'package:apph2/theme/theme.dart';
import 'package:flutter/material.dart';

class PaymentAccountPage extends StatefulWidget {
  const PaymentAccountPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PaymentAccountPageState createState() => _PaymentAccountPageState();
}

class _PaymentAccountPageState extends State<PaymentAccountPage> {
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
                              'Como você deseja realizar o pagamento?',
                              style: TextStyle(
                                fontSize: 19.fontSize,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Dimension.md.vertical,
                            const Divider(),
                            Dimension.md.vertical,
                            CustomTile(
                              action: () {
                                Nav.pushNamed(
                                  BaseAppModuleRouting.personPaymentPage,
                                );
                              },
                              svgItem:
                                  '''<svg width="25" height="28" viewBox="0 0 25 28" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="user-regular 1" clip-path="url(#clip0_758_9761)"><path id="Vector" d="M16.9643 7C16.9643 5.83968 16.4939 4.72688 15.6567 3.90641C14.8195 3.08594 13.684 2.625 12.5 2.625C11.316 2.625 10.1805 3.08594 9.34327 3.90641C8.50606 4.72688 8.03571 5.83968 8.03571 7C8.03571 8.16032 8.50606 9.27312 9.34327 10.0936C10.1805 10.9141 11.316 11.375 12.5 11.375C13.684 11.375 14.8195 10.9141 15.6567 10.0936C16.4939 9.27312 16.9643 8.16032 16.9643 7ZM5.35714 7C5.35714 5.14348 6.10969 3.36301 7.44924 2.05025C8.78878 0.737498 10.6056 0 12.5 0C14.3944 0 16.2112 0.737498 17.5508 2.05025C18.8903 3.36301 19.6429 5.14348 19.6429 7C19.6429 8.85652 18.8903 10.637 17.5508 11.9497C16.2112 13.2625 14.3944 14 12.5 14C10.6056 14 8.78878 13.2625 7.44924 11.9497C6.10969 10.637 5.35714 8.85652 5.35714 7ZM2.75112 25.375H22.2489C21.7522 21.9133 18.7165 19.25 15.0502 19.25H9.94978C6.28348 19.25 3.24777 21.9133 2.75112 25.375ZM0 26.3758C0 20.9891 4.45312 16.625 9.94978 16.625H15.0502C20.5469 16.625 25 20.9891 25 26.3758C25 27.2727 24.2578 28 23.3426 28H1.65737C0.742188 28 0 27.2727 0 26.3758Z" fill="#127FF9"/></g><defs><clipPath id="clip0_758_9761"><rect width="25" height="28" fill="white"/></clipPath></defs></svg>''',
                              title: 'Pessoa Física',
                              padding: EdgeInsets.symmetric(
                                horizontal: Dimension.sm.width,
                                vertical: const Dimension(2.5).height,
                              ),
                            ),
                            Dimension.md.vertical,
                            CustomTile(
                              action: () {
                                Nav.pushNamed(
                                  BaseAppModuleRouting.companyPage,
                                );
                              },
                              svgItem:
                                  '''<svg width="34" height="28" viewBox="0 0 34 28" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="users-regular 1" clip-path="url(#clip0_758_9765)"><path id="Vector" d="M7.65 8.75C8.77717 8.75 9.85817 8.28906 10.6552 7.46859C11.4522 6.64812 11.9 5.53532 11.9 4.375C11.9 3.21468 11.4522 2.10188 10.6552 1.28141C9.85817 0.460936 8.77717 0 7.65 0C6.52283 0 5.44183 0.460936 4.6448 1.28141C3.84777 2.10188 3.4 3.21468 3.4 4.375C3.4 5.53532 3.84777 6.64812 4.6448 7.46859C5.44183 8.28906 6.52283 8.75 7.65 8.75ZM27.2 8.75C28.3272 8.75 29.4082 8.28906 30.2052 7.46859C31.0022 6.64812 31.45 5.53532 31.45 4.375C31.45 3.21468 31.0022 2.10188 30.2052 1.28141C29.4082 0.460936 28.3272 0 27.2 0C26.0728 0 24.9918 0.460936 24.1948 1.28141C23.3978 2.10188 22.95 3.21468 22.95 4.375C22.95 5.53532 23.3978 6.64812 24.1948 7.46859C24.9918 8.28906 26.0728 8.75 27.2 8.75ZM0 16.3352C0 16.975 0.51 17.5 1.13156 17.5H12.4684C12.4791 17.5 12.4897 17.5 12.5056 17.5C11.0925 16.2148 10.2053 14.3391 10.2053 12.25C10.2053 11.8344 10.2425 11.4297 10.3063 11.0305C9.58375 10.6859 8.78156 10.5 7.93687 10.5H5.66844C2.53937 10.5 0 13.1141 0 16.3352ZM21.5316 17.5H32.8684C33.4953 17.5 34 16.975 34 16.3352C34 13.1141 31.4606 10.5 28.3316 10.5H26.0684C25.2238 10.5 24.4216 10.6914 23.6991 11.0305C23.7681 11.4242 23.8 11.8344 23.8 12.25C23.8 14.3391 22.9075 16.2148 21.4997 17.5C21.5103 17.5 21.5209 17.5 21.5369 17.5H21.5316ZM17 9.625C17.3349 9.625 17.6665 9.6929 17.9758 9.82482C18.2852 9.95673 18.5663 10.1501 18.8031 10.3938C19.0399 10.6376 19.2277 10.927 19.3559 11.2455C19.484 11.5639 19.55 11.9053 19.55 12.25C19.55 12.5947 19.484 12.9361 19.3559 13.2545C19.2277 13.573 19.0399 13.8624 18.8031 14.1062C18.5663 14.3499 18.2852 14.5433 17.9758 14.6752C17.6665 14.8071 17.3349 14.875 17 14.875C16.6651 14.875 16.3335 14.8071 16.0242 14.6752C15.7148 14.5433 15.4337 14.3499 15.1969 14.1062C14.9601 13.8624 14.7723 13.573 14.6441 13.2545C14.516 12.9361 14.45 12.5947 14.45 12.25C14.45 11.9053 14.516 11.5639 14.6441 11.2455C14.7723 10.927 14.9601 10.6376 15.1969 10.3938C15.4337 10.1501 15.7148 9.95673 16.0242 9.82482C16.3335 9.6929 16.6651 9.625 17 9.625ZM17 17.5C17.6697 17.5 18.3329 17.3642 18.9517 17.1004C19.5704 16.8365 20.1327 16.4498 20.6062 15.9623C21.0798 15.4748 21.4555 14.896 21.7118 14.2591C21.9681 13.6221 22.1 12.9394 22.1 12.25C22.1 11.5606 21.9681 10.8779 21.7118 10.2409C21.4555 9.60395 21.0798 9.0252 20.6062 8.53769C20.1327 8.05018 19.5704 7.66347 18.9517 7.39963C18.3329 7.1358 17.6697 7 17 7C16.3303 7 15.6671 7.1358 15.0483 7.39963C14.4296 7.66347 13.8673 8.05018 13.3938 8.53769C12.9202 9.0252 12.5445 9.60395 12.2882 10.2409C12.0319 10.8779 11.9 11.5606 11.9 12.25C11.9 12.9394 12.0319 13.6221 12.2882 14.2591C12.5445 14.896 12.9202 15.4748 13.3938 15.9623C13.8673 16.4498 14.4296 16.8365 15.0483 17.1004C15.6671 17.3642 16.3303 17.5 17 17.5ZM13.8816 21.875H20.1184C22.2328 21.875 24.0072 23.3625 24.5066 25.375H9.49344C9.99813 23.3625 11.7725 21.875 13.8816 21.875ZM13.8816 19.25C9.97156 19.25 6.8 22.5148 6.8 26.5398C6.8 27.3438 7.43219 28 8.21844 28H25.7816C26.5625 28 27.2 27.3492 27.2 26.5398C27.2 22.5148 24.0284 19.25 20.1184 19.25H13.8816Z" fill="#127FF9"/></g><defs><clipPath id="clip0_758_9765"><rect width="34" height="28" fill="white"/></clipPath></defs></svg>''',
                              title: 'Pessoa Jurídica',
                              padding: EdgeInsets.symmetric(
                                horizontal: Dimension.sm.width,
                                vertical: const Dimension(2.5).height,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget detailPayments({
    required BuildContext context,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: context.colorScheme.colorPrimaryLightest,
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
                'Em aberto',
                style: context.text.captionBold.copyWith(
                  color: context.colorScheme.colorPrimaryLight,
                ),
              ),
              const Dimension(1).vertical,
              Text(
                'Torneio CPH',
                style: context.text.callout,
              ),
              const Dimension(1).vertical,
              Text(
                '25/05/2023  14:00',
                style: context.text.captionLight,
              )
            ],
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(
                fontSize: 18.fontSize,
                color: context.colorScheme.colorPrimaryLight,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'R\$',
                  style: TextStyle(fontSize: 10.fontSize),
                ),
                TextSpan(
                  text: ' 600,00',
                  style: TextStyle(
                    fontSize: 20.fontSize,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
