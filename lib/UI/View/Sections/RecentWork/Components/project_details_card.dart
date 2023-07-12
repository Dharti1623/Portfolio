import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/Data/Models/project_details.dart';
import 'package:portfolio/UI/View/Sections/RecentWork/project_detail_data.dart';
import 'package:portfolio/Utils/Constants/string_constants.dart';
import 'package:portfolio/Utils/Constants/style_constant.dart';

// ignore: must_be_immutable
class ProjectDetailsCard extends StatelessWidget {
  Size size;
  final int index;

  ProjectDetailsCard({super.key, required this.index, required this.size});

  RxBool isHover = false.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => FittedBox(
        child: InkWell(
          onTap: () {
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (BuildContext context) {
                return ProjectDetail(
                  id: projectDetails[index].id,
                  image: projectDetails[index].image,
                  title: projectDetails[index].title,
                  description: projectDetails[index].description,
                  category: projectDetails[index].category,
                  role: projectDetails[index].role,
                  database: projectDetails[index].database,
                  techStack: projectDetails[index].techStack,
                );
              },
            );
          },
          onHover: (value) {
            isHover.value = value;
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 200),
            height: size.height * 0.35,
            width: size.width * 0.25,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [if (isHover.value) AppBoxStyle.dDefaultCardShadow],
            ),
            child: Row(
              children: [
                Expanded(
                  child: Image.asset(
                    projectDetails[index].image,
                    height: size.height * 0.2,
                    width: size.width * 0.1,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.02),
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FittedBox(
                              child: Text(
                                  projectDetails[index].category.toUpperCase(),
                                  style: AppTxtStyle.boldButtonColorTxtStyle(
                                      context))),
                          SizedBox(height: AppStyle.dDefaultPadding / 2),
                          FittedBox(
                            child: Text(
                              projectDetails[index].title,
                              style:
                                  AppTxtStyle.boldButtonColorTxtStyle2(context),
                            ),
                          ),
                          SizedBox(height: AppStyle.dDefaultPadding * 0.2),
                          FittedBox(
                            child: Text(
                              AppStrings.viewDetailsTxt,
                              style: AppTxtStyle.underlineStyle(context),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
