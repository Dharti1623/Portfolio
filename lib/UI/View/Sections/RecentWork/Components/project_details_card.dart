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
    print('dharti-->${size.width * 0.282}');
    return Obx(() => InkWell(
        onTap: press,
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
              Image.asset(projectDetails[index].image,height: size.height*0.2,width: size.width*0.1,),
              Expanded(
                child: Padding(
                  padding:EdgeInsets.symmetric(horizontal: size.width*0.02),
                  child: FittedBox(
                    fit: BoxFit.fitHeight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(projectDetails[index].category.toUpperCase(),style: AppTxtStyle.boldButtonColorTxtStyle(context)),
                        SizedBox(height: AppStyle.dDefaultPadding/2),
                        Text(
                          projectDetails[index].title,
                          style: AppTxtStyle.boldButtonColorTxtStyle2(context),
                        ),
                        SizedBox(height: AppStyle.dDefaultPadding*0.2),
                        Text(
                          AppStrings.viewDetailsTxt,
                          style: AppTxtStyle.underlineStyle(context),
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
    );
  }
}
