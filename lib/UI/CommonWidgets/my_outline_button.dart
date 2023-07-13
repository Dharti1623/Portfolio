import 'package:flutter/material.dart';
import 'package:portfolio/Utils/Constants/color_constants.dart';
import 'package:portfolio/Utils/Constants/style_constant.dart';

// ignore: must_be_immutable
class MyOutlineButton extends StatelessWidget {
  final String imageSrc, text;
  final VoidCallback press;
  Size size;

  MyOutlineButton({
    super.key,
    required this.imageSrc,
    required this.text,
    required this.press,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        side: BorderSide(color: AppColor.outlineButtonBorderColor,width: 2),
        padding: const EdgeInsets.symmetric(
          vertical: AppStyle.dDefaultPadding,
          horizontal: AppStyle.dDefaultPadding * 2.5,
        ),
      ),
      onPressed: press,
      child: FittedBox(
        fit: BoxFit.fitWidth,
        child: Row(
          children: [
            Image.asset(
              imageSrc,
              width: 40,height: 40,
            ),
            SizedBox(width: size.width * 0.01),
            Text(text,style: AppTxtStyle.boldButtonTxtStyle(context),)
          ],
        ),
      ),
    );
  }
}

