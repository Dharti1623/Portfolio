import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/Utils/Constants/style_constant.dart';

class SocialCards extends StatelessWidget {
  final String iconSrc, name;
  final Color color;
  Size size;
  final VoidCallback press;

  SocialCards(
      {super.key,
      required this.iconSrc,
      required this.name,
      required this.color,
      required this.press,
      required this.size});

  RxBool isHover = false.obs;
  @override
  Widget build(BuildContext context) {
    return Obx(() => Padding(
      padding: EdgeInsets.symmetric(horizontal: AppStyle.dDefaultPadding),
      child: InkWell(
        onTap: press,
        onHover: (value) {
            isHover.value = value;
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          padding: EdgeInsets.symmetric(
            vertical: AppStyle.dDefaultPadding / 2,
            horizontal: AppStyle.dDefaultPadding * 1.5,
          ),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover.value) AppBoxStyle.dDefaultCardShadow],
          ),
          child: Row(
            children: [
              Image.asset(iconSrc,
                height: 80,
                width: 80,
              ),
              SizedBox(width: AppStyle.dDefaultPadding),
              Text(name,style: Theme.of(context).textTheme.labelSmall,),
            ],
          ),
        ),
      ),
    ));
  }
}
