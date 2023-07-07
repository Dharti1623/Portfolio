import 'package:flutter/material.dart';
import 'package:portfolio/Utils/Constants/color_constants.dart';
import 'package:portfolio/Utils/Constants/style_constant.dart';

class ExperienceCard extends StatelessWidget {
  final String numOfExp;
  var size;

  ExperienceCard({super.key, required this.numOfExp, this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: AppStyle.dDefaultPadding),
      padding: EdgeInsets.all(AppStyle.dDefaultPadding),
      height: size.height * 0.27,
      width: size.width * 0.14,
      decoration: BoxDecoration(
        color: AppColor.boxDecorationColor1,
        borderRadius: BorderRadius.circular(10),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColor.boxDecorationColor2,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 3),
              blurRadius: 6,
              color: AppColor.boxShadowColor.withOpacity(0.25),
            ),
          ],
        ),
        child: FittedBox(
            fit: BoxFit.fitHeight,
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Text(
                  numOfExp,
                  style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6
                      ..color = AppColor.textColor1,
                    shadows: [
                      BoxShadow(
                        offset: Offset(0, 5),
                        blurRadius: 10,
                        color: AppColor.boxShadowColor.withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
                Text(
                  numOfExp,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 100,
                    color: AppColor.bgWhiteClr,
                  ),
                )
              ],
            ),
            SizedBox(height: AppStyle.dDefaultPadding / 2),
            Text(
              "Years of Experience",
              style: TextStyle(
                color: AppColor.boxShadowColor,
              ),
            )
          ],
        )),
      ),
    );
  }
}
