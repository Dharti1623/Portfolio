import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:portfolio/Utils/Constants/color_constants.dart';
import 'package:portfolio/Utils/Constants/string_constants.dart';
import 'package:portfolio/Utils/Constants/style_constant.dart';

class GlassContent extends StatelessWidget {
  final Size size;

  const GlassContent({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.09),
            constraints:BoxConstraints(maxWidth: size.width * 0.5, maxHeight: size.height * 0.5),
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
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: AppColor.bgWhiteClr),
                  ),
                  Text(
                    '${AppStrings.firstNameDataTxt}\n${AppStrings.lastNameDataTxt}',
                    style: AppTxtStyle.topSectionNameStyle(context),
                  ),
                  Text(
                    AppStrings.designationDataTxt,
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: AppColor.bgWhiteClr),
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
