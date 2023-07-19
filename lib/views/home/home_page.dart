import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/theme/theme.dart';
import 'package:apph2/views/home/widgets/custom_card.dart';
import 'package:apph2/views/login/login_state.dart';
import 'package:apph2/views/login/login_viewmodel.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:flutter/material.dart' hide View;
import '../../theme/widgets/h2accordion.dart';

class H2HomePage extends StatefulWidget {
  const H2HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _H2HomePageState createState() => _H2HomePageState();
}

class _H2HomePageState extends State<H2HomePage> {
  late final LoginViewModel viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = DM.get<LoginViewModel>();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel, LoginState>(
      viewModel: viewModel,
      builder: _buildPage,
    );
  }

  Widget _buildPage(BuildContext context, LoginState state) {
    if (state.user == null) {
      return Container();
    }
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Dimension.sm.width,
      ),
      child: Column(
        children: [
          Dimension.xl.vertical,
          H2Accordion(
            title: 'QR Code H2',
            icon:
                '''<svg width="16" height="17" viewBox="0 0 16 17" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M5.14286 2.1875V5.5625H1.71429V2.1875H5.14286ZM1.71429 0.5C0.767857 0.5 0 1.25586 0 2.1875V5.5625C0 6.49414 0.767857 7.25 1.71429 7.25H5.14286C6.08929 7.25 6.85714 6.49414 6.85714 5.5625V2.1875C6.85714 1.25586 6.08929 0.5 5.14286 0.5H1.71429ZM5.14286 11.1875V14.5625H1.71429V11.1875H5.14286ZM1.71429 9.5C0.767857 9.5 0 10.2559 0 11.1875V14.5625C0 15.4941 0.767857 16.25 1.71429 16.25H5.14286C6.08929 16.25 6.85714 15.4941 6.85714 14.5625V11.1875C6.85714 10.2559 6.08929 9.5 5.14286 9.5H1.71429ZM10.8571 2.1875H14.2857V5.5625H10.8571V2.1875ZM9.14286 2.1875V5.5625C9.14286 6.49414 9.91072 7.25 10.8571 7.25H14.2857C15.2321 7.25 16 6.49414 16 5.5625V2.1875C16 1.25586 15.2321 0.5 14.2857 0.5H10.8571C9.91072 0.5 9.14286 1.25586 9.14286 2.1875ZM2.57143 3.59375V4.15625C2.57143 4.46563 2.82857 4.71875 3.14286 4.71875H3.71429C4.02857 4.71875 4.28571 4.46563 4.28571 4.15625V3.59375C4.28571 3.28437 4.02857 3.03125 3.71429 3.03125H3.14286C2.82857 3.03125 2.57143 3.28437 2.57143 3.59375ZM3.14286 12.0312C2.82857 12.0312 2.57143 12.2844 2.57143 12.5938V13.1562C2.57143 13.4656 2.82857 13.7188 3.14286 13.7188H3.71429C4.02857 13.7188 4.28571 13.4656 4.28571 13.1562V12.5938C4.28571 12.2844 4.02857 12.0312 3.71429 12.0312H3.14286ZM11.7143 3.59375V4.15625C11.7143 4.46563 11.9714 4.71875 12.2857 4.71875H12.8571C13.1714 4.71875 13.4286 4.46563 13.4286 4.15625V3.59375C13.4286 3.28437 13.1714 3.03125 12.8571 3.03125H12.2857C11.9714 3.03125 11.7143 3.28437 11.7143 3.59375ZM9.14286 10.0625V15.6875C9.14286 15.9969 9.4 16.25 9.71429 16.25H10.8571C11.1714 16.25 11.4286 15.9969 11.4286 15.6875V13.4375C11.4286 13.1281 11.6857 12.875 12 12.875C12.3143 12.875 12.5714 13.1281 12.5714 13.4375C12.5714 13.7469 12.8286 14 13.1429 14H15.4286C15.7429 14 16 13.7469 16 13.4375V10.0625C16 9.75313 15.7429 9.5 15.4286 9.5C15.1143 9.5 14.8571 9.75313 14.8571 10.0625C14.8571 10.3719 14.6 10.625 14.2857 10.625H13.1429C12.8286 10.625 12.5714 10.3719 12.5714 10.0625C12.5714 9.75313 12.3143 9.5 12 9.5H9.71429C9.4 9.5 9.14286 9.75313 9.14286 10.0625ZM13.1429 15.125C12.9913 15.125 12.846 15.1843 12.7388 15.2898C12.6316 15.3952 12.5714 15.5383 12.5714 15.6875C12.5714 15.8367 12.6316 15.9798 12.7388 16.0852C12.846 16.1907 12.9913 16.25 13.1429 16.25C13.2944 16.25 13.4398 16.1907 13.5469 16.0852C13.6541 15.9798 13.7143 15.8367 13.7143 15.6875C13.7143 15.5383 13.6541 15.3952 13.5469 15.2898C13.4398 15.1843 13.2944 15.125 13.1429 15.125ZM15.4286 15.125C15.277 15.125 15.1317 15.1843 15.0245 15.2898C14.9173 15.3952 14.8571 15.5383 14.8571 15.6875C14.8571 15.8367 14.9173 15.9798 15.0245 16.0852C15.1317 16.1907 15.277 16.25 15.4286 16.25C15.5801 16.25 15.7255 16.1907 15.8326 16.0852C15.9398 15.9798 16 15.8367 16 15.6875C16 15.5383 15.9398 15.3952 15.8326 15.2898C15.7255 15.1843 15.5801 15.125 15.4286 15.125Z" fill="#CECECE"/></svg>''',
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: QrImageView(
                    data: state.user!.id.toString(),
                    version: QrVersions.min,
                    size: const Dimension(33.875).width,
                  ),
                )
              ],
            ),
          ),
          Dimension.md.vertical,
          H2Accordion(
            title: 'Cartão Virtual H2',
            icon:
                '''<svg width="20" height="17" viewBox="0 0 20 17" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M2.22222 1.64286C1.60764 1.64286 1.11111 2.15357 1.11111 2.78571V3.92857H18.8889V2.78571C18.8889 2.15357 18.3924 1.64286 17.7778 1.64286H2.22222ZM1.11111 5.07143V7.35714H18.8889V5.07143H1.11111ZM1.11111 8.5V14.2143C1.11111 14.8464 1.60764 15.3571 2.22222 15.3571H17.7778C18.3924 15.3571 18.8889 14.8464 18.8889 14.2143V8.5H1.11111ZM0 2.78571C0 1.525 0.996528 0.5 2.22222 0.5H17.7778C19.0035 0.5 20 1.525 20 2.78571V14.2143C20 15.475 19.0035 16.5 17.7778 16.5H2.22222C0.996528 16.5 0 15.475 0 14.2143V2.78571ZM3.33333 12.5C3.33333 12.1857 3.58333 11.9286 3.88889 11.9286H6.11111C6.41667 11.9286 6.66667 12.1857 6.66667 12.5C6.66667 12.8143 6.41667 13.0714 6.11111 13.0714H3.88889C3.58333 13.0714 3.33333 12.8143 3.33333 12.5ZM7.77778 12.5C7.77778 12.1857 8.02778 11.9286 8.33333 11.9286H12.7778C13.0833 11.9286 13.3333 12.1857 13.3333 12.5C13.3333 12.8143 13.0833 13.0714 12.7778 13.0714H8.33333C8.02778 13.0714 7.77778 12.8143 7.77778 12.5Z" fill="#CECECE"/></svg>''',
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: CustomCard(
                    name: state.user!.name,
                    number: state.user!.id.toString(),
                    title: state.user!.vipOnline,
                    type: state.user!.vipOnlineId,
                  ),
                )
              ],
            ),
          ),
          Dimension.md.vertical,
          H2Accordion(
            title: 'Cartão Live H2',
            icon:
                '''<svg width="20" height="17" viewBox="0 0 20 17" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M2.22222 1.64286C1.60764 1.64286 1.11111 2.15357 1.11111 2.78571V3.92857H18.8889V2.78571C18.8889 2.15357 18.3924 1.64286 17.7778 1.64286H2.22222ZM1.11111 5.07143V7.35714H18.8889V5.07143H1.11111ZM1.11111 8.5V14.2143C1.11111 14.8464 1.60764 15.3571 2.22222 15.3571H17.7778C18.3924 15.3571 18.8889 14.8464 18.8889 14.2143V8.5H1.11111ZM0 2.78571C0 1.525 0.996528 0.5 2.22222 0.5H17.7778C19.0035 0.5 20 1.525 20 2.78571V14.2143C20 15.475 19.0035 16.5 17.7778 16.5H2.22222C0.996528 16.5 0 15.475 0 14.2143V2.78571ZM3.33333 12.5C3.33333 12.1857 3.58333 11.9286 3.88889 11.9286H6.11111C6.41667 11.9286 6.66667 12.1857 6.66667 12.5C6.66667 12.8143 6.41667 13.0714 6.11111 13.0714H3.88889C3.58333 13.0714 3.33333 12.8143 3.33333 12.5ZM7.77778 12.5C7.77778 12.1857 8.02778 11.9286 8.33333 11.9286H12.7778C13.0833 11.9286 13.3333 12.1857 13.3333 12.5C13.3333 12.8143 13.0833 13.0714 12.7778 13.0714H8.33333C8.02778 13.0714 7.77778 12.8143 7.77778 12.5Z" fill="#CECECE"/></svg>''',
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: CustomCard(
                    name: state.user!.name,
                    number: state.user!.id.toString(),
                    title: state.user!.vipLive,
                    type: state.user!.vipLiveId,
                  ),
                )
              ],
            ),
          ),
          Dimension.xl.vertical,
        ],
      ),
    );
  }
}
