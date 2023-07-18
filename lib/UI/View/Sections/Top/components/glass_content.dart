import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:portfolio/Utils/Constants/color_constants.dart';
import 'package:portfolio/Utils/Constants/string_constants.dart';
import 'package:portfolio/Utils/Constants/style_constant.dart';
import 'package:portfolio/Utils/common_function.dart';

class GlassContent extends StatelessWidget {
  final Size size;

  const GlassContent({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2.5, sigmaY: 2.5),
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: MediaQuery
                .of(context)
                .size
                .width * 0.05),
            constraints: BoxConstraints(
                maxWidth: isWidthGrater(size) ? size.width * 0.5 : size.width * 0.55,
                maxHeight: isWidthGrater(size) ? size.height * 0.5 : size.width * 0.35),
            // constraints:BoxConstraints(maxWidth: size.width * 0.5, maxHeight: size.height * 0.5),
            width: double.infinity,
            color: AppColor.bgWhiteClr.withOpacity(0),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.helloThereTxt,
                    style: Theme
                        .of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(color: AppColor.bgWhiteClr,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '${AppStrings.firstNameDataTxt}\n${AppStrings
                        .lastNameDataTxt}',
                    style: AppTxtStyle.topSectionNameStyle(context),
                  ),
                  Text(
                    AppStrings.designationDataTxt,
                    style: Theme
                        .of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(color: AppColor.bgWhiteClr,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
