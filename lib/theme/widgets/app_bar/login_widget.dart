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
        return GestureDetector(
          onTap: (){
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
        );
      },
    );
  }
}
