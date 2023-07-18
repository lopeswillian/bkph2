import 'package:apph2/main.dart';
import 'package:apph2/theme/theme.dart';
import 'package:apph2/views/h2pay/h2pay_home_page.dart';
import 'package:apph2/views/h2pay/hiring/hiring_conditions_page.dart';
import 'package:apph2/views/h2pay/hiring/hiring_finish_page.dart';
import 'package:apph2/views/h2pay/verify/verify_finish_page.dart';
import 'package:apph2/views/h2pay/hiring/hiring_page.dart';
import 'package:apph2/views/h2pay/hiring/hiring_sms_page.dart';
import 'package:apph2/views/h2pay/payment/company/company_account_page.dart';
import 'package:apph2/views/h2pay/payment/company/company_detail_page.dart';
import 'package:apph2/views/h2pay/payment/company/company_doc_page.dart';
import 'package:apph2/views/h2pay/payment/company/company_page.dart';
import 'package:apph2/views/h2pay/payment/company/company_payment_page.dart';
import 'package:apph2/views/h2pay/payment/company/company_payment_third_page.dart';
import 'package:apph2/views/h2pay/payment/company/company_person_doc_page.dart';
import 'package:apph2/views/h2pay/payment/company/company_resource_page.dart';
import 'package:apph2/views/h2pay/payment/payment_account_page.dart';
import 'package:apph2/views/h2pay/payment/payment_finish_page.dart';
import 'package:apph2/views/h2pay/payment/payment_page.dart';
import 'package:apph2/views/h2pay/payment/payment_term_page.dart';
import 'package:apph2/views/h2pay/payment/person/person_payment_page.dart';
import 'package:apph2/views/h2pay/verify/verify_complement_page.dart';
import 'package:apph2/views/h2pay/verify/verify_document_page.dart';
import 'package:apph2/views/h2pay/verify/verify_page.dart';
import 'package:apph2/views/h2pay/verify/verify_sms_page.dart';
import 'package:apph2/views/h2pay/verify/verify_terms_page.dart';
import 'package:apph2/views/h2pay/verify/verify_validate_document_page.dart';
import 'package:apph2/views/product/list_product_page.dart';
import 'package:apph2/views/product/list_schedule_page.dart';
import 'package:apph2/views/product/schedule_page.dart';
import 'package:apph2/views/profile/profile_page.dart';
import 'package:apph2/views/recovery/recovery_finally_page.dart';
import 'package:apph2/views/recovery/recovery_page.dart';
import 'package:apph2/views/register/register_finally_page.dart';
import 'package:apph2/views/register/register_step1_page.dart';
import 'package:apph2/views/register/register_step2_page.dart';
import 'package:apph2/views/register/register_step3_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';

import 'infraestructure/infraestructure.dart';

/// HomeRoutes
abstract class BaseAppModuleRouting {
  /// module
  static const BasePath root = BasePath('/home');

  /// Home page h2pay
  static const BasePath h2pay = BasePath('/h2PayHomePage');

  /// Profile page
  static const BasePath profile = BasePath('/profile');

  /// register step1
  static const BasePath registerStep1 = BasePath('/register_step1');

  /// register step1
  static const BasePath registerStep2 = BasePath('/register_step2');

  /// register step1
  static const BasePath registerStep3 = BasePath('/register_step3');

  /// register step1
  static const BasePath registerStepFinally = BasePath('/register_finally');

  /// register step1
  static const BasePath recovery = BasePath('/recovery');

  /// register step1
  static const BasePath recoveryFinally = BasePath('/recovery_finally');

  /// list of product
  static const BasePath listProduct = BasePath('/list_product');

  /// list of schedules
  static const BasePath listSchedule = BasePath('/list_schedule');

  /// Schedule detail
  static const BasePath scheduleDetail = BasePath('/schedule_detail');

  /// VerifyPage
  static const BasePath verifyPage = BasePath('/verifyPage');

  /// VerifySmsPage
  static const BasePath verifySmsPage = BasePath('/verifySmsPage');

  /// VerifyTermsPage
  static const BasePath verifyTermsPage = BasePath('/verifyTermsPage');

  /// VerifyComplementPage
  static const BasePath verifyComplementPage =
      BasePath('/VerifyComplementPage');

  /// VerifyComplementPage
  static const BasePath verifyDocumentPage = BasePath('/VerifyDocumentPage');

  /// VerifyValidateDocumentPage
  static const BasePath verifyValidateDocumentPage =
      BasePath('/VerifyValidateDocumentPage');

  /// VerifyFinishPage
  static const BasePath verifyFinishPage = BasePath('/verifyFinishPage');

  /// VerifyValidateDocumentPage
  static const BasePath hiringSumaryPage = BasePath('/hiringSumaryPage');

  /// HiringConditionsPage
  static const BasePath hiringConditionsPage =
      BasePath('/hiringConditionsPage');

  /// HiringSmsPage
  static const BasePath hiringSmsPage = BasePath('/hiringSmsPage');

  /// HiringFinishPage
  static const BasePath hiringFinishPage = BasePath('/hiringFinishPage');

  /// PaymentPage
  static const BasePath paymentPage = BasePath('/paymentPage');

  /// Route to select type of account
  static const BasePath paymentAccountPage = BasePath('/paymentAccountPage');

  /// Route to person payment
  static const BasePath personPaymentPage = BasePath('/personPaymentPage');

  /// Route to finish payment
  static const BasePath paymentFinishPage = BasePath('/paymentFinishPage');

  /// Route to list companies of user
  static const BasePath companyPage = BasePath('/companyPage');

  /// Route select payment company
  static const BasePath companyPaymentPage = BasePath('/companyPaymentPage');

  /// Route to default term of payment company
  static const BasePath paymentTermPage = BasePath('/paymentTermPage');

  /// Route to first screen of my company
  static const BasePath companyDetailPage = BasePath('/companyDetailPage');

  /// Resource of third
  static const BasePath companyResourcePage = BasePath('/companyResourcePage');

  /// Resource of third account type
  static const BasePath companyAccountPage = BasePath('/companyAccountPage');

  /// Resource of third document of person
  static const BasePath companyPersonDocPage =
      BasePath('/companyPersonDocPage');

  /// Resource of third document of person
  static const BasePath companyDocPage = BasePath('/companyDocPage');

  /// Resource of third payment page
  static const BasePath companyPaymentThirdPage =
      BasePath('/companyPaymentThirdPage');

  ///
  /// Module routes definitions
  ///
  static List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (_, __) => Container(
            color: Colors.white,
            child: Center(
              child: SvgPicture.asset(
                'assets/images/login_image.svg',
                width: const Dimension(65).width, //520
                height: const Dimension(36.75).height, //294,
              ),
            ),
          ),
        ),
        ChildRoute(
          root.path,
          transition: TransitionType.noTransition,
          child: (_, __) => const MyHomePage(
            title: 'HomePage',
          ),
        ),
        ChildRoute(
          profile.path,
          child: (_, __) => const ProfilePage(),
        ),
        ChildRoute(
          h2pay.path,
          child: (_, __) => const H2PayHomePage(),
        ),
        ChildRoute(
          registerStep1.path,
          child: (_, __) => const RegisterStep1(
            title: 'Cadastro',
          ),
        ),
        ChildRoute(
          registerStep2.path,
          child: (_, __) => const RegisterStep2(
            title: 'Cadastro',
          ),
        ),
        ChildRoute(
          registerStep3.path,
          child: (_, args) => RegisterStep3(
            params: args.data,
          ),
        ),
        ChildRoute(
          registerStepFinally.path,
          child: (_, __) => const FinallyRegister(),
        ),
        ChildRoute(
          recovery.path,
          child: (_, __) => const RecoveryPage(
            title: "Recuperar Senha",
          ),
        ),
        ChildRoute(
          recoveryFinally.path,
          child: (_, __) => const RecoveryFinallyPage(),
        ),
        ChildRoute(
          listProduct.path,
          child: (_, __) => const ListProductPage(),
        ),
        ChildRoute(
          listSchedule.path,
          child: (_, __) => const ListSchedulePage(),
        ),
        ChildRoute(
          scheduleDetail.path,
          child: (_, __) => const SchedulePage(title: "Agenda"),
        ),
        ChildRoute(
          verifyPage.path,
          child: (_, __) => const VerifyPage(title: "H2 Pay"),
        ),
        ChildRoute(
          verifySmsPage.path,
          child: (_, __) => const VerifySmsPage(title: "H2 Pay"),
        ),
        ChildRoute(
          verifyTermsPage.path,
          child: (_, __) => const VerifyTermsPage(title: "H2 Pay"),
        ),
        ChildRoute(
          verifyComplementPage.path,
          child: (_, __) => const VerifyComplementPage(),
        ),
        ChildRoute(
          verifyDocumentPage.path,
          child: (_, __) => const VerifyDocumentPage(),
        ),
        ChildRoute(
          verifyValidateDocumentPage.path,
          child: (_, __) => const VerifyValidateDocumentPage(),
        ),
        ChildRoute(
          verifyFinishPage.path,
          child: (_, __) => const VerifyFinishPage(),
        ),
        ChildRoute(
          hiringSumaryPage.path,
          child: (_, __) => const HiringPage(),
        ),
        ChildRoute(
          hiringConditionsPage.path,
          child: (_, args) => HiringConditionsPage(term: args.data),
        ),
        ChildRoute(
          hiringSmsPage.path,
          child: (_, __) => const HiringSmsPage(),
        ),
        ChildRoute(
          hiringFinishPage.path,
          child: (_, __) => const HiringFinishPage(),
        ),
        ChildRoute(
          paymentPage.path,
          child: (_, __) => const PaymentPage(),
        ),
        ChildRoute(
          paymentAccountPage.path,
          child: (_, __) => const PaymentAccountPage(),
        ),
        ChildRoute(
          personPaymentPage.path,
          child: (_, __) => const PersonPaymentPage(),
        ),
        ChildRoute(
          paymentFinishPage.path,
          child: (_, __) => const PaymentFinishPage(),
        ),
        ChildRoute(
          companyPage.path,
          child: (_, __) => const CompanyPage(),
        ),
        ChildRoute(
          companyPaymentPage.path,
          child: (_, __) => const CompanyPaymentPage(),
        ),
        ChildRoute(
          paymentTermPage.path,
          child: (_, __) => const PaymentTermPage(),
        ),
        ChildRoute(
          companyDetailPage.path,
          child: (_, __) => const CompanyDetailPage(),
        ),
        ChildRoute(
          companyResourcePage.path,
          child: (_, args) => CompanyResourcePage(arguments: args.data),
        ),
        ChildRoute(
          companyAccountPage.path,
          child: (_, args) => CompanyAccountPage(arguments: args.data),
        ),
        ChildRoute(
          companyPersonDocPage.path,
          child: (_, args) => CompanyPersonDocPage(
            arguments: args.data,
          ),
        ),
        ChildRoute(
          companyDocPage.path,
          child: (_, args) => CompanyDocPage(
            arguments: args.data,
          ),
        ),
        ChildRoute(
          companyPaymentThirdPage.path,
          child: (_, args) => CompanyPaymentThirdPage(arguments: args.data),
        ),
      ];
}
