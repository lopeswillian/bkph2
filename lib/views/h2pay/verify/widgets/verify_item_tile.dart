import 'package:apph2/theme/app_theme_factory.dart';
import 'package:apph2/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

///
/// VerifyItemTile Widget
///
class VerifyItemTile extends StatelessWidget {
  /// VerifyItemTile size
  /// the responsive util
  final bool active;

  /// Render the item on left box
  final String svgItem;

  /// Render a title
  final String title;

  /// Render a subtitle
  final String subTitle;

  final VoidCallback action;

  /// Creates new instance of [VerifyItemTile]
  const VerifyItemTile(
      {Key? key,
      this.active = false,
      required this.svgItem,
      required this.title,
      required this.subTitle,
      required this.action
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _verifyItemTile(context);
  }

  ///
  /// Verify item tile
  ///
  Widget _verifyItemTile(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: active
              ? context.colorScheme.colorPrimaryLightest
              : AppThemeBase.colorSecondary02,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: Dimension.sm.width,
          vertical: Dimension.sm.height,
        ),
        child: Row(
          children: [
            SvgPicture.string(svgItem),
            Dimension.sm.horizontal,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: context.text.body1Bold,
                ),
                Dimension.xxs.vertical,
                Text(
                  subTitle,
                  style: context.text.caption,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
