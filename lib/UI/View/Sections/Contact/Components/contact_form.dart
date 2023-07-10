import 'package:flutter/material.dart';
import 'package:portfolio/UI/CommonWidgets/default_button.dart';
import 'package:portfolio/Utils/Constants/image_constant.dart';
import 'package:portfolio/Utils/Constants/string_constants.dart';
import 'package:portfolio/Utils/Constants/style_constant.dart';

class ContactForm extends StatelessWidget {
  Size size;
  ContactForm({super.key,required this.size});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Wrap(
        spacing: AppStyle.dDefaultPadding * 2.5,
        runSpacing: AppStyle.dDefaultPadding * 1.5,
        children: [
          FittedBox(
            child: SizedBox(
              width: 470,
              child: TextFormField(
                onChanged: (value) {},
                decoration: const InputDecoration(
                  labelText: AppStrings.yourNameTxt,
                  hintText:  AppStrings.enterNameTxt,
                ),
              ),
            ),
          ),
          FittedBox(
            child: SizedBox(
              width: 470,
              child: TextFormField(
                onChanged: (value) {},
                decoration: const InputDecoration(
                  labelText:  AppStrings.emailAddressTxt,
                  hintText:  AppStrings.enterEmailTxt,
                ),
              ),
            ),
          ),
          FittedBox(
            child: SizedBox(
              width: 470,
              child: TextFormField(
                onChanged: (value) {},
                decoration: const InputDecoration(
                  labelText:  AppStrings.projectTypeTxt,
                  hintText:  AppStrings.selectProjectTxt,
                ),
              ),
            ),
          ),
          FittedBox(
            child: SizedBox(
              width: size.width*0.9,
              child: TextFormField(
                onChanged: (value) {},
                decoration: const InputDecoration(
                  labelText:  AppStrings.projectBudgetTxt,
                  hintText:  AppStrings.selectBudgetTxt,
                ),
              ),
            ),
          ),
          FittedBox(
            child: SizedBox(
              width: size.width*0.9,
              child: TextFormField(
                onChanged: (value) {},
                minLines: 2,
                maxLines: 5,
                decoration: InputDecoration(
                  labelText: AppStrings.descriptionTxt,
                  hintText: AppStrings.writeSomethingTxt,
                ),
              ),
            ),
          ),
          const SizedBox(height: AppStyle.dDefaultPadding * 2),
          Center(
            child: FittedBox(
              child: DefaultButton(
                imageSrc: AppImages.contactIconImage,
                text: "Contact Me!",
                press: () {}, size: size,
              ),
            ),
          )
        ],
      ),
    );
  }
}
