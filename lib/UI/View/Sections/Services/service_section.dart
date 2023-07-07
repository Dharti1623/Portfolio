import 'package:flutter/material.dart';
import 'package:portfolio/Data/Models/services.dart';
import 'package:portfolio/UI/CommonWidgets/section_title.dart';
import 'package:portfolio/UI/View/Sections/Services/Components/data_card.dart';
import 'package:portfolio/Utils/Constants/color_constants.dart';
import 'package:portfolio/Utils/Constants/string_constants.dart';
import 'package:portfolio/Utils/Constants/style_constant.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: AppStyle.dDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: size.width),
      width: double.infinity,
      child: Column(
        children: [
          SectionTitle(
            size: size,
            color: AppColor.serviceSectionTitleLineClr,
            title: AppStrings.technicalSkillsTxt,
            subTitle: AppStrings.frameworkTxt,
          ),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                  services.length,
                  (index) => Padding(
                        padding: EdgeInsets.symmetric(horizontal: size.width*0.01),
                        child: ServiceCard(
                          index: index,
                          size: size,
                        ),
                      )),
            ),
          )
        ],
      ),
    );
  }
}
