import 'package:flutter/material.dart';
import 'package:portfolio/Utils/Constants/color_constants.dart';
import 'package:portfolio/Utils/Constants/style_constant.dart';

class AboutSectionText extends StatelessWidget {
  final String text;

  const AboutSectionText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: AppStyle.dDefaultPadding),
        child: Text(
          text,maxLines: 10,
          style:  Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w200, color: AppColor.dTextColor,height: 2),
          // style: AppTxtStyle.aboutSectionExCardStyle(context),
        ),
    );
  }
}
