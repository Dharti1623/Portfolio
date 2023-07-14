import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/Data/Models/services.dart';
import 'package:portfolio/Utils/Constants/color_constants.dart';
import 'package:portfolio/Utils/Constants/style_constant.dart';

// ignore: must_be_immutable
class ServiceCard extends StatelessWidget {
  final int index;
  Size size;
  ServiceCard({super.key,required this.index,required this.size});

  RxBool isHover = false.obs;
  Duration duration = Duration(milliseconds: 200);
  @override
  Widget build(BuildContext context) {
    // print('dharti-->${size.height * 0.285}');
    return Obx(() => InkWell(
        onTap: () {},
        onHover: (value) {
            isHover.value = value;
        },
        hoverColor: Colors.transparent,
        child: AnimatedContainer(
          duration: duration,
          margin: EdgeInsets.symmetric(vertical: size.width*0.02),
          height: size.height * 0.3,
          width: size.width * 0.14,
          decoration: BoxDecoration(
            color: services[index].color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover.value) AppBoxStyle.dDefaultCardShadow],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: duration,
                padding: EdgeInsets.all(AppStyle.dDefaultPadding * 1.5),
                height: size.height*0.2,
                width: size.width*0.07,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    if (!isHover.value)
                      BoxShadow(
                        offset: Offset(0, 20),
                        blurRadius: 30,
                        color: Colors.black.withOpacity(0.1),
                      ),
                  ],
                ),
                child: Image.asset(
                  services[index].image,height: 200,width: 200/*,fit: BoxFit.fill*/,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1.0),
                child: Text(
                  services[index].title,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: AppColor.dTextColor,fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
