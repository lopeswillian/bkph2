import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/theme/theme.dart';
import 'package:apph2/views/home/widgets/custom_card.dart';
import 'package:apph2/views/login/login_state.dart';
import 'package:apph2/views/login/login_viewmodel.dart';
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
        ],
      ),
    );
  }
}
