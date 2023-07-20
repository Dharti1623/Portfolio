import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mailto/mailto.dart';
import 'package:portfolio/UI/CommonWidgets/default_button.dart';
import 'package:portfolio/UI/View/Sections/Contact/Components/common_textfield.dart';
import 'package:portfolio/Utils/Constants/color_constants.dart';
import 'package:portfolio/Utils/Constants/image_constant.dart';
import 'package:portfolio/Utils/Constants/string_constants.dart';
import 'package:portfolio/Utils/Constants/style_constant.dart';
import 'package:portfolio/Utils/Constants/validations.dart';
import 'package:portfolio/Utils/common_function.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactForm extends StatelessWidget {
  Size size;

  ContactForm({super.key, required this.size});

  GlobalKey<FormState> contactFormKey = GlobalKey<FormState>();

  final nameController = TextEditingController();

  final emailController = TextEditingController();

  final projectTypeController = TextEditingController();

  final projectBudgetController = TextEditingController();

  final descriptionController = TextEditingController();

  // @override
  @override
  Widget build(BuildContext context) {
    return Form(
      key: contactFormKey,
      child: Wrap(
        spacing: AppStyle.dDefaultPadding * 2.5,
        runSpacing: AppStyle.dDefaultPadding * 1.5,
        children: [
          CommonTextFormField(
            labelText: AppStrings.yourNameTxt,
            hintText: AppStrings.enterNameTxt,
            width: 470,
            validator: (String? value) => Validations.emptyValidation(value),
            controller: nameController,
          ),
          CommonTextFormField(
            labelText: AppStrings.emailAddressTxt,
            hintText: AppStrings.enterEmailTxt,
            width: 470,
            validator: (String? value) => Validations.emailValidation(value),
            controller: emailController,
          ),
          CommonTextFormField(
            labelText: AppStrings.projectTypeTxt,
            hintText: AppStrings.selectProjectTxt,
            width: 470,
            validator: (String? value) => Validations.emptyValidation(value),
            controller: projectTypeController,
          ),
          CommonTextFormField(
            labelText: AppStrings.projectBudgetTxt,
            hintText: AppStrings.selectBudgetTxt,
            width: size.width * 0.9,
            validator: (String? value) => Validations.emptyValidation(value),
            controller: projectBudgetController,
          ),
          CommonTextFormField(
            maxLines: 5,
            minLines: 2,
            labelText: AppStrings.descriptionTxt,
            hintText: AppStrings.writeSomethingTxt,
            width: size.width * 0.9,
            validator: (String? value) => Validations.emptyValidation(value),
            controller: descriptionController,
          ),
          const SizedBox(height: AppStyle.dDefaultPadding * 2),
          Obx(
            () => Center(
              child: FittedBox(
                child: isContact.value
                    ? const CircularProgressIndicator(
                        color: AppColor.bgBlackClr,
                      )
                    : DefaultButton(
                        color: AppColor.linkedInColor,
                        imageSrc: AppImages.contactIconImage,
                        text: "Contact Me!",
                        press: () {
                          if (contactFormKey.currentState!.validate()) {
                            var response = sendEmail(
                                    name: nameController.text.trim(),
                                    email: emailController.text.trim(),
                                    projectType:
                                        projectTypeController.text.trim(),
                                    projectBudget:
                                        projectBudgetController.text.trim(),
                                    description:
                                        descriptionController.text.trim())
                                .then((value) {
                              Get.rawSnackbar(
                                  message: 'Thank you for Connecting...!!');
                              contactFormKey.currentState!.reset();
                              nameController.clear();
                              emailController.clear();
                              projectTypeController.clear();
                              projectBudgetController.clear();
                              descriptionController.clear();
                            });
                          }
                        },
                        size: size,
                      ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

/*Get.rawSnackbar(
                      snackPosition: SnackPosition.BOTTOM,
                      snackStyle: SnackStyle.FLOATING,
                      padding:const EdgeInsets.all(6),
                      duration: const Duration(seconds: 1),
                      messageText: const Text(AppStrings.thankYouMsgTxt),
                    );*/
