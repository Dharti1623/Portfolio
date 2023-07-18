import 'package:flutter/material.dart';
import 'package:portfolio/UI/View/Sections/Top/components/glass_content.dart';
import 'package:portfolio/Utils/Constants/image_constant.dart';

class LogoAndBlurBox extends StatelessWidget {
  final Size size;
   LogoAndBlurBox({super.key,required this.size});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(AppImages.logoImage,height: size.height*0.07),
        const Spacer(),
        GlassContent(size: size),
        const Spacer(flex: 3),
      ],
    );
  }
}