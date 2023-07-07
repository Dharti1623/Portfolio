import 'package:flutter/material.dart';
import 'package:portfolio/Utils/Constants/image_constant.dart';

class PersonImg extends StatelessWidget {
  final Size size;
  const PersonImg({super.key,required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: size.width, maxHeight: size.height),
      child: Image.asset(AppImages.personImage,height: size.height*0.5),
    );
  }
}
