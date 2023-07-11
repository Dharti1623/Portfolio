import 'package:portfolio/Utils/Constants/string_constants.dart';

class Validations {
  static emptyValidation(String? value) {
    if (value == null || value.isEmpty || value.trim() == "") {
      return AppStrings.emptyFieldTxt;
    }
    return null;
  }

  static emailValidation(String? value) {
    RegExp regex = RegExp(
        r'^[_A-Za-z0-9-+]+(\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\.[A-Za-z0-9]+)*(\.[A-Za-z]{2,})\$*(\s?)');
    var emailNonNullValue = value ?? "";
    if (emailNonNullValue.isEmpty || emailNonNullValue.trim() == "") {
      return (AppStrings.emptyFieldTxt);
    } else if (!regex.hasMatch(emailNonNullValue)) {
      return (AppStrings.emailNotCorrectTxt);
    }
    return null;
  }

  static contactNumberValidation(String? value) {
    RegExp regex = RegExp( r'(^(?:[+0]9)?[0-9]{10,12}$)');
    var contactVal = value ?? "";
    if (contactVal.isEmpty || contactVal.trim() == "") {
      return (AppStrings.emptyFieldTxt );
    } else if (contactVal.length < 8) {
      return (AppStrings.contactChkTxt);
    }
    else if (!regex.hasMatch(value!)) {
      return AppStrings.validContactChkTxt;
    }
    return null;
  }
}