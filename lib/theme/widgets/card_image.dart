// ignore_for_file: must_be_immutable

import 'package:apph2/theme/theme.dart';
import 'package:flutter/material.dart';

///
/// Custom Card with Image on background
///
class CardImage extends StatelessWidget {
  String? backgroundImage;

  double? width;

  double? height;

  String? date;

  String? time;

  String? buyIn;

  VoidCallback? action;

  CardImage._({
    Key? key,
    this.backgroundImage,
    this.width = 42.875,
    this.height = 16.25,
    this.date,
    this.time,
    this.buyIn,
    this.action,
  })  : assert(
          backgroundImage != null,
          'Required backgroundImage parameter',
        ),
        super(key: key);

  ///
  /// Creates a small sized Card Image
  ///
  factory CardImage.small({String? backgroundImage, VoidCallback? action}) {
    return CardImage._(
      backgroundImage: backgroundImage,
      action: action,
      width: 13.5,
      height: 10.75,
    );
  }

  ///
  /// Creates a medium sized Card Image
  ///
  factory CardImage.medium({String? backgroundImage, VoidCallback? action}) {
    return CardImage._(
      backgroundImage: backgroundImage,
      action: action,
      width: 20.5,
      height: 16.25,
    );
  }

  ///
  /// Creates a large sized Card Image
  ///
  factory CardImage.large({String? backgroundImage, VoidCallback? action}) {
    return CardImage._(
      backgroundImage: backgroundImage,
      action: action,
      width: 42.875,
      height: 16.25,
    );
  }

  ///
  /// Creates a large sized Card Image with schedule items
  ///
  factory CardImage.schedule({
    required String backgroundImage,
    VoidCallback? action,
    required String date,
    required String time,
    required String buyIn,
  }) {
    return CardImage._(
      backgroundImage: backgroundImage,
      action: action,
      date: date,
      time: time,
      buyIn: buyIn,
      width: 42.875,
      height: 16.25,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Container(
        width: Dimension(width!).width,
        height: Dimension(height!).height,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          image: DecorationImage(
            image: NetworkImage(
              backgroundImage!,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: buyIn != null
            ? Padding(
                padding: EdgeInsets.only(
                  top: Dimension.xs.height,
                  right: Dimension.xl.width,
                  bottom: Dimension.xs.height,
                ),
                child: Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: IntrinsicWidth(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        detailSchedule("Data", date!, context),
                        detailSchedule("Horário", time!, context),
                        detailSchedule("Buy-in", buyIn!, context),
                      ],
                    ),
                  ),
                ),
              )
            : const SizedBox.shrink(),
      ),
    );
  }

  Widget detailSchedule(String title, String value, BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: Dimension.xxs.height,
        horizontal: Dimension.xs.width,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: AppThemeBase.colorSecondary01),
        borderRadius: BorderRadius.circular(2.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: AppThemeBase.colorPrimaryLight,
              fontSize: 8.fontSize,
            ),
          ),
          Dimension.xxs.vertical,
          Text(
            value,
            style: context.text.buttonBold.copyWith(fontSize: 10.fontSize),
          ),
        ],
      ),
    );
  }
}
