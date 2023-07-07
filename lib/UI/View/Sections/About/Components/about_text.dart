import 'package:flutter/material.dart';
import 'package:portfolio/Utils/Constants/string_constants.dart';
import 'package:portfolio/Utils/Constants/style_constant.dart';

class AboutText extends StatelessWidget {
  const AboutText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.aboutMeTxt,
          style: Theme.of(context).textTheme.displayMedium!.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ],
    );
  }
}

