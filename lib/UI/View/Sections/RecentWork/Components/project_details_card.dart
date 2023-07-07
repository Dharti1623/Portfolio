import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/Data/Models/project_details.dart';
import 'package:portfolio/Utils/Constants/string_constants.dart';
import 'package:portfolio/Utils/Constants/style_constant.dart';

// ignore: must_be_immutable
class ProjectDetailsCard extends StatelessWidget {
  Size size;
  final int index;
  final VoidCallback press;

  ProjectDetailsCard(
      {super.key,
      required this.index,
      required this.size,
      required this.press});

  RxBool isHover = false.obs;

  @override
  Widget build(BuildContext context) {
    print('dharti-->${size.width * 0.285}');
    return Obx(() => InkWell(
        onTap: press,
        onHover: (value) {
          isHover.value = value;
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          height: size.height * 0.36,
          width: 540,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover.value) AppBoxStyle.dDefaultCardShadow],
          ),
          child: Row(
            children: [
              Image.asset(projectDetails[index].image),
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppStyle.dDefaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(projectDetails[index].category.toUpperCase()),
                      SizedBox(height: AppStyle.dDefaultPadding / 2),
                      Text(
                        projectDetails[index].title,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(height: 1.5),
                      ),
                      SizedBox(height: AppStyle.dDefaultPadding),
                      Text(
                        AppStrings.viewDetailsTxt,
                        style: AppTxtStyle.underlineStyle(context),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
