import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/theme/theme.dart';
import 'package:apph2/views/h2pay/verify/widgets/widgets.dart';
import 'package:apph2/views/register/widgets/next_widget.dart';
import 'package:flutter/material.dart';

class VerifyValidateDocumentPage extends StatefulWidget {
  const VerifyValidateDocumentPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _VerifyValidateDocumentPageState createState() =>
      _VerifyValidateDocumentPageState();
}

class _VerifyValidateDocumentPageState
    extends State<VerifyValidateDocumentPage> {
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
                            const VerifyItemTile(
                              active: true,
                              svgItem:
                                  '''<svg width="25" height="29" viewBox="0 0 25 29" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="paperclip-regular 1" clip-path="url(#clip0_720_6974)"><path id="Vector" d="M20.9264 4.49218C19.4755 3.07031 17.1262 3.07031 15.6753 4.49218L4.96659 14.9922C2.52797 17.3766 2.52797 21.2484 4.96659 23.6328C7.40521 26.0172 11.3505 26.0172 13.7891 23.6328L22.2657 15.3203C22.7902 14.8062 23.6385 14.8062 24.1574 15.3203C24.6764 15.8344 24.682 16.6656 24.1574 17.1742L15.6809 25.4922C12.1987 28.9047 6.55699 28.9047 3.07485 25.4922C-0.407295 22.0797 -0.412875 16.5453 3.06927 13.1328L13.7836 2.63281C16.278 0.188275 20.3237 0.188275 22.8237 2.63281C25.3237 5.07734 25.3182 9.04218 22.8237 11.4867L12.567 21.5383C10.8036 23.2664 7.90186 23.1078 6.34494 21.1992C5.01681 19.5695 5.14516 17.218 6.65186 15.7414L15.1228 7.44531C15.6474 6.93124 16.4956 6.93124 17.0146 7.44531C17.5336 7.95937 17.5391 8.79062 17.0146 9.29921L8.54918 17.6008C8.00788 18.1312 7.95766 18.9734 8.43757 19.5586C8.99561 20.2422 10.0391 20.3023 10.6697 19.6789L20.9264 9.63281C22.3773 8.21093 22.3773 5.90859 20.9264 4.48671V4.49218Z" fill="#127FF9"/></g><defs><clipPath id="clip0_720_6974"><rect width="25" height="28" fill="white" transform="translate(0 0.5)"/></clipPath></defs></svg>''',
                              title: 'Anexar foto ou PDF',
                              subTitle:
                                  'Carregue fotos ou PDF de seu documento',
                            ),
                            Dimension.md.vertical,
                            const VerifyItemTile(
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
              Align(
                alignment: Alignment.bottomCenter,
                child: IntrinsicHeight(
                  child: Container(
                    color: Colors.white,
                    child: NextWidget(
                      title: 'Avançar',
                      action: () {
                        Nav.popUntil((p0) => true);
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
