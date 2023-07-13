import 'package:flutter/material.dart';
import 'package:portfolio/Utils/Constants/color_constants.dart';
import 'package:portfolio/Utils/Constants/style_constant.dart';

class DefaultButton extends StatelessWidget {
  final String imageSrc, text;
  final VoidCallback press;
  Color color;
  Size size;

  DefaultButton(
      {super.key,
      required this.imageSrc,
      required this.text,
      required this.press,
      required this.size,
        this.color = AppColor.defaultButtonBgColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppStyle.dDefaultPadding),
      child: FilledButton(
        style: FilledButton.styleFrom(
          backgroundColor: color,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          padding: const EdgeInsets.symmetric(
            vertical: AppStyle.dDefaultPadding,
            horizontal: AppStyle.dDefaultPadding * 2.5,
          ),
        ),
        onPressed: press,
        child: FittedBox(
          fit: BoxFit.fitHeight,
          child: Row(
            children: [
              Image.asset(imageSrc, width: 40,height: 40,),
              SizedBox(width: size.width * 0.01),
              Text(
                text,
                style: AppTxtStyle.boldButtonColorTxtStyle(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}