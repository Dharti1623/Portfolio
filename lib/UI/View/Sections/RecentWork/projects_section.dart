import 'package:flutter/material.dart';
import 'package:portfolio/Data/Models/project_details.dart';
import 'package:portfolio/UI/CommonWidgets/hire_me_card.dart';
import 'package:portfolio/UI/CommonWidgets/section_title.dart';
import 'package:portfolio/UI/View/Sections/RecentWork/Components/project_details_card.dart';
import 'package:portfolio/Utils/Constants/color_constants.dart';
import 'package:portfolio/Utils/Constants/image_constant.dart';
import 'package:portfolio/Utils/Constants/string_constants.dart';
import 'package:portfolio/Utils/Constants/style_constant.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return  Container(
      // constraints: BoxConstraints(maxWidth: 1110),
      width: double.infinity,
      margin: EdgeInsets.only(top: AppStyle.dDefaultPadding * 6),
      // constraints: BoxConstraints(maxWidth: size.width),
      // width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.projectBoxDecorationColor.withOpacity(0.3),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(AppImages.recentWorkBgImage),
        ),
      ),
      child: Column(
        children: [
          Transform.translate(
            offset: Offset(0, -80),
            child: HireMeCard(size: size,),
          ),
          SectionTitle(
            size: size,
            color: AppColor.projectsSectionTitleLineClr,
            title: AppStrings.recentWorksTxt,
            subTitle: AppStrings.myStrongArenasTxt,
          ),
          SizedBox(height: AppStyle.dDefaultPadding * 1.5),
          SizedBox(
            width: size.width*0.9,
            child: Wrap(
              spacing: AppStyle.dDefaultPadding,
              runSpacing: AppStyle.dDefaultPadding * 2,
              children: List.generate(
                projectDetails.length,
                    (index) => ProjectDetailsCard(index: index, size: size,),
              ),
            ),
          ),
          SizedBox(height: AppStyle.dDefaultPadding * 5),
        ],
      ),
    );
  }
}