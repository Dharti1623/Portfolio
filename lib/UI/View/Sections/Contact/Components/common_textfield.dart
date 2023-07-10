import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CommonTextFormField extends StatelessWidget {
  String labelText,hintText;
  double width;
  CommonTextFormField({super.key,required this.labelText,required this.hintText,required this.width});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
        child: SizedBox(
        width: width,
      child: TextFormField(
        decoration: InputDecoration(
          labelText:  labelText,
          hintText:  hintText,
        ),
      ),
    ));
  }
}
