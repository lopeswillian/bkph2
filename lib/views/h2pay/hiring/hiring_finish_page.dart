import 'package:apph2/base_app_module_routing.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/infraestructure/num_extension.dart';
import 'package:apph2/theme/app_theme_factory.dart';
import 'package:apph2/theme/theme.dart';
import 'package:apph2/views/h2pay/h2pay_viewmodel.dart';
import 'package:apph2/views/register/widgets/next_widget.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HiringFinishPageParams {
  final double valuePrincipal;
  final String paymentDescription;
  HiringFinishPageParams({
    required this.valuePrincipal,
    required this.paymentDescription,
  });
}

class HiringFinishPage extends StatefulWidget {
  final HiringFinishPageParams params;
  const HiringFinishPage({
    Key? key,
    required this.params,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HiringFinishPageState createState() => _HiringFinishPageState();
}

class _HiringFinishPageState extends State<HiringFinishPage> {
  late H2PayViewModel _h2payViewModel;

  @override
  void initState() {
    super.initState();
    _h2payViewModel = DM.get<H2PayViewModel>();
    _h2payViewModel.getAnticipation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimension.xl.width),
            child: LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: constraints.maxHeight,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Dimension(10.5).vertical,
                        SvgPicture.string(
                            '''<svg width="146" height="146" viewBox="0 0 146 146" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="circle-check-regular 1" clip-path="url(#clip0_740_9249)"><path id="Vector" d="M73 13.6875C88.7307 13.6875 103.817 19.9365 114.94 31.0597C126.064 42.183 132.312 57.2693 132.312 73C132.312 88.7307 126.064 103.817 114.94 114.94C103.817 126.064 88.7307 132.312 73 132.312C57.2693 132.312 42.183 126.064 31.0597 114.94C19.9365 103.817 13.6875 88.7307 13.6875 73C13.6875 57.2693 19.9365 42.183 31.0597 31.0597C42.183 19.9365 57.2693 13.6875 73 13.6875ZM73 146C92.3608 146 110.929 138.309 124.619 124.619C138.309 110.929 146 92.3608 146 73C146 53.6392 138.309 35.0714 124.619 21.3812C110.929 7.69105 92.3608 0 73 0C53.6392 0 35.0714 7.69105 21.3812 21.3812C7.69105 35.0714 0 53.6392 0 73C0 92.3608 7.69105 110.929 21.3812 124.619C35.0714 138.309 53.6392 146 73 146ZM105.223 59.5977C107.903 56.9172 107.903 52.5828 105.223 49.9309C102.542 47.2789 98.2078 47.2504 95.5559 49.9309L63.9035 81.5832L50.5012 68.1809C47.8207 65.5004 43.4863 65.5004 40.8344 68.1809C38.1824 70.8613 38.1539 75.1957 40.8344 77.8477L59.0844 96.0977C61.7648 98.7781 66.0992 98.7781 68.7512 96.0977L105.223 59.5977Z" fill="#127FF9"/></g><defs><clipPath id="clip0_740_9249"><rect width="146" height="146" fill="white"/></clipPath></defs></svg>'''),
                        const Dimension(9).vertical,
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: TextStyle(fontSize: 18.fontSize),
                            children: <TextSpan>[
                              const TextSpan(
                                text: 'Tudo certo!',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: AppThemeBase.colorPrimaryDarkest),
                              ),
                              TextSpan(
                                text:
                                    ' Sua antecipação foi concedida. Bom entretenimento.',
                                style: TextStyle(
                                  color:
                                      context.colorScheme.colorPrimaryDarkest,
                                ),
                              )
                            ],
                          ),
                        ),
                        const Dimension(7.5).vertical,
                        DottedBorder(
                            borderType: BorderType.RRect,
                            color: AppThemeBase.colorSecondary03,
                            radius: const Radius.circular(10),
                            padding: EdgeInsets.symmetric(
                              horizontal: const Dimension(1.25).width,
                              vertical: Dimension.md.height,
                            ),
                            child: Column(
                              children: [
                                Text(
                                  'RESUMO',
                                  style: context.text.h3Bold.copyWith(
                                    color: AppThemeBase.colorPrimaryLight,
                                  ),
                                ),
                                Dimension.sm.vertical,
                                Text(
                                  'Condições da antecipação:',
                                  style: context.text.body1Bold,
                                ),
                                Dimension.sm.vertical,
                                Text(
                                  '${widget.params.valuePrincipal.toCurrency()}, a serem pagos em até ${widget.params.paymentDescription}, utilizando recursos próprios.',
                                  textAlign: TextAlign.center,
                                  style: context.text.body1,
                                ),
                              ],
                            ))
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
                  title: 'Finalizar',
                  action: () {
                    Nav.pushNamedAndRemoveUntil(
                      BaseAppModuleRouting.root,
                      (p0) => false,
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
