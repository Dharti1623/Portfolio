import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/Utils/Constants/style_constant.dart';

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
      scrollable: true,
      content: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppStyle.dDefaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(Icons.close))),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(image, width: size.width*0.1),
                Center(
                    child: Text(title,
                        style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.black))),
              ],
            ),
            const SizedBox(height: AppStyle.dDefaultPadding),
            TitleWithData(title: 'Description : ', data: description),
            TitleWithData(title: 'Category : ', data: category),
            TitleWithData(title: 'Tech Stack : ', data: techStack),
            TitleWithData(title: 'Role : ', data: role),
            TitleWithData(title: 'Database : ', data: database),
          ],
        ),
      ),
    );
  }
}

class TitleWithData extends StatelessWidget {
  String title, data;

  TitleWithData({super.key, required this.data, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Text(title,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black))),
          Expanded(
              child: Text(data,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black))),
        ],
      ),
    );
  }
}
