import 'package:flutter/material.dart';
import 'package:portfolio/UI/CommonWidgets/section_title.dart';
import 'package:portfolio/UI/View/Sections/Contact/Components/contact_box.dart';
import 'package:portfolio/Utils/Constants/color_constants.dart';
import 'package:portfolio/Utils/Constants/image_constant.dart';
import 'package:portfolio/Utils/Constants/string_constants.dart';
import 'package:portfolio/Utils/Constants/style_constant.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      // height: size.height,
      decoration: const BoxDecoration(
        color: AppColor.contactBoxDecorationColor,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(AppImages.bgImg2Image),
        ),
      ),
      margin: const EdgeInsets.only(top: AppStyle.dDefaultPadding * 6),
      child: Column(
        children: [
          SectionTitle(
            title: AppStrings.contactMeTxt,
            subTitle: AppStrings.forInfoTxt,
            color: AppColor.bgGreenClr,
            size: size,
          ),
          ContactBox(size:size),
          SizedBox(height: size.height*0.1,)
        ],
      ),
    );
  }
}
