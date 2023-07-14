import 'package:flutter/material.dart';
import 'package:portfolio/UI/CommonWidgets/default_button.dart';
import 'package:portfolio/UI/CommonWidgets/my_outline_button.dart';
import 'package:portfolio/UI/View/Sections/About/Components/about_section_text.dart';
import 'package:portfolio/UI/View/Sections/About/Components/about_text.dart';
import 'package:portfolio/UI/View/Sections/About/Components/experience_card.dart';
import 'package:portfolio/UI/View/Sections/Top/components/menu.dart';
import 'package:portfolio/Utils/Constants/image_constant.dart';
import 'package:portfolio/Utils/Constants/string_constants.dart';
import 'package:portfolio/Utils/Constants/style_constant.dart';
import 'package:portfolio/Utils/common_function.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin:
          const EdgeInsets.symmetric(vertical: AppStyle.dDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const AboutText(),
              const AboutSectionText(
                text: AppStrings.aboutMeLeftTxt,
              ),
              ExperienceCard(numOfExp: AppStrings.totalExperience, size: size),
              const AboutSectionText(
                text: AppStrings.aboutMeRightTxt,
              ),
            ],
          ),
          const SizedBox(height: AppStyle.dDefaultPadding * 3),
          FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyOutlineButton(
                  size: size,
                  imageSrc: AppImages.handImage,
                  text: AppStrings.hireMeTxt,
                  press: hireMe,
                ),
                SizedBox(width: size.width * 0.01),
                DefaultButton(
                  size: size,
                  imageSrc: AppImages.downloadImage,
                  text: AppStrings.downloadCvTxt,
                  press: downLoadCv,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
