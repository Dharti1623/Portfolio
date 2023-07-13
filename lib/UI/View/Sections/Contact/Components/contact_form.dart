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

class ContactForm extends StatefulWidget {
  Size size;

  ContactForm({super.key, required this.size});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  GlobalKey<FormState> contactFormKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final projectTypeController = TextEditingController();
  final projectBudgetController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  void initState() {
    nameController.text = "";
    emailController.text = "";
    projectTypeController.text = "";
    projectBudgetController.text = "";
    descriptionController.text = "";
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    projectTypeController.dispose();
    projectBudgetController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

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
            width: widget.size.width * 0.9,
            validator: (String? value) => Validations.emptyValidation(value),
            controller: projectBudgetController,
          ),
          CommonTextFormField(
            maxLines: 5,
            minLines: 2,
            labelText: AppStrings.descriptionTxt,
            hintText: AppStrings.writeSomethingTxt,
            width: widget.size.width * 0.9,
            validator: (String? value) => Validations.emptyValidation(value),
            controller: descriptionController,
          ),
          const SizedBox(height: AppStyle.dDefaultPadding * 2),
          Center(
            child: FittedBox(
              child: DefaultButton(
                color: AppColor.linkedInColor,
                imageSrc: AppImages.contactIconImage,
                text: "Contact Me!",
                press: () async {
                  if (contactFormKey.currentState!.validate()) {
                    String subject = projectTypeController.text;
                    String stringText =
                        "Name : ${nameController.text} \n Email: ${emailController.text} \n Project Type:${projectTypeController.text} \n Project Budget : ${projectBudgetController.text} \n Description : ${descriptionController.text}";
                    var url = Uri.parse(
                        'mailto:dharti1639@gmail.com?subject=${Uri.encodeComponent(subject)}&body=${Uri.encodeComponent(stringText)}');
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  }
                },
                size: widget.size,
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
