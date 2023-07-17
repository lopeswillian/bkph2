import 'package:apph2/base_app_module_routing.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/theme/theme.dart';
import 'package:apph2/views/h2pay/h2pay_viewmodel.dart';
import 'package:apph2/views/h2pay/payment/company/company_resource_page.dart';
import 'package:apph2/views/h2pay/payment/payment_viewmodel.dart';
import 'package:flutter/material.dart' hide View;
import 'package:flutter_svg/svg.dart';

class CompanyPage extends StatefulWidget {
  const CompanyPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CompanyPageState createState() => _CompanyPageState();
}

class _CompanyPageState extends State<CompanyPage> {
  late H2PayViewModel viewModel;
  late PaymentViewModel paymentViewModel;
  @override
  void initState() {
    super.initState();
    viewModel = DM.get<H2PayViewModel>();
    paymentViewModel = DM.get<PaymentViewModel>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const H2AppBar(
        title: Text('Pagamentos'),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Dimension.xl.vertical,
                            Text(
                              'Quem irá realizar o pagamento?',
                              style: TextStyle(
                                fontSize: 19.fontSize,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Dimension.md.vertical,
                            const Divider(),
                            Dimension.md.vertical,
                            Text(
                              'Minhas empresas',
                              style: context.text.body2,
                            ),
                            Dimension.md.vertical,
                            ...viewModel.state.customerCompanies!.listCompanies
                                .map(
                                  (company) => Column(
                                    children: [
                                      CustomTile(
                                        action: () {
                                          paymentViewModel.selectCustomerCompany(company);
                                          Nav.pushNamed(
                                            BaseAppModuleRouting
                                                .companyDetailPage,
                                          );
                                        },
                                        svgItem:
                                            '''<svg width="36" height="30" viewBox="0 0 36 30" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="building-circle-check-regular 1" clip-path="url(#clip0_760_11348)"><path id="Vector" d="M3.6 2.8125H18C18.495 2.8125 18.9 3.23438 18.9 3.75V17.2617C19.5244 15.8379 20.4581 14.5957 21.6 13.6113V3.75C21.6 1.68164 19.9856 0 18 0H3.6C1.61437 0 0 1.68164 0 3.75V26.25C0 28.3184 1.61437 30 3.6 30H18C19.0969 30 20.0812 29.4902 20.7394 28.6816C19.9856 27.8613 19.3612 26.9062 18.9 25.8633V26.25C18.9 26.7656 18.495 27.1875 18 27.1875H13.5V23.4375C13.5 21.8848 12.2906 20.625 10.8 20.625C9.30937 20.625 8.1 21.8848 8.1 23.4375V27.1875H3.6C3.105 27.1875 2.7 26.7656 2.7 26.25V3.75C2.7 3.23438 3.105 2.8125 3.6 2.8125ZM4.95 6.09375V8.90625C4.95 9.42188 5.355 9.84375 5.85 9.84375H8.55C9.045 9.84375 9.45 9.42188 9.45 8.90625V6.09375C9.45 5.57812 9.045 5.15625 8.55 5.15625H5.85C5.355 5.15625 4.95 5.57812 4.95 6.09375ZM13.05 5.15625C12.555 5.15625 12.15 5.57812 12.15 6.09375V8.90625C12.15 9.42188 12.555 9.84375 13.05 9.84375H15.75C16.245 9.84375 16.65 9.42188 16.65 8.90625V6.09375C16.65 5.57812 16.245 5.15625 15.75 5.15625H13.05ZM4.95 13.5938V16.4062C4.95 16.9219 5.355 17.3438 5.85 17.3438H8.55C9.045 17.3438 9.45 16.9219 9.45 16.4062V13.5938C9.45 13.0781 9.045 12.6562 8.55 12.6562H5.85C5.355 12.6562 4.95 13.0781 4.95 13.5938ZM13.05 12.6562C12.555 12.6562 12.15 13.0781 12.15 13.5938V16.4062C12.15 16.9219 12.555 17.3438 13.05 17.3438H15.75C16.245 17.3438 16.65 16.9219 16.65 16.4062V13.5938C16.65 13.0781 16.245 12.6562 15.75 12.6562H13.05ZM36 21.5625C36 19.3247 35.1466 17.1786 33.6276 15.5963C32.1085 14.0139 30.0483 13.125 27.9 13.125C25.7517 13.125 23.6915 14.0139 22.1724 15.5963C20.6534 17.1786 19.8 19.3247 19.8 21.5625C19.8 23.8003 20.6534 25.9464 22.1724 27.5287C23.6915 29.1111 25.7517 30 27.9 30C30.0483 30 32.1085 29.1111 33.6276 27.5287C35.1466 25.9464 36 23.8003 36 21.5625ZM31.6856 19.0254C32.0344 19.3887 32.0344 19.9863 31.6856 20.3496L27.6356 24.5684C27.2869 24.9316 26.7131 24.9316 26.3644 24.5684L24.1144 22.2246C23.7656 21.8613 23.7656 21.2637 24.1144 20.9004C24.4631 20.5371 25.0369 20.5371 25.3856 20.9004L27 22.582L30.4144 19.0254C30.7631 18.6621 31.3369 18.6621 31.6856 19.0254Z" fill="#127FF9"/></g><defs><clipPath id="clip0_760_11348"><rect width="36" height="30" fill="white"/></clipPath></defs></svg>''',
                                        title: company.businessName,
                                        secondSubTitle: company.cnpj,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: Dimension.sm.width,
                                          vertical: const Dimension(2.5).height,
                                        ),
                                      ),
                                      Dimension.md.vertical,
                                    ],
                                  ),
                                )
                                .toList(),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Divider(),
                            Dimension.md.vertical,
                            Text(
                              'Um terceiro vinculado à uma das minhas empresas',
                              style: context.text.body2,
                              textAlign: TextAlign.center,
                            ),
                            Dimension.md.vertical,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () => {
                                    Nav.pushNamed(
                                      BaseAppModuleRouting.companyResourcePage,
                                      arguments:
                                          CompanyResourcePageArguments(true),
                                    )
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: const Dimension(3.375).width,
                                      vertical: const Dimension(2.5).height,
                                    ),
                                    decoration: BoxDecoration(
                                      color: AppThemeBase.colorPrimaryLight,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      children: [
                                        SvgPicture.string(
                                            '''<svg width="40" height="32" viewBox="0 0 40 32" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="Frame" clip-path="url(#clip0_760_11405)"><path id="Vector" d="M0 30.1438C0 23.9875 4.9875 19 11.1438 19C13.05 19 14.95 19 16.8563 19C18.1438 19 19.3813 19.2188 20.5312 19.6188C20.225 20.575 20.0438 21.5813 20.0063 22.6313C19.0375 22.225 17.975 22 16.8563 22C14.95 22 13.05 22 11.1438 22C7.0375 22 3.6375 25.0438 3.08125 29C9.31875 29 15.55 29 21.7812 29C22.55 30.175 23.5312 31.1938 24.675 32C17.0687 32 9.4625 32 1.85625 32C0.83125 32 0 31.1688 0 30.1438ZM6 8.00005C6 5.1438 7.525 2.50005 10 1.0688C12.475 -0.362451 15.525 -0.362451 18 1.0688C20.475 2.50005 22 5.1438 22 8.00005C22 10.8563 20.475 13.5 18 14.9313C15.525 16.3625 12.475 16.3625 10 14.9313C7.525 13.5 6 10.8563 6 8.00005ZM9 8.00005C9 9.78755 9.95 11.4375 11.5 12.3313C13.05 13.225 14.95 13.225 16.5 12.3313C18.05 11.4375 19 9.78755 19 8.00005C19 6.21255 18.05 4.56255 16.5 3.6688C14.95 2.77505 13.05 2.77505 11.5 3.6688C9.95 4.56255 9 6.21255 9 8.00005ZM22 23C22 18.0313 26.0312 14 31 14C35.9688 14 40 18.0313 40 23C40 27.9688 35.9688 32 31 32C26.0312 32 22 27.9688 22 23ZM27.5063 21.3125C27.5688 22.3125 28.2375 22.8938 28.8563 23.2313C29.4062 23.5251 30.0875 23.7188 30.6437 23.875C30.6812 23.8876 30.7188 23.8938 30.7563 23.9063C31.4 24.0875 31.875 24.2313 32.2062 24.425C32.4875 24.5938 32.5 24.6875 32.5 24.775C32.5062 24.925 32.4688 25.0063 32.4375 25.0563C32.4 25.1188 32.325 25.1875 32.1875 25.2626C31.8937 25.4188 31.45 25.5 31.0312 25.4875C30.4375 25.4688 29.875 25.2938 29.1625 25.0625C29.0438 25.025 28.925 24.9876 28.8 24.9501C28.275 24.7875 27.7125 25.0813 27.55 25.6063C27.3875 26.1313 27.6812 26.6938 28.2062 26.8563C28.3062 26.8876 28.4125 26.9188 28.5187 26.9563C28.9625 27.1 29.4625 27.2625 30 27.3688C30 27.6063 30 27.8438 30 28.0813C30 28.6313 30.45 29.0813 31 29.0813C31.55 29.0813 32 28.6313 32 28.0813C32 27.8563 32 27.6313 32 27.4063C32.3875 27.3375 32.7812 27.2125 33.1437 27.0188C33.9 26.6125 34.5375 25.85 34.5 24.7125C34.4688 23.7 33.8563 23.0688 33.2188 22.6938C32.6312 22.3438 31.8937 22.1376 31.3125 21.975C31.3062 21.975 31.3062 21.975 31.3 21.975C30.65 21.7938 30.1562 21.65 29.8062 21.4625C29.5063 21.3 29.5063 21.2125 29.5063 21.1813C29.5 21.0563 29.525 20.9938 29.5562 20.9563C29.5938 20.9 29.6688 20.825 29.8188 20.7438C30.1375 20.575 30.6 20.4875 30.9875 20.4938C31.5 20.5 32.0563 20.6063 32.6375 20.75C33.175 20.8813 33.7188 20.5563 33.85 20.0188C33.9812 19.4813 33.6562 18.9375 33.1188 18.8063C32.7688 18.7188 32.3937 18.6376 32 18.5751C32 18.3813 32 18.1813 32 17.9875C32 17.4375 31.55 16.9875 31 16.9875C30.45 16.9875 30 17.4375 30 17.9875C30 18.1875 30 18.3813 30 18.5813C29.6187 18.6563 29.2313 18.7813 28.875 18.975C28.1375 19.3688 27.4375 20.125 27.5125 21.3L27.5063 21.3125Z" fill="white"/></g><defs><clipPath id="clip0_760_11405"><rect width="40" height="32" fill="white"/></clipPath></defs></svg>'''),
                                        Dimension.xs.vertical,
                                        Text(
                                          'Cliente',
                                          style: context.text.callout.copyWith(
                                            color: AppThemeBase
                                                .colorPrimarySuperlight,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Dimension.md.horizontal,
                                GestureDetector(
                                  onTap: () => {
                                    Nav.pushNamed(
                                      BaseAppModuleRouting.companyResourcePage,
                                      arguments:
                                          CompanyResourcePageArguments(false),
                                    )
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: const Dimension(1.625).width,
                                      vertical: const Dimension(2.5).height,
                                    ),
                                    decoration: BoxDecoration(
                                      color: AppThemeBase.colorPrimaryLight,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      children: [
                                        SvgPicture.string(
                                            '''<svg width="40" height="32" viewBox="0 0 40 32" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="Frame" clip-path="url(#clip0_760_11405)"><path id="Vector" d="M0 30.1438C0 23.9875 4.9875 19 11.1438 19C13.05 19 14.95 19 16.8563 19C18.1438 19 19.3813 19.2188 20.5312 19.6188C20.225 20.575 20.0438 21.5813 20.0063 22.6313C19.0375 22.225 17.975 22 16.8563 22C14.95 22 13.05 22 11.1438 22C7.0375 22 3.6375 25.0438 3.08125 29C9.31875 29 15.55 29 21.7812 29C22.55 30.175 23.5312 31.1938 24.675 32C17.0687 32 9.4625 32 1.85625 32C0.83125 32 0 31.1688 0 30.1438ZM6 8.00005C6 5.1438 7.525 2.50005 10 1.0688C12.475 -0.362451 15.525 -0.362451 18 1.0688C20.475 2.50005 22 5.1438 22 8.00005C22 10.8563 20.475 13.5 18 14.9313C15.525 16.3625 12.475 16.3625 10 14.9313C7.525 13.5 6 10.8563 6 8.00005ZM9 8.00005C9 9.78755 9.95 11.4375 11.5 12.3313C13.05 13.225 14.95 13.225 16.5 12.3313C18.05 11.4375 19 9.78755 19 8.00005C19 6.21255 18.05 4.56255 16.5 3.6688C14.95 2.77505 13.05 2.77505 11.5 3.6688C9.95 4.56255 9 6.21255 9 8.00005ZM22 23C22 18.0313 26.0312 14 31 14C35.9688 14 40 18.0313 40 23C40 27.9688 35.9688 32 31 32C26.0312 32 22 27.9688 22 23ZM27.5063 21.3125C27.5688 22.3125 28.2375 22.8938 28.8563 23.2313C29.4062 23.5251 30.0875 23.7188 30.6437 23.875C30.6812 23.8876 30.7188 23.8938 30.7563 23.9063C31.4 24.0875 31.875 24.2313 32.2062 24.425C32.4875 24.5938 32.5 24.6875 32.5 24.775C32.5062 24.925 32.4688 25.0063 32.4375 25.0563C32.4 25.1188 32.325 25.1875 32.1875 25.2626C31.8937 25.4188 31.45 25.5 31.0312 25.4875C30.4375 25.4688 29.875 25.2938 29.1625 25.0625C29.0438 25.025 28.925 24.9876 28.8 24.9501C28.275 24.7875 27.7125 25.0813 27.55 25.6063C27.3875 26.1313 27.6812 26.6938 28.2062 26.8563C28.3062 26.8876 28.4125 26.9188 28.5187 26.9563C28.9625 27.1 29.4625 27.2625 30 27.3688C30 27.6063 30 27.8438 30 28.0813C30 28.6313 30.45 29.0813 31 29.0813C31.55 29.0813 32 28.6313 32 28.0813C32 27.8563 32 27.6313 32 27.4063C32.3875 27.3375 32.7812 27.2125 33.1437 27.0188C33.9 26.6125 34.5375 25.85 34.5 24.7125C34.4688 23.7 33.8563 23.0688 33.2188 22.6938C32.6312 22.3438 31.8937 22.1376 31.3125 21.975C31.3062 21.975 31.3062 21.975 31.3 21.975C30.65 21.7938 30.1562 21.65 29.8062 21.4625C29.5063 21.3 29.5063 21.2125 29.5063 21.1813C29.5 21.0563 29.525 20.9938 29.5562 20.9563C29.5938 20.9 29.6688 20.825 29.8188 20.7438C30.1375 20.575 30.6 20.4875 30.9875 20.4938C31.5 20.5 32.0563 20.6063 32.6375 20.75C33.175 20.8813 33.7188 20.5563 33.85 20.0188C33.9812 19.4813 33.6562 18.9375 33.1188 18.8063C32.7688 18.7188 32.3937 18.6376 32 18.5751C32 18.3813 32 18.1813 32 17.9875C32 17.4375 31.55 16.9875 31 16.9875C30.45 16.9875 30 17.4375 30 17.9875C30 18.1875 30 18.3813 30 18.5813C29.6187 18.6563 29.2313 18.7813 28.875 18.975C28.1375 19.3688 27.4375 20.125 27.5125 21.3L27.5063 21.3125Z" fill="white"/></g><defs><clipPath id="clip0_760_11405"><rect width="40" height="32" fill="white"/></clipPath></defs></svg>'''),
                                        Dimension.xs.vertical,
                                        Text(
                                          'Fornecedor',
                                          style: context.text.callout.copyWith(
                                            color: AppThemeBase
                                                .colorPrimarySuperlight,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Dimension.xl.vertical,
                          ],
                        ),
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
}
