import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/Utils/Constants/color_constants.dart';
import 'package:portfolio/Utils/Constants/style_constant.dart';
import 'package:portfolio/Utils/common_function.dart';

class ProjectDetail extends StatelessWidget {
  String title, description, techStack, database, role, category, image;
  int id;

  ProjectDetail({
    super.key,
    required this.id,
    required this.image,
    required this.title,
    required this.description,
    required this.category,
    required this.role,
    required this.database,
    required this.techStack,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return AlertDialog(
      // backgroundColor: AppColor.boxDecorationColor2,
      insetPadding: EdgeInsets.symmetric(
        horizontal: isWidthGrater(size) ? size.width * 0.15 : size.width * 0.1,
        vertical: isWidthGrater(size) ? size.height * 0.1 : size.height * 0.05,
        // horizontal: size.width * 0.1,
        // vertical: size.height * 0.1,
      ),
      contentPadding: EdgeInsets.zero,
      scrollable: true,
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppBar(
            title: Text(title,
                style: AppTxtStyle.appbarStyle(context)),
            centerTitle: true,
            backgroundColor: AppColor.transparentClr,
            leading: SizedBox(),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(Icons.close)),
              ),
            ],
          ),
          Image.asset(image, width: size.width * 0.2),
          const SizedBox(height: AppStyle.dDefaultPadding),
          TitleWithData(title: 'Category : ', data: category),
          TitleWithData(title: 'Tech Stack : ', data: techStack),
          TitleWithData(title: 'Database : ', data: database),
          TitleWithData(title: 'Role : ', data: role),
          TitleWithData(title: 'Description : ', data: description),
          const SizedBox(height: AppStyle.dDefaultPadding),
        ],
      ),
    );
  }
}

class TitleWithData extends StatelessWidget {
  String title, data;

  TitleWithData({super.key, required this.data, required this.title});
  Widget build(BuildContext context) {
    final dataController = TextEditingController();
    dataController.text = data;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: TextField(
        style:AppTxtStyle.descriptionStyle(context),
        controller: dataController,
        maxLines: 10,
        minLines: 1,
        enabled: false,
        decoration: InputDecoration(
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(
              color: AppColor.dLightColor,
            ),
          ),
          filled: false,
          labelText: title,
          labelStyle:AppTxtStyle.titleStyle(context),
        ),
      ),
    );
  }

/*  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: 8.0, horizontal: MediaQuery.of(context).size.width * 0.08),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Text(title,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w600, color: Colors.black))),
          Expanded(
              child: Text(data,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.w400, color: Colors.black))),
        ],
      ),
    );
  }*/
}
