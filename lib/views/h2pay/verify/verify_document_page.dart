import 'package:apph2/base_app_module_routing.dart';
import 'package:apph2/domain/entities/document_side_type.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/theme/theme.dart';
import 'package:apph2/views/h2pay/verify/verify_state.dart';
import 'package:apph2/views/h2pay/verify/verify_viewmodel.dart';
import 'package:apph2/views/h2pay/verify/widgets/widgets.dart';
import 'package:apph2/views/register/widgets/next_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart' hide View;

class VerifyDocumentPage extends StatefulWidget {
  const VerifyDocumentPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _VerifyDocumentPageState createState() => _VerifyDocumentPageState();
}

class _VerifyDocumentPageState extends State<VerifyDocumentPage>
    with View<VerifyViewModel> {
  bool accept = false;
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<VerifyViewModel, VerifyState>(
      viewModel: viewModel,
      buildWhen: (previous, current) =>
          previous.typeDocument != current.typeDocument,
      builder: (context, state) {
        return _buildPage(context, state);
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
                                  '2.',
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
                                      'Captura do documento',
                                      style: TextStyle(
                                        fontSize: 19.fontSize,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Dimension.xxs.vertical,
                                    Text(
                                      'Tenha em mãos o seu RG ou CNH',
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
                              action: () {
                                viewModel.setDocumentType(DocumentSideType.cnh);
                              },
                              active:
                                  state.typeDocument == DocumentSideType.cnh,
                              svgItem:
                                  '''<svg width="36" height="29" viewBox="0 0 36 29" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="car-side-regular 1"><path id="Vector" d="M9.63562 4.53125H12.6V5.4375V9.96875V10.875H5.59125L7.54313 5.95293C7.89188 5.09766 8.71875 4.53125 9.63562 4.53125ZM15.3 10.875V9.96875V5.4375V4.53125H19.8675C20.5538 4.53125 21.195 4.84277 21.6225 5.38086L25.9875 10.875H15.3ZM29.475 10.909L23.7375 3.68164C22.7981 2.49785 21.375 1.8125 19.8731 1.8125H9.63562C7.61062 1.8125 5.79375 3.05293 5.04 4.94473L2.6325 11.0053C1.11375 11.4301 0 12.8348 0 14.5V20.8438C0 21.8463 0.804375 22.6562 1.8 22.6562H3.67313C4.10063 25.2277 6.3225 27.1875 9 27.1875C11.6775 27.1875 13.8994 25.2277 14.3269 22.6562H21.6731C22.1006 25.2277 24.3225 27.1875 27 27.1875C29.6775 27.1875 31.8994 25.2277 32.3269 22.6562H34.2C35.1956 22.6562 36 21.8463 36 20.8438V18.125C36 14.3471 33.1369 11.2488 29.475 10.909ZM24.4519 20.8438C24.5665 20.5025 24.7472 20.1877 24.9837 19.9174C25.2202 19.6472 25.5076 19.4269 25.8293 19.2695C26.151 19.112 26.5006 19.0205 26.8577 19.0002C27.2149 18.98 27.5724 19.0314 27.9097 19.1514C28.2469 19.2715 28.5571 19.4579 28.8222 19.6997C29.0873 19.9415 29.3021 20.2339 29.454 20.56C29.6059 20.8861 29.692 21.2393 29.7072 21.5992C29.7223 21.959 29.6664 22.3184 29.5425 22.6562C29.4279 22.9975 29.2471 23.3123 29.0107 23.5826C28.7742 23.8528 28.4868 24.0731 28.1651 24.2305C27.8434 24.388 27.4938 24.4795 27.1366 24.4998C26.7795 24.52 26.4219 24.4686 26.0847 24.3486C25.7475 24.2285 25.4373 24.0421 25.1722 23.8003C24.9071 23.5585 24.6923 23.2661 24.5404 22.94C24.3885 22.6139 24.3024 22.2607 24.2872 21.9008C24.272 21.541 24.328 21.1816 24.4519 20.8438ZM32.0906 19.9375C31.3481 17.8248 29.3512 16.3125 27 16.3125C24.6488 16.3125 22.6462 17.8248 21.9094 19.9375H14.0906C13.3481 17.8248 11.3512 16.3125 9 16.3125C6.64875 16.3125 4.64625 17.8248 3.90937 19.9375H2.7V14.5C2.7 14.0016 3.105 13.5938 3.6 13.5938H28.8C31.2862 13.5938 33.3 15.6215 33.3 18.125V19.9375H32.0906ZM9 19.0312C9.71608 19.0312 10.4028 19.3177 10.9092 19.8276C11.4155 20.3374 11.7 21.0289 11.7 21.75C11.7 22.4711 11.4155 23.1626 10.9092 23.6724C10.4028 24.1823 9.71608 24.4688 9 24.4688C8.28392 24.4688 7.59716 24.1823 7.09081 23.6724C6.58446 23.1626 6.3 22.4711 6.3 21.75C6.3 21.0289 6.58446 20.3374 7.09081 19.8276C7.59716 19.3177 8.28392 19.0312 9 19.0312Z" fill="#127FF9"/></g></svg>''',
                              title: 'CNH',
                              subTitle: 'Carteira Nacional de Habilitação',
                            ),
                            Dimension.md.vertical,
                            VerifyItemTile(
                              action: () {
                                viewModel.setDocumentType(DocumentSideType.rg);
                              },
                              active: state.typeDocument == DocumentSideType.rg,
                              svgItem:
                                  '''<svg width="32" height="29" viewBox="0 0 32 29" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="id-card-regular 1"><path id="Vector" d="M29.3333 9.0625V23.5625C29.3333 24.0609 28.9333 24.4688 28.4444 24.4688H17.7778C17.7778 21.9652 15.7889 19.9375 13.3333 19.9375H9.77778C7.32222 19.9375 5.33333 21.9652 5.33333 24.4688H3.55556C3.06667 24.4688 2.66667 24.0609 2.66667 23.5625V9.0625H29.3333ZM3.55556 1.8125C1.59444 1.8125 0 3.43809 0 5.4375V23.5625C0 25.5619 1.59444 27.1875 3.55556 27.1875H28.4444C30.4056 27.1875 32 25.5619 32 23.5625V5.4375C32 3.43809 30.4056 1.8125 28.4444 1.8125H3.55556ZM15.1111 14.5C15.1111 13.5386 14.7365 12.6166 14.0697 11.9367C13.4029 11.2569 12.4985 10.875 11.5556 10.875C10.6126 10.875 9.70819 11.2569 9.0414 11.9367C8.3746 12.6166 8 13.5386 8 14.5C8 15.4614 8.3746 16.3834 9.0414 17.0633C9.70819 17.7431 10.6126 18.125 11.5556 18.125C12.4985 18.125 13.4029 17.7431 14.0697 17.0633C14.7365 16.3834 15.1111 15.4614 15.1111 14.5ZM20.8889 11.7812C20.15 11.7812 19.5556 12.3873 19.5556 13.1406C19.5556 13.8939 20.15 14.5 20.8889 14.5H25.3333C26.0722 14.5 26.6667 13.8939 26.6667 13.1406C26.6667 12.3873 26.0722 11.7812 25.3333 11.7812H20.8889ZM20.8889 17.2188C20.15 17.2188 19.5556 17.8248 19.5556 18.5781C19.5556 19.3314 20.15 19.9375 20.8889 19.9375H25.3333C26.0722 19.9375 26.6667 19.3314 26.6667 18.5781C26.6667 17.8248 26.0722 17.2188 25.3333 17.2188H20.8889Z" fill="#127FF9"/></g></svg>''',
                              title: 'RG',
                              subTitle: 'Documento de identidade',
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: IntrinsicHeight(
                  child: Container(
                    color: Colors.white,
                    child: NextWidget(
                      topWidget: Row(
                        children: [
                          Checkbox(
                            value: accept,
                            onChanged: (value) {
                              setState(() {
                                accept = value!;
                              });
                            },
                          ),
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                      text:
                                          'Sim, quero verificar minha identidade.\n',
                                      style: context.text.caption),
                                  TextSpan(
                                      text: 'Eu li e aceito os ',
                                      style: context.text.caption),
                                  TextSpan(
                                    text:
                                        'termos de uso e políticas de privacidade',
                                    style: context.text.caption.copyWith(
                                        decoration: TextDecoration.underline),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Nav.pop();
                                      },
                                  ),
                                  TextSpan(
                                      text: '.', style: context.text.caption),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      title: 'Avançar',
                      enabled: accept,
                      action: () {
                        Nav.pushNamed(
                            BaseAppModuleRouting.verifyValidateDocumentPage);
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
