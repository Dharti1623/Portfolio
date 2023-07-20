import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

RxBool isContact = false.obs;

getStatusBarHeight(context) {
  return MediaQuery.of(context).viewPadding.top;
}

launchLinkedin() async {
  final Uri url =Uri.parse('https://www.linkedin.com/in/dhartichauhan');
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

launchFacebook() async {
  final Uri url =Uri.parse('https://www.facebook.com/barby.dall.56');
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}
launchGit() async {
  final Uri url =Uri.parse('https://github.com/dharti1623');
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}


hireMe() async {
  final Uri url =Uri.parse('https://www.linkedin.com/in/dhartichauhan');
  if (await canLaunchUrl(url)) {
  await launchUrl(url);
  } else {
  throw 'Could not launch $url';
  }
}


downLoadCv() async {
  final Uri url =Uri.parse('https://drive.google.com/file/d/1w4qoE5ujA5U7sO-C65cP2TllSEBMbSsc/view?usp=sharing');
  if (await canLaunchUrl(url)) {
  await launchUrl(url);
  } else {
  throw 'Could not launch $url';
  }
}

Future sendEmail(
    {required String name,
    required String email,
    required String projectType,
    required String projectBudget,
    required String description}) async {

  print("object1");
  isContact.value = true;
  final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
  const serviceId = 'service_ott700l';
  const templateId = 'template_o72e41k';
  const userId = 'V67MfoSnmzayLwyzb';
  final response = await http.post(url,
      headers: {'Content-Type': 'application/json'},//This line makes sure it works for all platforms.
      body: json.encode({
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': userId,
        'template_params': {
          'name' : name,
          'email': email,
          'projectType': projectType,
          'projectBudget' : projectBudget,
          'description' : description,
        }
      }));
  isContact.value = response.statusCode == 200 ? false : true ;
  print("response-->${response.statusCode}");
  return response.statusCode;
}

/*sendMail(String subject,String data) async {
  // var url = Uri.parse('mailto:dharti1639@gmail.com?subject=${Uri.encodeComponent(subject)}&body=${Uri.encodeComponent(data)}');
  // mailto:smith@example.org?subject=News&body=New%20plugin
  final Uri url = Uri(
    scheme: 'mailto',
    path: 'dharti1639@gmail.com',
    query: 'subject=${Uri.encodeComponent(subject)}&body=${Uri.encodeComponent(data)}',
  );

  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}*/


isWidthGrater(Size size){
  return size.height < size.width;
}


