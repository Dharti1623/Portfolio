import 'package:flutter/material.dart';
import 'package:portfolio/UI/View/Sections/Contact/Components/contact_form.dart';
import 'package:portfolio/UI/View/Sections/Contact/Components/social_card.dart';
import 'package:portfolio/Utils/Constants/color_constants.dart';
import 'package:portfolio/Utils/Constants/image_constant.dart';
import 'package:portfolio/Utils/Constants/string_constants.dart';
import 'package:portfolio/Utils/Constants/style_constant.dart';
import 'package:portfolio/Utils/common_function.dart';

class ContactBox extends StatelessWidget {
  Size size;

  ContactBox({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: size.width * 0.9),
      margin: const EdgeInsets.only(top: AppStyle.dDefaultPadding * 2),
      padding: const EdgeInsets.all(AppStyle.dDefaultPadding*2),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SocialCards(
                  size: size,
                  // color: Color(0xFFD9FFFC),
                  color: AppColor.linkedInColor,
                  iconSrc: AppImages.linkedInImage,
                  name: AppStrings.linkedInDataTxt,
                  press: launchLinkedin,
                ),
                SocialCards(
                  size: size,
                  // color: Color(0xFFE8F0F9),
                  color: AppColor.gitColor,
                  iconSrc: AppImages.gitImage,
                  name: AppStrings.messengerDataTxt,
                  press: launchGit,
                ),
                SocialCards(
                  size: size,
                  // color: Color(0xFFE4FFC7),
                  color: AppColor.whatsappColor,
                  iconSrc: AppImages.facebookImage,
                  name: AppStrings.whatsappDataTxt,
                  press: launchFacebook,
                ),
              ],
            ),
          ),
          SizedBox(height: size.height*0.05),
          ContactForm(size:size),
        ],
      ),
    );
  }
}