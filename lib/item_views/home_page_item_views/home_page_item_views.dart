import 'package:flutter/material.dart';
import 'package:login_form/constant/colors.dart';
import 'package:login_form/constant/dimens.dart';
import 'package:login_form/constant/strings.dart';
import 'package:login_form/widgets/text_box_and_button_widget.dart';

class CircleAvatarImageItemView extends StatelessWidget {
  const CircleAvatarImageItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: kCircleAvatarItemViewHeight,
      color: kSecondaryColor,
      child: const CircleAvatarView(),
    );
  }
}

class CircleAvatarView extends StatelessWidget {
  const CircleAvatarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: kCircleAvatarRadius,
      backgroundImage: NetworkImage(
          'https://static.toiimg.com/thumb/resizemode-4,width-1200,height-900,msid-91206669/91206669.jpg'),
    );
  }
}

class InputLayerItemView extends StatelessWidget {
  const InputLayerItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          kProfileText,
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: kProfileTextColor),
        ),
        SizedBox(
          height: kSP20x,
        ),
        TextBoxAndButtonWidget(
          textBoxName: 'thomas7755@gmail.com',
        ),
        SizedBox(
          height: kSP20x,
        ),
        TextBoxAndButtonWidget(
          textBoxName: 'william566@gmail.com',
        ),
        SizedBox(
          height: kSP20x,
        ),
        TextBoxAndButtonWidget(
          textBoxName: 'pillow777@gmail.com',
        ),
        SizedBox(
          height: kSP20x,
        ),
        TextBoxAndButtonWidget(
          textBoxName: kUpdateText,
          backgroundColor: kUpdateButtonColor,
          isTextCenter: true,
          isSecondaryTextColor: true,
        ),
        SizedBox(
          height: 50,
        ),
        TextBoxAndButtonWidget(
          isTextCenter: true,
          textBoxName: kBackText,
          isBorderWidthHigh: true,
        ),
      ],
    );
  }
}
