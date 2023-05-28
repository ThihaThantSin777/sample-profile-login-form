import 'package:flutter/material.dart';

import '../constant/colors.dart';
import '../constant/dimens.dart';

class TextBoxAndButtonWidget extends StatelessWidget {
  const TextBoxAndButtonWidget(
      {Key? key,
      required this.textBoxName,
      this.backgroundColor,
      this.isTextCenter = false,
      this.isSecondaryTextColor = false,
      this.isBorderWidthHigh = false})
      : super(key: key);
  final String textBoxName;
  final Color? backgroundColor;
  final bool isTextCenter;
  final bool isSecondaryTextColor;
  final bool isBorderWidthHigh;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: (isTextCenter) ? Alignment.center : Alignment.centerLeft,
      width: kTextBoxAndButtonWidth,
      height: kTextBoxAndButtonHeight,
      padding: const EdgeInsets.only(left: kSP13x),
      decoration: BoxDecoration(
          color: backgroundColor,
          border: isBorderWidthHigh
              ? Border.all(
                  width: kTextBoxAndButtonBorderWidth,
                  color: kUpdateButtonColor)
              : Border.all(color: kSecondaryColor),
          borderRadius:
              BorderRadius.circular(kTextBoxAndButtonBorderBorderRadius)),
      child: Text(
        textBoxName,
        style: TextStyle(
            color:
                isSecondaryTextColor ? kSecondaryTextColor : kPrimaryTextColor,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
