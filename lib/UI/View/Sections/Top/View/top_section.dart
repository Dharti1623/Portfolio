import 'package:flutter/material.dart';
import 'package:portfolio/UI/View/Sections/Top/components/logo_blur_box.dart';
import 'package:portfolio/UI/View/Sections/Top/components/menu.dart';
import 'package:portfolio/UI/View/Sections/Top/components/person_img.dart';
import 'package:portfolio/Utils/Constants/image_constant.dart';
import 'package:portfolio/Utils/Constants/style_constant.dart';
import 'package:portfolio/Utils/common_function.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(
        maxHeight: isWidthGrater(size) ? size.height * 0.8 : size.width * 0.7,
        minHeight: isWidthGrater(size) ? size.height * 0.5 : size.width * 0.5,
      ),
      // constraints: BoxConstraints(maxHeight: size.height*0.8, minHeight: size.height*0.5),
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(AppImages.bgImage),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.only(top: AppStyle.dDefaultPadding),
        width: size.width * 0.625,
        child: Stack(
          children: [
            LogoAndBlurBox(size: size),
            size.width > size.height
                ? Positioned(
                    bottom: 0.0,
                    right: -size.width * 0.01,
                    child: PersonImg(size: size),
                  )
                : const SizedBox.shrink(),
            Positioned(
              bottom: 0,
              child: Menu(size: size),
            ),
          ],
        ),
      ),
    );
  }
}
