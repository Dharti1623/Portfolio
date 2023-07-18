import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/UI/View/HomePageModule/homepage.dart';
import 'package:portfolio/Utils/Constants/color_constants.dart';
import 'package:portfolio/Utils/Constants/image_constant.dart';
import 'package:portfolio/Utils/Constants/string_constants.dart';
import 'package:portfolio/Utils/Constants/style_constant.dart';
import 'package:portfolio/Utils/common_function.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

RxInt selectedIndex = 0.obs;
// ignore: must_be_immutable
class Menu extends StatelessWidget {
  final Size size;

  Menu({super.key, required this.size});

  RxInt hoverIndex = 0.obs;

  List<String> menuItems = [
    AppStrings.homeTxt,
    AppStrings.aboutTxt,
    AppStrings.projectsTxt,
    AppStrings.servicesTxt,
    AppStrings.contactTxt
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: AppStyle.dDefaultPadding,left: AppStyle.dDefaultPadding),
      constraints: BoxConstraints(maxWidth: size.width),
      height: isWidthGrater(size) ? size.height * 0.12 : size.width * 0.1,
      width: isWidthGrater(size) ? size.width*0.6 : size.width*0.62,
      // height: size.height * 0.12,
      // width: size.width*0.6,
      decoration: BoxDecoration(
        color: AppColor.bgWhiteClr,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        boxShadow: [AppBoxStyle.dDefaultShadow],
      ),
      child: Obx(() => FittedBox(
            fit: BoxFit.scaleDown,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: List.generate(
                menuItems.length,
                (index) => buildMenuItem(context,index),
              ),
            ),
          )),
    );
  }

  Widget buildMenuItem(BuildContext context,int index) {
    return InkWell(
      onTap: () {
        selectedIndex.value = index;
        scrollToCounter();
      },
      onHover: (value) {
        value
            ? hoverIndex.value = index
            : hoverIndex.value = selectedIndex.value;
      },
      child: Container(
        padding: EdgeInsets.only(right: size.width*0.02,left: size.width*0.02),
        constraints: BoxConstraints(minWidth: size.width * 0.07),
        height: size.height * 0.2,
        child: Stack(
          alignment: Alignment.center,
          children: [
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                menuItems[index],
                style:Theme.of(context).textTheme.displaySmall!.copyWith(color: AppColor.dTextColor)
              ),
            ),
            // Hover
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              left: 0,
              right: 0,
              bottom: selectedIndex.value != index && hoverIndex.value == index
                  ? -10
                  : -32,
              child: Image.asset(AppImages.hoverImage),
            ),
            // Select
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              left: 0,
              right: 0,
              bottom: selectedIndex.value == index ? -2 : -35,
              child: Image.asset(AppImages.hoverImage,),
            ),
          ],
        ),
      ),
    );
  }

}
Future scrollToCounter() async {
  await controller.value.scrollToIndex(selectedIndex.value,
      preferPosition: AutoScrollPosition.begin);
  controller.value.highlight(selectedIndex.value);
}