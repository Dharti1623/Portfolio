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
    return Expanded(
      child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppStyle.dDefaultPadding),
          child: Text(
            text,maxLines:10 ,overflow: TextOverflow.ellipsis,
            style:  Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w400, color: AppColor.dTextColor,height: 1.8),
            // style: AppTxtStyle.aboutSectionExCardStyle(context),
          ),
      ),
    );
  }
}
