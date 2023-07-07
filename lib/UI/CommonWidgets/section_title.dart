import 'package:flutter/material.dart';
import 'package:portfolio/Utils/Constants/style_constant.dart';

class SectionTitle extends StatelessWidget {
  final String title, subTitle;
  var size;
  final Color color;

  SectionTitle(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.color,
      required this.size});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: AppStyle.dDefaultPadding),
        constraints: BoxConstraints(maxWidth: size.width),
        height: 100,
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: AppStyle.dDefaultPadding),
              padding: const EdgeInsets.only(bottom: 72),
              width: 8,
              height: 100,
              color: Colors.black,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: color,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  subTitle,
                  style: AppTxtStyle.aboutSectionExCardStyle(context),
                ),
                Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
