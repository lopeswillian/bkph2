import 'package:apph2/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

///
/// CustomTile Widget
///
class CustomTile extends StatelessWidget {
  /// CustomTile size

  /// Render the item on left box
  final String svgItem;

  /// Render a title
  final String title;

  /// Optional padding
  final EdgeInsets? padding;

  /// Render a subtitle
  final String? subTitle;

  /// Render a second sub title
  final String? secondSubTitle;

  /// Function on click in widget
  final VoidCallback? action;

  /// Widget with color
  final bool colored;

  /// Creates new instance of [CustomTile]
  const CustomTile({
    Key? key,
    required this.svgItem,
    required this.title,
    this.padding,
    this.subTitle,
    this.secondSubTitle,
    this.action,
    this.colored = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _customTile(context);
  }

  ///
  /// Custom item tile
  ///
  Widget _customTile(BuildContext context) {
    return GestureDetector(
      onTap: action ?? () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colored
              ? AppThemeBase.colorPrimaryLight
              : AppThemeBase.colorSecondary02,
        ),
        padding: padding ??
            EdgeInsets.symmetric(
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
                  style: context.text.body1Bold.copyWith(
                    color: colored
                        ? AppThemeBase.colorPrimarySuperlight
                        : AppThemeBase.colorPrimaryDarkest,
                  ),
                ),
                if (subTitle != null)
                  ...<Widget>[
                    Dimension.xxs.vertical,
                    Text(
                      subTitle!,
                      style: context.text.caption.copyWith(
                        color: colored
                            ? AppThemeBase.colorPrimarySuperlight
                            : AppThemeBase.colorPrimaryDarkest,
                      ),
                    ),
                  ].toList(),
                if (secondSubTitle != null)
                  ...<Widget>[
                    Dimension.xxs.vertical,
                    Text(
                      secondSubTitle!,
                      style: context.text.caption.copyWith(
                        color: colored
                            ? AppThemeBase.colorPrimarySuperlight
                            : AppThemeBase.colorPrimaryDarkest,
                      ),
                    ),
                  ].toList(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
