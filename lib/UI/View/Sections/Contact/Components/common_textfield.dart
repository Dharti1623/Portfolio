import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CommonTextFormField extends StatelessWidget {
  String labelText, hintText;
  double width;
  TextEditingController controller;
  TextInputType? keyboardType;
  FormFieldValidator<String> validator;
  int maxLines;
  int minLines;
  IconButton? suffixIconButton;
  final bool autofocus;
  final bool autocorrect;
  TextInputAction textInputAction;
  int errorMaxLines;

  CommonTextFormField({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.width,
    required this.validator,
    required this.controller,
    this.textInputAction=TextInputAction.done,
    this.minLines = 1,
    this.autocorrect = false,
    this.autofocus = false,
    this.errorMaxLines = 1,
    this.maxLines = 1,
    this.suffixIconButton,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
        child: SizedBox(
      width: width,
      child: TextFormField(
        validator: validator,
        controller: controller,
        minLines: minLines,
        maxLines: maxLines,
        autofocus: autofocus,
        autocorrect: autocorrect,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
        ),
      ),
    ));
  }
}
