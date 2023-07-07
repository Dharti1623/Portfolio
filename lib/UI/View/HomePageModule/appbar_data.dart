import 'package:portfolio/Utils/Constants/style_constant.dart';
import 'package:flutter/material.dart';
class AppbarButton extends StatelessWidget {
  String name;
  GestureTapCallback onTap;
  AppbarButton({super.key,required this.name,required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Text(name),
      ),
    );
  }
}
