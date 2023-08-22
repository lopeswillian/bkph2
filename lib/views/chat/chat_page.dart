import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../theme/theme.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: Dimension.xl.height,
        horizontal: Dimension.sm.width,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Dimension.lg.width,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/bg_chat.svg'),
            Dimension.xl.vertical,
            Text(
              'Fale agora mesmo com\n nossa equipe.',
              style: context.text.body1,
              textAlign: TextAlign.center,
            ),
            const Dimension(20 / 8).vertical,
            ContainedButton.large(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 20.fontSize,
                fontWeight: FontWeight.w500,
              ),
              onPressed: () async {
                const phoneNumber = '5511990241696';
                const message =
                    'Olá! Gostaria de falar com o atendimento do H2 Club!';

                final url =
                    'https://api.whatsapp.com/send?phone=$phoneNumber&text=${Uri.encodeComponent(message)}';
                !await launchUrl(
                  Uri.parse(url),
                  mode: LaunchMode.externalApplication,
                );
              },
              text: "Inicie seu atendimento",
            ),
          ],
        ),
      ),
    );
  }
}
