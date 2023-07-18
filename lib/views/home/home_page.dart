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
          Dimension.md.vertical,
          H2Accordion(
            title: 'QR Code H2',
            icon:
                '''<svg width="20" height="21" viewBox="0 0 20 21" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="Frame 18"><path id="Vector" d="M7.14286 4.1875V7.5625H3.71429V4.1875H7.14286ZM3.71429 2.5C2.76786 2.5 2 3.25586 2 4.1875V7.5625C2 8.49414 2.76786 9.25 3.71429 9.25H7.14286C8.08929 9.25 8.85714 8.49414 8.85714 7.5625V4.1875C8.85714 3.25586 8.08929 2.5 7.14286 2.5H3.71429ZM7.14286 13.1875V16.5625H3.71429V13.1875H7.14286ZM3.71429 11.5C2.76786 11.5 2 12.2559 2 13.1875V16.5625C2 17.4941 2.76786 18.25 3.71429 18.25H7.14286C8.08929 18.25 8.85714 17.4941 8.85714 16.5625V13.1875C8.85714 12.2559 8.08929 11.5 7.14286 11.5H3.71429ZM12.8571 4.1875H16.2857V7.5625H12.8571V4.1875ZM11.1429 4.1875V7.5625C11.1429 8.49414 11.9107 9.25 12.8571 9.25H16.2857C17.2321 9.25 18 8.49414 18 7.5625V4.1875C18 3.25586 17.2321 2.5 16.2857 2.5H12.8571C11.9107 2.5 11.1429 3.25586 11.1429 4.1875ZM4.57143 5.59375V6.15625C4.57143 6.46563 4.82857 6.71875 5.14286 6.71875H5.71429C6.02857 6.71875 6.28571 6.46563 6.28571 6.15625V5.59375C6.28571 5.28437 6.02857 5.03125 5.71429 5.03125H5.14286C4.82857 5.03125 4.57143 5.28437 4.57143 5.59375ZM5.14286 14.0312C4.82857 14.0312 4.57143 14.2844 4.57143 14.5938V15.1562C4.57143 15.4656 4.82857 15.7188 5.14286 15.7188H5.71429C6.02857 15.7188 6.28571 15.4656 6.28571 15.1562V14.5938C6.28571 14.2844 6.02857 14.0312 5.71429 14.0312H5.14286ZM13.7143 5.59375V6.15625C13.7143 6.46563 13.9714 6.71875 14.2857 6.71875H14.8571C15.1714 6.71875 15.4286 6.46563 15.4286 6.15625V5.59375C15.4286 5.28437 15.1714 5.03125 14.8571 5.03125H14.2857C13.9714 5.03125 13.7143 5.28437 13.7143 5.59375ZM11.1429 12.0625V17.6875C11.1429 17.9969 11.4 18.25 11.7143 18.25H12.8571C13.1714 18.25 13.4286 17.9969 13.4286 17.6875V15.4375C13.4286 15.1281 13.6857 14.875 14 14.875C14.3143 14.875 14.5714 15.1281 14.5714 15.4375C14.5714 15.7469 14.8286 16 15.1429 16H17.4286C17.7429 16 18 15.7469 18 15.4375V12.0625C18 11.7531 17.7429 11.5 17.4286 11.5C17.1143 11.5 16.8571 11.7531 16.8571 12.0625C16.8571 12.3719 16.6 12.625 16.2857 12.625H15.1429C14.8286 12.625 14.5714 12.3719 14.5714 12.0625C14.5714 11.7531 14.3143 11.5 14 11.5H11.7143C11.4 11.5 11.1429 11.7531 11.1429 12.0625ZM15.1429 17.125C14.9913 17.125 14.846 17.1843 14.7388 17.2898C14.6316 17.3952 14.5714 17.5383 14.5714 17.6875C14.5714 17.8367 14.6316 17.9798 14.7388 18.0852C14.846 18.1907 14.9913 18.25 15.1429 18.25C15.2944 18.25 15.4398 18.1907 15.5469 18.0852C15.6541 17.9798 15.7143 17.8367 15.7143 17.6875C15.7143 17.5383 15.6541 17.3952 15.5469 17.2898C15.4398 17.1843 15.2944 17.125 15.1429 17.125ZM17.4286 17.125C17.277 17.125 17.1317 17.1843 17.0245 17.2898C16.9173 17.3952 16.8571 17.5383 16.8571 17.6875C16.8571 17.8367 16.9173 17.9798 17.0245 18.0852C17.1317 18.1907 17.277 18.25 17.4286 18.25C17.5801 18.25 17.7255 18.1907 17.8326 18.0852C17.9398 17.9798 18 17.8367 18 17.6875C18 17.5383 17.9398 17.3952 17.8326 17.2898C17.7255 17.1843 17.5801 17.125 17.4286 17.125Z" fill="white"/></g></svg>''',
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: QrImageView(
                    data: state.user!.id.toString(),
                    version: QrVersions.auto,
                    size: const Dimension(33.875).value
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
