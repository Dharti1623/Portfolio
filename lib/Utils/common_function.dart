import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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



sendMail(String subject,String data) async {
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
}


isWidthGrater(Size size){
  return size.height < size.width;
}


