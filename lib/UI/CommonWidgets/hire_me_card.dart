import 'package:flutter/material.dart';
import 'package:portfolio/UI/CommonWidgets/default_button.dart';
import 'package:portfolio/Utils/Constants/color_constants.dart';
import 'package:portfolio/Utils/Constants/image_constant.dart';
import 'package:portfolio/Utils/Constants/string_constants.dart';
import 'package:portfolio/Utils/Constants/style_constant.dart';

class HireMeCard extends StatelessWidget {
  Size size;
  HireMeCard({super.key,required this.size});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Padding(
        padding: const EdgeInsets.only(left: AppStyle.dDefaultPadding*2,right: AppStyle.dDefaultPadding*2,top: AppStyle.dDefaultPadding),
        child: Container(
          padding: const EdgeInsets.all(AppStyle.dDefaultPadding * 2),
          constraints: const BoxConstraints(maxWidth: 1110),
          decoration: BoxDecoration(
            color: AppColor.bgWhiteClr,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [AppBoxStyle.dDefaultShadow],
          ),
          child: Row(
            children: [
              Image.asset(
                AppImages.emailImage,
                height: 100,
              ),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: AppStyle.dDefaultPadding),
                child: SizedBox(
                  height: 100,
                  child: VerticalDivider(),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.startingNewProjectTxt,
                      style: AppTxtStyle.startingNewProjectTxtStyle(context),
                    ),
                    const SizedBox(height: AppStyle.dDefaultPadding * 0.2),
                    Text(
                     AppStrings.estimateNewProjectTxt,
                      style: AppTxtStyle.estimateNewProjectTxtStyle(context),
                    )
                  ],
                ),
              ),
              DefaultButton(
                size: size,
                text: AppStrings.hireMeTxt,
                imageSrc: AppImages.handImage,
                press: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
