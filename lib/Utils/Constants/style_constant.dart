import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_constants.dart';

class AppTxtStyle {
  static TextStyle topSectionNameStyle(BuildContext context) {
    return GoogleFonts.nunitoSans(
      fontWeight: FontWeight.bold,
      color: AppColor.bgWhiteClr,
      fontSize: 100,
      height: 1.5,
    );
  }

  static TextStyle aboutSectionExCardStyle(BuildContext context) {
    return GoogleFonts.nunitoSans(
        fontWeight: FontWeight.w200, color: AppColor.dTextColor, height: 2);
  }

  static TextStyle underlineStyle(BuildContext context) {
    return GoogleFonts.nunitoSans(decoration: TextDecoration.underline);
  }

  static TextStyle startingNewProjectTxtStyle(BuildContext context) {
    return GoogleFonts.nunitoSans(fontSize: 42, fontWeight: FontWeight.bold);
  }

  static TextStyle estimateNewProjectTxtStyle(BuildContext context) {
    return GoogleFonts.nunitoSans(fontWeight: FontWeight.w200);
  }

  static TextStyle boldButtonTxtStyle(BuildContext context) {
    return GoogleFonts.nunitoSans(fontWeight: FontWeight.w600, fontSize: 18);
  }

  static TextStyle boldButtonColorTxtStyle(BuildContext context) {
    return GoogleFonts.nunitoSans(
        fontWeight: FontWeight.w600, fontSize: 18, color: AppColor.bgBlackClr);
  }

  static TextStyle boldButtonColorTxtStyle2(BuildContext context) {
    return GoogleFonts.nunitoSans(
        textStyle: Theme.of(context)
            .textTheme
            .headlineSmall!
            .copyWith(fontWeight: FontWeight.w600, color: AppColor.bgBlackClr));
  }

  TextStyle customStyle({fontSize, fontWeight, required Color color}) {
    return GoogleFonts.nunitoSans(
        fontSize: fontSize, fontWeight: fontWeight, color: color);
  }

  static TextStyle descriptionStyle(BuildContext context) {
    return GoogleFonts.nunitoSans(
        fontWeight: FontWeight.w500,
        color: AppColor.dTextLightColor,
        height: 2);
  }

  static TextStyle titleStyle(BuildContext context) {
    return GoogleFonts.nunitoSans(
        fontWeight: FontWeight.w800,
        color: AppColor.dTextLightColor,
        height: 2,
        fontSize: 20);
  }

  static TextStyle appbarStyle(BuildContext context) {
    return GoogleFonts.nunitoSans(
        textStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
            fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black));
  }
}

class AppBoxStyle {
  static final dDefaultShadow = BoxShadow(
    offset: const Offset(0, 50),
    blurRadius: 50,
    color: const Color(0xFF0700B1).withOpacity(0.15),
  );

  static final dDefaultCardShadow = BoxShadow(
    offset: const Offset(0, 20),
    blurRadius: 50,
    color: Colors.black.withOpacity(0.1),
  );
}

class AppStyle {
  static const dDefaultPadding = 20.0;

// TextField design
  static const dDefaultInputDecorationTheme = InputDecorationTheme(
    border: dDefaultOutlineInputBorder,
    enabledBorder: dDefaultOutlineInputBorder,
    focusedBorder: dDefaultOutlineInputBorder,
  );

  static const dDefaultOutlineInputBorder = OutlineInputBorder(
    // Maybe flutter team need to fix it on web
    // borderRadius: BorderRadius.circular(50),
    borderSide: BorderSide(
      color: Color(0xFFCEE4FD),
    ),
  );
}
