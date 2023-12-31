import 'package:apph2/base_app_module_routing.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/theme/theme.dart';
import 'package:apph2/views/h2pay/h2pay_viewmodel.dart';
import 'package:apph2/views/h2pay/payment/company/company_account_page.dart';
import 'package:apph2/views/h2pay/payment/payment_viewmodel.dart';
import 'package:flutter/material.dart';

class CompanyResourcePageArguments {
  final bool isClient;
  CompanyResourcePageArguments(this.isClient);
}

class CompanyResourcePage extends StatefulWidget {
  final CompanyResourcePageArguments arguments;
  const CompanyResourcePage({Key? key, required this.arguments})
      : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CompanyResourcePageState createState() => _CompanyResourcePageState();
}

class _CompanyResourcePageState extends State<CompanyResourcePage> {
  late H2PayViewModel _h2payViewModel;
  late PaymentViewModel _paymentViewModel;

  @override
  void initState() {
    super.initState();
    _h2payViewModel = DM.get<H2PayViewModel>();
    _paymentViewModel = DM.get<PaymentViewModel>();
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
                      children: [
                        Dimension.xl.vertical,
                        Text(
                          'Qual das suas empresas está vinculada ao ${widget.arguments.isClient ? 'Cliente' : 'Fornecedor'}?',
                          style: TextStyle(
                            fontSize: 19.fontSize,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Dimension.md.vertical,
                        const Divider(),
                        Dimension.md.vertical,
                        Text(
                          'Selecione uma das opções abaixo',
                          style: context.text.body2,
                        ),
                        Dimension.md.vertical,
                        ..._h2payViewModel
                            .state.customerCompanies!.listCompanies
                            .map(
                              (company) => Column(
                                children: [
                                  CustomTile(
                                    action: () {
                                      _paymentViewModel
                                          .selectCustomerCompany(company);
                                      Nav.pushNamed(
                                        BaseAppModuleRouting.companyAccountPage,
                                        arguments: CompanyAccountPageArguments(
                                          isClient: widget.arguments.isClient,
                                        ),
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
                        // CustomTile(
                        //   action: () {
                        //     Nav.pushNamed(
                        //       BaseAppModuleRouting.companyAccountPage,
                        //       arguments: CompanyAccountPageArguments(isClient: widget.arguments.isClient)
                        //     );
                        //   },
                        //   svgItem:
                        //       '''<svg width="36" height="30" viewBox="0 0 36 30" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="building-circle-check-regular 1" clip-path="url(#clip0_760_11348)"><path id="Vector" d="M3.6 2.8125H18C18.495 2.8125 18.9 3.23438 18.9 3.75V17.2617C19.5244 15.8379 20.4581 14.5957 21.6 13.6113V3.75C21.6 1.68164 19.9856 0 18 0H3.6C1.61437 0 0 1.68164 0 3.75V26.25C0 28.3184 1.61437 30 3.6 30H18C19.0969 30 20.0812 29.4902 20.7394 28.6816C19.9856 27.8613 19.3612 26.9062 18.9 25.8633V26.25C18.9 26.7656 18.495 27.1875 18 27.1875H13.5V23.4375C13.5 21.8848 12.2906 20.625 10.8 20.625C9.30937 20.625 8.1 21.8848 8.1 23.4375V27.1875H3.6C3.105 27.1875 2.7 26.7656 2.7 26.25V3.75C2.7 3.23438 3.105 2.8125 3.6 2.8125ZM4.95 6.09375V8.90625C4.95 9.42188 5.355 9.84375 5.85 9.84375H8.55C9.045 9.84375 9.45 9.42188 9.45 8.90625V6.09375C9.45 5.57812 9.045 5.15625 8.55 5.15625H5.85C5.355 5.15625 4.95 5.57812 4.95 6.09375ZM13.05 5.15625C12.555 5.15625 12.15 5.57812 12.15 6.09375V8.90625C12.15 9.42188 12.555 9.84375 13.05 9.84375H15.75C16.245 9.84375 16.65 9.42188 16.65 8.90625V6.09375C16.65 5.57812 16.245 5.15625 15.75 5.15625H13.05ZM4.95 13.5938V16.4062C4.95 16.9219 5.355 17.3438 5.85 17.3438H8.55C9.045 17.3438 9.45 16.9219 9.45 16.4062V13.5938C9.45 13.0781 9.045 12.6562 8.55 12.6562H5.85C5.355 12.6562 4.95 13.0781 4.95 13.5938ZM13.05 12.6562C12.555 12.6562 12.15 13.0781 12.15 13.5938V16.4062C12.15 16.9219 12.555 17.3438 13.05 17.3438H15.75C16.245 17.3438 16.65 16.9219 16.65 16.4062V13.5938C16.65 13.0781 16.245 12.6562 15.75 12.6562H13.05ZM36 21.5625C36 19.3247 35.1466 17.1786 33.6276 15.5963C32.1085 14.0139 30.0483 13.125 27.9 13.125C25.7517 13.125 23.6915 14.0139 22.1724 15.5963C20.6534 17.1786 19.8 19.3247 19.8 21.5625C19.8 23.8003 20.6534 25.9464 22.1724 27.5287C23.6915 29.1111 25.7517 30 27.9 30C30.0483 30 32.1085 29.1111 33.6276 27.5287C35.1466 25.9464 36 23.8003 36 21.5625ZM31.6856 19.0254C32.0344 19.3887 32.0344 19.9863 31.6856 20.3496L27.6356 24.5684C27.2869 24.9316 26.7131 24.9316 26.3644 24.5684L24.1144 22.2246C23.7656 21.8613 23.7656 21.2637 24.1144 20.9004C24.4631 20.5371 25.0369 20.5371 25.3856 20.9004L27 22.582L30.4144 19.0254C30.7631 18.6621 31.3369 18.6621 31.6856 19.0254Z" fill="#127FF9"/></g><defs><clipPath id="clip0_760_11348"><rect width="36" height="30" fill="white"/></clipPath></defs></svg>''',
                        //   title: 'Empresa MEI',
                        //   subTitle: 'Agência de Marketing XPTO',
                        //   secondSubTitle: '00.215.556/0001-91',
                        //   padding: EdgeInsets.symmetric(
                        //     horizontal: Dimension.sm.width,
                        //     vertical: const Dimension(2.5).height,
                        //   ),
                        // ),
                        // Dimension.md.vertical,
                        // CustomTile(
                        //   action: () {
                        //     Nav.pushNamed(
                        //       BaseAppModuleRouting.companyAccountPage,
                        //       arguments: CompanyAccountPageArguments(isClient: widget.arguments.isClient)
                        //     );
                        //   },
                        //   svgItem:
                        //       '''<svg width="36" height="30" viewBox="0 0 36 30" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="building-circle-check-regular 1" clip-path="url(#clip0_760_11348)"><path id="Vector" d="M3.6 2.8125H18C18.495 2.8125 18.9 3.23438 18.9 3.75V17.2617C19.5244 15.8379 20.4581 14.5957 21.6 13.6113V3.75C21.6 1.68164 19.9856 0 18 0H3.6C1.61437 0 0 1.68164 0 3.75V26.25C0 28.3184 1.61437 30 3.6 30H18C19.0969 30 20.0812 29.4902 20.7394 28.6816C19.9856 27.8613 19.3612 26.9062 18.9 25.8633V26.25C18.9 26.7656 18.495 27.1875 18 27.1875H13.5V23.4375C13.5 21.8848 12.2906 20.625 10.8 20.625C9.30937 20.625 8.1 21.8848 8.1 23.4375V27.1875H3.6C3.105 27.1875 2.7 26.7656 2.7 26.25V3.75C2.7 3.23438 3.105 2.8125 3.6 2.8125ZM4.95 6.09375V8.90625C4.95 9.42188 5.355 9.84375 5.85 9.84375H8.55C9.045 9.84375 9.45 9.42188 9.45 8.90625V6.09375C9.45 5.57812 9.045 5.15625 8.55 5.15625H5.85C5.355 5.15625 4.95 5.57812 4.95 6.09375ZM13.05 5.15625C12.555 5.15625 12.15 5.57812 12.15 6.09375V8.90625C12.15 9.42188 12.555 9.84375 13.05 9.84375H15.75C16.245 9.84375 16.65 9.42188 16.65 8.90625V6.09375C16.65 5.57812 16.245 5.15625 15.75 5.15625H13.05ZM4.95 13.5938V16.4062C4.95 16.9219 5.355 17.3438 5.85 17.3438H8.55C9.045 17.3438 9.45 16.9219 9.45 16.4062V13.5938C9.45 13.0781 9.045 12.6562 8.55 12.6562H5.85C5.355 12.6562 4.95 13.0781 4.95 13.5938ZM13.05 12.6562C12.555 12.6562 12.15 13.0781 12.15 13.5938V16.4062C12.15 16.9219 12.555 17.3438 13.05 17.3438H15.75C16.245 17.3438 16.65 16.9219 16.65 16.4062V13.5938C16.65 13.0781 16.245 12.6562 15.75 12.6562H13.05ZM36 21.5625C36 19.3247 35.1466 17.1786 33.6276 15.5963C32.1085 14.0139 30.0483 13.125 27.9 13.125C25.7517 13.125 23.6915 14.0139 22.1724 15.5963C20.6534 17.1786 19.8 19.3247 19.8 21.5625C19.8 23.8003 20.6534 25.9464 22.1724 27.5287C23.6915 29.1111 25.7517 30 27.9 30C30.0483 30 32.1085 29.1111 33.6276 27.5287C35.1466 25.9464 36 23.8003 36 21.5625ZM31.6856 19.0254C32.0344 19.3887 32.0344 19.9863 31.6856 20.3496L27.6356 24.5684C27.2869 24.9316 26.7131 24.9316 26.3644 24.5684L24.1144 22.2246C23.7656 21.8613 23.7656 21.2637 24.1144 20.9004C24.4631 20.5371 25.0369 20.5371 25.3856 20.9004L27 22.582L30.4144 19.0254C30.7631 18.6621 31.3369 18.6621 31.6856 19.0254Z" fill="#127FF9"/></g><defs><clipPath id="clip0_760_11348"><rect width="36" height="30" fill="white"/></clipPath></defs></svg>''',
                        //   title: 'Empresa MEI',
                        //   subTitle: 'Agência de Marketing XPTO',
                        //   secondSubTitle: '00.215.556/0001-91',
                        //   padding: EdgeInsets.symmetric(
                        //     horizontal: Dimension.sm.width,
                        //     vertical: const Dimension(2.5).height,
                        //   ),
                        // ),
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
