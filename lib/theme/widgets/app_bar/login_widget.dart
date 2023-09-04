import 'package:apph2/base_app_module_routing.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/theme/theme.dart';
import 'package:apph2/views/login/login_state.dart';
import 'package:apph2/views/login/login_viewmodel.dart';
import 'package:flutter/material.dart' hide View;
import 'package:flutter_svg/svg.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> with View<LoginViewModel> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel, LoginState>(
      viewModel: viewModel,
      buildWhen: (previous, current) => previous.user != current.user,
      builder: (context, state) {
        if (state.user == null) return const SizedBox.shrink();
        return Row(
          children: [
            GestureDetector(
              onTap: () {
                Nav.popUntil((p0) => false);
                viewModel.switchBottomNavigation(5);
              },
              child: SvgPicture.string(
                  width: const Dimension(30/8).width,
                  height: const Dimension(30/8).height,
                  '''<svg viewBox="0 0 35 29" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M3.83333 2.42141C2.77318 2.42141 1.91667 3.30239 1.91667 4.39284V6.36427H32.5833V4.39284C32.5833 3.30239 31.7268 2.42141 30.6667 2.42141H3.83333ZM1.91667 8.3357V12.2786H32.5833V8.3357H1.91667ZM1.91667 14.25V24.1071C1.91667 25.1976 2.77318 26.0786 3.83333 26.0786H30.6667C31.7268 26.0786 32.5833 25.1976 32.5833 24.1071V14.25H1.91667ZM0 4.39284C0 2.21811 1.71901 0.449982 3.83333 0.449982H30.6667C32.781 0.449982 34.5 2.21811 34.5 4.39284V24.1071C34.5 26.2819 32.781 28.05 30.6667 28.05H3.83333C1.71901 28.05 0 26.2819 0 24.1071V4.39284ZM5.75 21.15C5.75 20.6078 6.18125 20.1643 6.70833 20.1643H10.5417C11.0688 20.1643 11.5 20.6078 11.5 21.15C11.5 21.6921 11.0688 22.1357 10.5417 22.1357H6.70833C6.18125 22.1357 5.75 21.6921 5.75 21.15ZM13.4167 21.15C13.4167 20.6078 13.8479 20.1643 14.375 20.1643H22.0417C22.5688 20.1643 23 20.6078 23 21.15C23 21.6921 22.5688 22.1357 22.0417 22.1357H14.375C13.8479 22.1357 13.4167 21.6921 13.4167 21.15Z" fill="white"/></svg>'''),
            ),
            Dimension.sm.horizontal,
            GestureDetector(
              onTap: () {
                Nav.pushNamed(BaseAppModuleRouting.profile);
              },
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                width: const Dimension(4.75).width,
                height: const Dimension(4.75).height,
                child: Center(
                  child: SvgPicture.string(
                      width: const Dimension(2.5).width,
                      height: const Dimension(2.5).height,
                      '''<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="user-solid 1"><path id="Vector" d="M10 10C11.2124 10 12.3752 9.49956 13.2325 8.60876C14.0898 7.71796 14.5714 6.50978 14.5714 5.25C14.5714 3.99022 14.0898 2.78204 13.2325 1.89124C12.3752 1.00045 11.2124 0.5 10 0.5C8.78758 0.5 7.62482 1.00045 6.76751 1.89124C5.9102 2.78204 5.42857 3.99022 5.42857 5.25C5.42857 6.50978 5.9102 7.71796 6.76751 8.60876C7.62482 9.49956 8.78758 10 10 10ZM8.36786 11.7812C4.85 11.7812 2 14.7426 2 18.3979C2 19.0064 2.475 19.5 3.06071 19.5H16.9393C17.525 19.5 18 19.0064 18 18.3979C18 14.7426 15.15 11.7812 11.6321 11.7812H8.36786Z" fill="#127FF9"/></g></svg>'''),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
