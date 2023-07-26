import 'package:apph2/base_app_module_routing.dart';
import 'package:apph2/domain/entities/document_side_type.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/theme/theme.dart';
import 'package:apph2/views/h2pay/verify/verify_state.dart';
import 'package:apph2/views/h2pay/verify/verify_viewmodel.dart';
import 'package:apph2/views/h2pay/verify/widgets/widgets.dart';
import 'package:apph2/views/login/login_viewmodel.dart';
import 'package:document_detector/document_detector.dart';
import 'package:document_detector/document_detector_step.dart';
import 'package:document_detector/document_type.dart';
import 'package:document_detector/result/document_detector_failure.dart';
import 'package:document_detector/result/document_detector_result.dart';
import 'package:document_detector/result/document_detector_success.dart';
import 'package:flutter/material.dart' hide View;
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:passive_face_liveness/passive_face_liveness.dart';
import 'package:passive_face_liveness/result/passive_face_liveness_failure.dart';
import 'package:passive_face_liveness/result/passive_face_liveness_result.dart';
import 'package:passive_face_liveness/result/passive_face_liveness_success.dart';

class VerifyValidateDocumentPage extends StatefulWidget {
  const VerifyValidateDocumentPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _VerifyValidateDocumentPageState createState() =>
      _VerifyValidateDocumentPageState();
}

class _VerifyValidateDocumentPageState extends State<VerifyValidateDocumentPage>
    with View<VerifyViewModel> {
  late LoginViewModel loginViewModel;
  @override
  void initState() {
    super.initState();
    loginViewModel = DM.get<LoginViewModel>();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<VerifyViewModel, VerifyState>(
      viewModel: viewModel,
      buildWhen: (previous, current) =>
          previous.typeDocument != current.typeDocument,
      builder: (context, state) {
        return state.loading
            ? const Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              )
            : _buildPage(context, state);
      },
    );
  }

  Widget _buildPage(BuildContext context, VerifyState state) {
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
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '3.',
                                  style: TextStyle(
                                    fontSize: 19.fontSize,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Dimension.xxs.horizontal,
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Validar documentação',
                                      style: TextStyle(
                                        fontSize: 19.fontSize,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Dimension.xxs.vertical,
                                    Text(
                                      'Escolha uma das opções de validação',
                                      style: context.text.caption,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Dimension.md.vertical,
                            const Divider(),
                            Dimension.md.vertical,
                            VerifyItemTile(
                              action: getSelfie,
                              svgItem:
                                  '''<svg width="29" height="29" viewBox="0 0 29 29" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="camera-retro-regular 1"><path id="Vector" d="M10.875 6.34375H3.625C3.12656 6.34375 2.71875 6.75156 2.71875 7.25V10.875H8.8416C10.1727 9.21543 12.2117 8.15625 14.5 8.15625C16.7883 8.15625 18.833 9.21543 20.1584 10.875H26.2812V5.4375C26.2812 4.93906 25.8734 4.53125 25.375 4.53125H15.3553C15.2137 4.53125 15.0777 4.56523 14.9475 4.62754L12.0871 6.05488C11.7076 6.2418 11.2941 6.34375 10.8693 6.34375H10.875ZM2.71875 13.5938V23.5625C2.71875 24.0609 3.12656 24.4688 3.625 24.4688H25.375C25.8734 24.4688 26.2812 24.0609 26.2812 23.5625V13.5938H21.5234C21.6707 14.1715 21.75 14.7832 21.75 15.4062C21.75 19.4107 18.5045 22.6562 14.5 22.6562C10.4955 22.6562 7.25 19.4107 7.25 15.4062C7.25 14.7832 7.3293 14.1715 7.47656 13.5938H2.71875ZM0 23.5625V7.25C0 5.25059 1.62559 3.625 3.625 3.625V2.71875C3.625 2.22031 4.03281 1.8125 4.53125 1.8125H8.15625C8.65469 1.8125 9.0625 2.22031 9.0625 2.71875V3.625H10.875L13.7354 2.19766C14.2395 1.94844 14.7945 1.8125 15.3553 1.8125H25.375C27.3744 1.8125 29 3.43809 29 5.4375V23.5625C29 25.5619 27.3744 27.1875 25.375 27.1875H3.625C1.62559 27.1875 0 25.5619 0 23.5625ZM19.0312 15.4062C19.0312 14.2045 18.5539 13.0519 17.7041 12.2022C16.8543 11.3524 15.7018 10.875 14.5 10.875C13.2982 10.875 12.1457 11.3524 11.2959 12.2022C10.4461 13.0519 9.96875 14.2045 9.96875 15.4062C9.96875 16.608 10.4461 17.7606 11.2959 18.6103C12.1457 19.4601 13.2982 19.9375 14.5 19.9375C15.7018 19.9375 16.8543 19.4601 17.7041 18.6103C18.5539 17.7606 19.0312 16.608 19.0312 15.4062Z" fill="#127FF9"/></g></svg>''',
                              title: 'Tirar Foto',
                              subTitle: 'Tire uma foto do seu documento físico',
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

  getSelfie() async {
    final mobileToken = JWT(
      {
        'iss': '64b5cf813a81970008d3b533',
        'peopleId': loginViewModel.state.user!.cpf,
      },
      audience: null,
    );
    
    final token = mobileToken.sign(
      SecretKey(
        'XGAPou0QsOO6VXKuXKRucCHPAwM0TXLjetUThaV9OsVIIIzL9pn18nH0SnfttO3hphY7ganvdagbEikNXLg',
      ),
    );

    PassiveFaceLiveness passiveFaceLiveness = PassiveFaceLiveness(
      mobileToken: token,
      
    );

    passiveFaceLiveness.setPeopleId(loginViewModel.state.user!.cpf);

    PassiveFaceLivenessResult passiveFaceLivenessResult =
        await passiveFaceLiveness.start();

    if (passiveFaceLivenessResult is PassiveFaceLivenessSuccess) {
      await viewModel.setCafFaceId(passiveFaceLivenessResult.signedResponse!);
      getDocument(token);
    } else if (passiveFaceLivenessResult is PassiveFaceLivenessFailure) {
      const snackBar = SnackBar(
        content: Text('Falha capturar selfie. Tente novamente!'),
        duration: Duration(seconds: 2),
      );
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      const snackBar = SnackBar(
        content: Text('Verificação interrompida, tente novamente.'),
        duration: Duration(seconds: 2),
      );
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  getDocument(String token) async {
    DocumentDetector documentDetector = DocumentDetector(
      mobileToken: token,
    );

    documentDetector.autoDetection = true;
    documentDetector.setPeopleId(loginViewModel.state.user!.cpf);
    documentDetector.setDocumentFlow(
      viewModel.state.typeDocument == DocumentSideType.cnh
          ? [
              DocumentDetectorStep(document: DocumentType.CNH_FRONT),
              DocumentDetectorStep(document: DocumentType.CNH_BACK)
            ]
          : [
              DocumentDetectorStep(document: DocumentType.RG_FRONT),
              DocumentDetectorStep(document: DocumentType.RG_BACK)
            ],
    );

    DocumentDetectorResult documentDetectorResult =
        await documentDetector.start();

    if (documentDetectorResult is DocumentDetectorSuccess) {
      if (documentDetectorResult.trackingId != null) {
        viewModel.setCafId(documentDetectorResult.trackingId!);
        final userCreate = await viewModel.createUserH2Pay();
        if (userCreate) {
          Nav.pushNamed(BaseAppModuleRouting.verifyFinishPage);
        } else {
          const snackBar = SnackBar(
            content: Text('Falha ao criar conta. Tente novamente mais tarde!'),
            duration: Duration(seconds: 2),
          );
          // ignore: use_build_context_synchronously
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      }
    } else if (documentDetectorResult is DocumentDetectorFailure) {
      const snackBar = SnackBar(
        content: Text('Falha ao carregar documento. Tente novamente!'),
        duration: Duration(seconds: 2),
      );
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      const snackBar = SnackBar(
        content: Text('Verificação interrompida, tente novamente.'),
        duration: Duration(seconds: 2),
      );
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
