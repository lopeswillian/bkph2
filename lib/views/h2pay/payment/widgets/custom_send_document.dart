import 'package:apph2/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSendDocument extends StatefulWidget {
  final bool enabled;
  final VoidCallback? action;
  final bool isFront;
  const CustomSendDocument({
    super.key,
    required this.isFront,
    this.enabled = false,
    this.action,
  });

  @override
  State<CustomSendDocument> createState() => _CustomSendDocumentState();
}

class _CustomSendDocumentState extends State<CustomSendDocument> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.action,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
            decoration: BoxDecoration(
              color: widget.enabled
                  ? AppThemeBase.colorPrimaryLightest
                  : AppThemeBase.colorSecondary02,
              borderRadius: BorderRadius.circular(150),
            ),
            padding: EdgeInsets.symmetric(
              vertical: const Dimension(2.5).height,
              horizontal: Dimension.sm.width,
            ),
            child: Row(
              children: [
                SvgPicture.string(
                    '''<svg width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="bring-forward-regular 1" clip-path="url(#clip0_760_10474)"><path id="Vector" d="M12.25 25.375H24.5C24.9813 25.375 25.375 24.9813 25.375 24.5V12.25C25.375 11.7688 24.9813 11.375 24.5 11.375H21V8.75H24.5C26.4305 8.75 28 10.3195 28 12.25V24.5C28 26.4305 26.4305 28 24.5 28H12.25C10.3195 28 8.75 26.4305 8.75 24.5V21H11.375V24.5C11.375 24.9813 11.7688 25.375 12.25 25.375ZM15.75 19.25H3.5C1.56953 19.25 0 17.6805 0 15.75V3.5C0 1.56953 1.56953 0 3.5 0H15.75C17.6805 0 19.25 1.56953 19.25 3.5V15.75C19.25 17.6805 17.6805 19.25 15.75 19.25Z" fill="#127FF9"/></g><defs><clipPath id="clip0_760_10474"><rect width="28" height="28" fill="white"/></clipPath></defs></svg>'''),
                Dimension.sm.horizontal,
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: context.text.body2.copyWith(
                      color: !widget.enabled
                          ? AppThemeBase.colorPrimaryDark
                          : AppThemeBase.colorPrimaryLight,
                    ),
                    children: <TextSpan>[
                      const TextSpan(
                        text: 'Enviar foto da ',
                      ),
                      TextSpan(
                        text: widget.isFront ? 'frente' : 'verso',
                        style: const TextStyle(
                          color: AppThemeBase.colorPrimaryLight,
                        ),
                      ),
                      const TextSpan(
                        text: ' do cheque',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Visibility(
            visible: widget.enabled,
            child: Positioned(
              left: 0,
              right: 0,
              top: 60,
              child: Center(
                  child: SvgPicture.string(
                      '''<svg width="26" height="26" viewBox="0 0 26 26" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="circle-check-solid 1" clip-path="url(#clip0_760_10689)"><path id="Vector" d="M13 26C16.4478 26 19.7544 24.6304 22.1924 22.1924C24.6304 19.7544 26 16.4478 26 13C26 9.55219 24.6304 6.24558 22.1924 3.80761C19.7544 1.36964 16.4478 0 13 0C9.55219 0 6.24558 1.36964 3.80761 3.80761C1.36964 6.24558 0 9.55219 0 13C0 16.4478 1.36964 19.7544 3.80761 22.1924C6.24558 24.6304 9.55219 26 13 26ZM18.7383 10.6133L12.2383 17.1133C11.7609 17.5906 10.9891 17.5906 10.5168 17.1133L7.2668 13.8633C6.78945 13.3859 6.78945 12.6141 7.2668 12.1418C7.74414 11.6695 8.51602 11.6645 8.98828 12.1418L11.375 14.5285L17.0117 8.88672C17.4891 8.40938 18.2609 8.40938 18.7332 8.88672C19.2055 9.36406 19.2105 10.1359 18.7332 10.6082L18.7383 10.6133Z" fill="#8FCD8E"/></g><defs><clipPath id="clip0_760_10689"><rect width="26" height="26" fill="white"/></clipPath></defs></svg>''')),
            ),
          ),
        ],
      ),
    );
  }
}
